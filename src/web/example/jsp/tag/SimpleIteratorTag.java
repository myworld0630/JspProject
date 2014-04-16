package web.example.jsp.tag;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;

//開發反覆運算標籤
public class SimpleIteratorTag extends SimpleTagSupport {

	private String name;
	private String scope;
	private String id;
	private Iterator<?> iter;

	public void doTag() throws JspException {

		Object value = null;

		if ("page".equals(this.scope)) { // page Scope
			value = super.getJspContext().getAttribute(name, PageContext.PAGE_SCOPE);
		} 
		else if ("request".equals(this.scope)) { // request Scope
			value = super.getJspContext().getAttribute(name,PageContext.REQUEST_SCOPE);
		} 
		else if ("session".equals(this.scope)) { // session Scope
			value = super.getJspContext().getAttribute(name,PageContext.SESSION_SCOPE);
		} 
		else { // application Scope
			value = super.getJspContext().getAttribute(name,PageContext.APPLICATION_SCOPE);
		}

		if(value != null && value instanceof List<?>){
			Iterator<?> iter=((List<?>) value).listIterator();
			while(iter.hasNext()){
				super.getJspContext().setAttribute(id,iter.next());
				try {
					super.getJspBody().invoke(null);	//顯示內容
				} catch (IOException e) {
					e.printStackTrace();
				}	
			}
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
