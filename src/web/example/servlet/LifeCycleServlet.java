package web.example.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class LifeCycleServlet extends HttpServlet {

	public void init() throws ServletException{
		System.out.println("[LifeCycleServlet] 1. Servlet ��l�ơ@--> init()");
	}
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException{
		System.out.println("[LifeCycleServlet] 2. Servlet �A�ȡ@�@--> doGet() or doPost()");
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException{
		this.doGet(req, resp);
	}
	
	public void destroy(){
		System.out.println("[LifeCycleServlet] 3. Servlet �P���@�@--> destroy()");
	}
}
