<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>
<body>

���{���������o application �d���ݩʡA�]�� application �O�N�ݩʳ]�w���@�Ӧ��A�����A�ҥH���޶}�h�֭��s�������s������<br /><br />

���O�Y�]�w�L�h�� application �ݩʱN�|�v�T����A�����į�A�t�~�A�Y���A�����ҡA�h���e�ҳ]�w�������ݩʱN����<br /><br />

<%	//�q page �ݩʽd�򤤨��o�ݩʡA�ð���V�U�૬�ާ@
	String username = (String)application.getAttribute("name");
	Date birthday = (Date)application.getAttribute("birthday"); //�n�� new Date() �ݭn��  page import="java.util.*
%>

<h2> �m�W: <%= username %> </h2>
<h2> �ͤ�: <%= birthday %> </h2>

<br />

</body>
</html>