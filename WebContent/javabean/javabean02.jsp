<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="web.example.javabean.*" %> <!-- �פJ JavaBean ������w�q -->

<jsp:useBean id="simple" scope="page" class="web.example.javabean.SimpleBean" />
 <!-- id �۷���ܼƦW�� [SimpleBean simple = new SimpleBean()]�Ascope ���w�ͩR�g�����d��Aclass �w�q��m -->
 
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>
<body>


<%	
	//�]���ϥΤF jsp:useBean ���ҩw�q�A�ҥH�N���ݭn�A�g��l�Ʃw�q
	//SimpleBean simple = new SimpleBean();
	simple.setName("angus");
	simple.setAge(30); //�n�� new Date() �ݭn��  page import="java.util.*
%>

<h3> �m�W: <%= simple.getName() %> </h3>
<h3> �ͤ�: <%= simple.getAge() %> </h3>

</body>
</html>