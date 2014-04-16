package web.example.jsp.tag;

import java.util.Iterator;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.BodyTagSupport;

//開發反覆運算標籤
public class BodyIteratorTag extends BodyTagSupport {

	private String name;
	private String scope;
	private String id;
	private Iterator<?> iter;

	public int doStartTag() throws JspException {

		Object value = null;

		if ("page".equals(this.scope)) { // page Scope
			value = super.pageContext.getAttribute(name, PageContext.PAGE_SCOPE);
		} 
		else if ("request".equals(this.scope)) { // request Scope
			value = super.pageContext.getAttribute(name,PageContext.REQUEST_SCOPE);
		} 
		else if ("session".equals(this.scope)) { // session Scope
			value = super.pageContext.getAttribute(name,PageContext.SESSION_SCOPE);
		} 
		else { // application Scope
			value = super.pageContext.getAttribute(name,PageContext.APPLICATION_SCOPE);
		}

		if(value != null && value instanceof List<?>){
			this.iter=((List<?>) value).listIterator();
			if(iter.hasNext()){
				super.pageContext.setAttribute(id,iter.next());
				return BodyTagSupport.EVAL_BODY_BUFFERED;
			}
			else{
				return BodyTagSupport.SKIP_BODY;
			}
		}
		else{
			return BodyTagSupport.SKIP_BODY; // 表示沒有標籤體
		}
	}

	
	public int doAfterBody()throws JspException {
		
		if(iter.hasNext()){
			super.pageContext.setAttribute(id,iter.next());
			return BodyTagSupport.EVAL_BODY_AGAIN;
		}
		else{
			return BodyTagSupport.SKIP_BODY;
		}
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getScope() {
		return scope;
	}

	public void setScope(String scope) {
		this.scope = scope;
	}

	public String Id() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

}
