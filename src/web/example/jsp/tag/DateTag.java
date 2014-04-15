package web.example.jsp.tag;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

//�w�q���ݩʪ�����
public class DateTag extends TagSupport{

	//���d�ҩw�q�F�@�� format �ݩʡA�ü��g getter �� setter ��k�A��ϥΪ̳z�L���ҳ]�w�ݩʮɡA�N�|�I�s setter ��k�����ݩʭȪ��]�w
	private String format;
	
	public int doStartTag() throws JspException{
		
		SimpleDateFormat sdf = new SimpleDateFormat(this.format);
		try{
			super.pageContext.getOut().write(sdf.format(new Date()));
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return TagSupport.SKIP_BODY;				//��ܨS��������
	}

	public String getFormat() {
		return format;
	}

	public void setFormat(String format) {
		this.format = format;
	}
	
}
