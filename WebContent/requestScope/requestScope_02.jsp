<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>
<body>

requestScopte_01 �]�w�� requestScope ���ݩʫ�A�z�L jsp:forward page="requestScope_02.jsp" ���� requestScope_02�A<br /><br />

�i�H�o�{ requestScope_02 �i�H���X requestScope_01 ���ݩʡA�]�� jsp:forward �������ݩ���A�����D �Arequest �b�@�����A�����D�d�򤺦���<br /><br />

�i�H�o�{���A�����D  ���}�C���M��� requestScope_01.jsp�A����ڤW��ܪ��O requestScope_02.jsp �����e <br /><br />


<%	//�q page �ݩʽd�򤤨��o�ݩʡA�ð���V�U�૬�ާ@
	String username = (String)request.getAttribute("name");
	Date birthday = (Date)request.getAttribute("birthday"); //�n�� new Date() �ݭn��  page import="java.util.*
%>

<h2> �m�W: <%= username %> </h2>
<h2> �ͤ�: <%= birthday %> </h2>



</body>
</html>