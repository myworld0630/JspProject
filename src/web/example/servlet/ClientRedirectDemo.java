package web.example.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class ClientRedirectDemo extends HttpServlet {

	
	//�Τ�ݸ��D: HttpServletResponse.sendRedirect() ��k�A����k�u��ǻ� Application �� Session �ݩʽd�򪺤��e
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException{
		HttpSession session = req.getSession();
		session.setAttribute("session", "angus session"); 	//�]�w session �ݩ�
		req.setAttribute("request", "angus request");	    //�]�w request �ݩ�
		resp.sendRedirect(req.getContextPath()+ "/servlet/getInfo.jsp"); // req.getContextPath() ���o URI ���|
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException{
		this.doGet(req, resp);
	}
	
}