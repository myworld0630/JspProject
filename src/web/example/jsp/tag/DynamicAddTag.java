package web.example.jsp.tag;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.DynamicAttributes;
import javax.servlet.jsp.tagext.SimpleTagSupport;

//完成動態的加法操作
public class DynamicAddTag extends SimpleTagSupport implements DynamicAttributes{

	
	private Map<String,Float> num = new HashMap<String,Float>();

	public void doTag() throws JspException {
		Float sum = 0.0f;
		Iterator<Map.Entry<String,Float>> iter = this.num.entrySet().iterator();
		while(iter.hasNext()){
			Map.Entry<String, Float> value = iter.next();
			sum += value.getValue();
		}
		
		try {
			super.getJspContext().getOut().write(String.valueOf(sum) + " ");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void setDynamicAttribute(String uri, String localName, Object value) throws JspException {
		num.put(localName, Float.parseFloat(value.toString()));
	}

}
