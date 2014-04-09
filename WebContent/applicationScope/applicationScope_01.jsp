<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>
<body>

applicationScopte_01 範例要和 applicationScopte_02 範例一起看 <br /><br />


<%	//設定 session 屬性範圍，此屬性只在伺服器跳躍中起作用
	application.setAttribute("name","angus");
	application.setAttribute("birthday",new Date()); //要用 new Date() 需要先  page import="java.util.*
%>

<!-- 透過超連結跳躍，網址列改變，屬於用戶端跳躍-->
<a href="applicationScope_02.jsp">透過超連結取得屬性</a>

</body>
</html>