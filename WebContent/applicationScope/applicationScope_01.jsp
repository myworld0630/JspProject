<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>
<body>

applicationScopte_01 �d�ҭn�M applicationScopte_02 �d�Ҥ@�_�� <br /><br />


<%	//�]�w session �ݩʽd��A���ݩʥu�b���A�����D���_�@��
	application.setAttribute("name","angus");
	application.setAttribute("birthday",new Date()); //�n�� new Date() �ݭn��  page import="java.util.*
%>

<!-- �z�L�W�s�����D�A���}�C���ܡA�ݩ�Τ�ݸ��D-->
<a href="applicationScope_02.jsp">�z�L�W�s�����o�ݩ�</a>

</body>
</html>