package web.example.jsp.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

//定義一個最簡單的標籤 -- 空標籤
public class HelloTag extends TagSupport{

	public int doStartTag() throws JspException{
		
		System.out.println("[HelloTag] 觸發 doStartTag() ");
		
		JspWriter out = super.pageContext.getOut(); //取出頁面輸出流物件
		try{
			out.println("<h1>Hello Tag</h1>");	//進行頁面輸出
		}
		catch(Exception e){							//此處需要處理產生的例外
			e.printStackTrace();
		}
		return TagSupport.SKIP_BODY;				//表示沒有標籤體
	}
	
}
