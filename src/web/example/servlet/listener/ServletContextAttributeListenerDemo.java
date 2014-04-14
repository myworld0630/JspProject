package web.example.servlet.listener;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class ServletContextAttributeListenerDemo implements ServletContextAttributeListener {

	public void attributeAdded(ServletContextAttributeEvent event){
		System.out.println("�W�[�ݩ� --> �ݩʦW��: " + event.getName() + " �ݩʤ��e: " + event.getValue());
	}
	
	public void attributeRemoved(ServletContextAttributeEvent event){
		System.out.println("�R���ݩ� --> �ݩʦW��: " + event.getName() + " �ݩʤ��e: " + event.getValue());
	}
	
	public void attributeReplaced(ServletContextAttributeEvent event){
		System.out.println("�W�[���� --> �ݩʦW��: " + event.getName() + " �ݩʤ��e: " + event.getValue());
	}
}