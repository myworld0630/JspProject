package web.example.jsp.tag;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.TagSupport;

//定義有標籤體的標籤庫
public class AttributeTag extends TagSupport{

	private String name;
	private String scope;
	
	public int doStartTag() throws JspException{
		
		Object value = null;
		
		if("page".equals(this.scope)){													//page Scope
			value = super.pageContext.getAttribute(name , PageContext.PAGE_SCOPE);
		}
		else if("request".equals(this.scope)){											//request Scope
			value = super.pageContext.getAttribute(name , PageContext.REQUEST_SCOPE);
		}
		else if("session".equals(this.scope)){											//session Scope
			value = super.pageContext.getAttribute(name , PageContext.SESSION_SCOPE);
		}
		else{																			//application Scope
			value = super.pageContext.getAttribute(name , PageContext.APPLICATION_SCOPE);
		}
		
		if(value == null){							//沒有找到屬性
			return TagSupport.SKIP_BODY;			//不執行標籤體的內容
		}
		else{										//找到屬性
			return TagSupport.EVAL_BODY_INCLUDE;	//執行標籤體的內容
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
}
