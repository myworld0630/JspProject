<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="web.example.javabean.*" %> <!-- �פJ JavaBean ������w�q -->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>

<jsp:useBean id="simple" scope="page" class="web.example.javabean.SimpleBean" />
<!-- id �۷���ܼƦW�� [SimpleBean simple = new SimpleBean()]�Ascope ���w�ͩR�g�����d��Aclass �w�q��m -->
 
<jsp:setProperty name="simple" property="*" />
<!-- setProperty �� name ������ useBean �� id �W�١Aproperty * ��ܦ۰ʤ��ѼơA��ѼƬۦP�h�۰ʽե� setter �i�椺�e�]�w�A�B�|�۰��૬ -->
<!-- setProperty �i�H�۰ʱN String ���ܬ� int ��ơA�ҥH String �������ѼƦr�զ��A�_�h�|�X�{ NumberFormatException -->

<body>

<h3> �m�W: <%= simple.getName() %> </h3>
<h3> �ͤ�: <%= simple.getAge() %> </h3>

�z�L jsp:getproperty ���o�ݩʡA�q jsp:useBean ��l�ƪ����󤤨��o�ݩʡA�ҥH�b jsp:getproperty ���e�@�w�n�� jsp:useBean

<h3> �m�W: <jsp:getProperty name="simple" property="name" /> </h3>
<h3> �ͤ�: <jsp:getProperty name="simple" property="age" /> </h3>

</body>
</html>