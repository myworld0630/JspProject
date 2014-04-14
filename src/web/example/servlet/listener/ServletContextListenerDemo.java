package web.example.servlet.listener;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class ServletContextListenerDemo implements ServletContextListener {

	public void contextInitialized(ServletContextEvent event){
		System.out.println("[ServletContextListenerDemo] �e����l�� --> " + event.getServletContext().getContextPath());
	}
	
	public void contextDestroyed(ServletContextEvent event){
		System.out.println("[ServletContextListenerDemo] �e���P��      --> " + event.getServletContext().getContextPath());
	}	
}