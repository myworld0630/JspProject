<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>
<body>

<%	//�q page �ݩʽd�򤤨��o�ݩʡA�ð���V�U�૬�ާ@
	String username = (String)pageContext.getAttribute("name");
	Date birthday = (Date)pageContext.getAttribute("birthday"); //�n�� new Date() �ݭn��  page import="java.util.*
%>

<h2> �m�W: <%= username %> </h2>
<h2> �ͤ�: <%= birthday %> </h2>

</body>
</html>