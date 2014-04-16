package web.example.jsp.tag;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

//定義有屬性的標籤
public class SimpleDateTag extends SimpleTagSupport{

	//本範例定義了一個 format 屬性，並撰寫 getter 及 setter 方法，當使用者透過標籤設定屬性時，就會呼叫 setter 方法完成屬性值的設定
	private String format;
	
	public void doTag() throws JspException,IOException{
		
		SimpleDateFormat sdf = new SimpleDateFormat(this.format);
		try{
			super.getJspContext().getOut().write(sdf.format(new Date()));
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

	public String getFormat() {
		return format;
	}

	public void setFormat(String format) {
		this.format = format;
	}
	
}
