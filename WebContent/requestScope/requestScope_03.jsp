<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>
<body>

透過 a href="requestScope_03.jsp" 跳到 requestScope_03 則無法取得屬性，因為超連結屬於用戶端跳躍，可以發現 用戶端跳躍 網址列變成顯示 requestScope_03.jsp<br /><br />

<%	//從 page 屬性範圍中取得屬性，並執行向下轉型操作
	String username = (String)request.getAttribute("name");
	Date birthday = (Date)request.getAttribute("birthday"); //要用 new Date() 需要先  page import="java.util.*
%>

<h2> 姓名: <%= username %> </h2>
<h2> 生日: <%= birthday %> </h2>




</body>
</html>