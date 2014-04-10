<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="web.example.javabean.*" %> <!-- 匯入 JavaBean 的物件定義 -->

<jsp:useBean id="simple" scope="page" class="web.example.javabean.SimpleBean" />
 <!-- id 相當於變數名稱 [SimpleBean simple = new SimpleBean()]，scope 指定生命週期的範圍，class 定義位置 -->
 
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>
<body>


<%	
	//因為使用了 jsp:useBean 標籤定義，所以就不需要再寫初始化定義
	//SimpleBean simple = new SimpleBean();
	simple.setName("angus");
	simple.setAge(30); //要用 new Date() 需要先  page import="java.util.*
%>

<h3> 姓名: <%= simple.getName() %> </h3>
<h3> 生日: <%= simple.getAge() %> </h3>

</body>
</html>