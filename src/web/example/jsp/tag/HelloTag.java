package web.example.jsp.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

//�w�q�@�ӳ�²�檺���� -- �ż���
public class HelloTag extends TagSupport{

	public int doStartTag() throws JspException{
		
		System.out.println("[HelloTag] Ĳ�o doStartTag() ");
		
		JspWriter out = super.pageContext.getOut(); //���X������X�y����
		try{
			out.println("<h1>Hello Tag</h1>");	//�i�歶����X
		}
		catch(Exception e){							//���B�ݭn�B�z���ͪ��ҥ~
			e.printStackTrace();
		}
		return TagSupport.SKIP_BODY;				//��ܨS��������
	}
	
}
