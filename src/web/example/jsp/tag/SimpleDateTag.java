package web.example.jsp.tag;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

//�w�q���ݩʪ�����
public class SimpleDateTag extends SimpleTagSupport{

	//���d�ҩw�q�F�@�� format �ݩʡA�ü��g getter �� setter ��k�A��ϥΪ̳z�L���ҳ]�w�ݩʮɡA�N�|�I�s setter ��k�����ݩʭȪ��]�w
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
