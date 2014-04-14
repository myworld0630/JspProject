package web.example.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class InitParamServlet extends HttpServlet {

	public String initParam = null;
	
	public void init(ServletConfig config) throws ServletException{
		this.initParam = config.getInitParameter("ref");
	}
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException{
		System.out.println("初始化參數:" + this.initParam);
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException{
		this.doGet(req, resp);
	}
	
}
