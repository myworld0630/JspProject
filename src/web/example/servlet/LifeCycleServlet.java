package web.example.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class LifeCycleServlet extends HttpServlet {

	public void init() throws ServletException{
		System.out.println("[LifeCycleServlet] 1. Servlet 初始化　--> init()");
	}
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException{
		System.out.println("[LifeCycleServlet] 2. Servlet 服務　　--> doGet() or doPost()");
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException{
		this.doGet(req, resp);
	}
	
	public void destroy(){
		System.out.println("[LifeCycleServlet] 3. Servlet 銷毀　　--> destroy()");
	}
}
