<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>
<body>

requestScopte_01 �d�ҭn�M requestScope_02 �d�Ҥ� requestScope_03 �d�Ҥ@�_�� �A���F����P�� demo�Ademo requestScope_03 �ɽбN jsp:forward �o�q code ����<br /><br />


<%	//�]�w request �ݩʽd��A���ݩʥu�b���A�����D���_�@��
	request.setAttribute("name","angus");
	request.setAttribute("birthday",new Date()); //�n�� new Date() �ݭn��  page import="java.util.*
%>

<!-- ���A�����D  ���}�C���M��� requestScope_01.jsp" />-->
<%-- 
<jsp:forward page="requestScope_02.jsp" /> 
--%>

<!-- �Τ�ݸ��D  ���}�C�ܦ���� requestScope_03.jsp"-->
<a href="requestScope_03.jsp"> �z�L�W�s�����o�ݩ� </a>
</body>
</html>