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
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;


public class HttpSessionListenerDemo implements HttpSessionListener {

	public void sessionCreated(HttpSessionEvent event){
		System.out.println("SESSION «Ø¥ß¡ASESSION ID= " + event.getSession().getId());
	}
	
	public void sessionDestroyed(HttpSessionEvent event){
		System.out.println("SESSION ¾P·´¡ASESSION ID= " + event.getSession().getId());
	}
	
}