<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>
<body>

���׬O�z�L jsp:foward �άO�W�s���A���i�H���o session ���ݩ�<br /><br />

���O�p�G���ɶ}�Ҥ@�ӷs���s���������s��  sessionScope_02.jsp�A�h�L�k���o session ���ݩ�<br /><br />

<%	//�q page �ݩʽd�򤤨��o�ݩʡA�ð���V�U�૬�ާ@
	String username = (String)session.getAttribute("name");
	Date birthday = (Date)session.getAttribute("birthday"); //�n�� new Date() �ݭn��  page import="java.util.*
%>

<h2> �m�W: <%= username %> </h2>
<h2> �ͤ�: <%= birthday %> </h2>

<br />

</body>
</html>