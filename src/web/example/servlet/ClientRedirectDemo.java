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

	
	//用戶端跳躍: HttpServletResponse.sendRedirect() 方法，此方法只能傳遞 Application 及 Session 屬性範圍的內容
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException{
		HttpSession session = req.getSession();
		session.setAttribute("session", "angus session"); 	//設定 session 屬性
		req.setAttribute("request", "angus request");	    //設定 request 屬性
		resp.sendRedirect(req.getContextPath()+ "/servlet/getInfo.jsp"); // req.getContextPath() 取得 URI 路徑
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException,IOException{
		this.doGet(req, resp);
	}
	
}