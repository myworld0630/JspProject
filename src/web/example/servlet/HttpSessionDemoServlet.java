package web.example.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class HttpSessionDemoServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException{
		HttpSession session = req.getSession();
		System.out.println("Session ID: " + session.getId());
		session.setAttribute("username", "angus");
		System.out.println("username ÄÝ©Ê¤º®e: " + session.getAttribute("username"));
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException{
		this.doGet(req, resp);
	}
	
}
