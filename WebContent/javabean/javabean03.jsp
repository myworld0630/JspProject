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

javabean03.jsp �n�M javabean04.jsp �d�Ҥ@�_�ݡAjavabean03.jsp �|�N�Ѽƶǻ��� javabean04.jsp

<!-- �ǰe�� javabean04.jsp �����A�ǰe���ѼƷ|��b request ���ǻ��Arequest �b�@�����A�����D�d�򤺦���-->
<form action="javabean04.jsp" method="POST">
	�m�W: <input type="text" name="name"> <br />
	�~��: <input type="text" name="age"> <br />
	<input type="submit" value="�ǰe"> <br />
	<input type="reset" value="���m"> <br />
</form>

</body>
</html>