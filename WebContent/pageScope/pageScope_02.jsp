<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>
<body>

pageScopte_02 �d�ҭn�M pageScope03 �d�Ҥ@�_�� <br /><br />

pageScope_02 �]�w�� pageScope ���ݩʫ�A�z�L jsp:forward page="pageScope_03.jsp" ���� pageScope_03�A<br />
�i�H�o�{ pageScope_03 �L�k���X pageScope_02 ���ݩʡA�]�� pageScope ���ͩR�g���u���w�b�@�� jsp page ��

<%	//�]�w page �ݩʽd��A���ݩʥu�b�ثe�� JSP �������_�@��
	pageContext.setAttribute("name","angus");
	pageContext.setAttribute("birthday",new Date()); //�n�� new Date() �ݭn��  page import="java.util.*
%>

<jsp:forward page="pageScope_03.jsp" />

</body>
</html>