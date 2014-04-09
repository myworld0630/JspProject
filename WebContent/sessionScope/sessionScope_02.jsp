<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>
<body>

不論是透過 jsp:foward 或是超連結，都可以取得 session 的屬性<br /><br />

但是如果此時開啟一個新的瀏覽器直接存取  sessionScope_02.jsp，則無法取得 session 的屬性<br /><br />

<%	//從 page 屬性範圍中取得屬性，並執行向下轉型操作
	String username = (String)session.getAttribute("name");
	Date birthday = (Date)session.getAttribute("birthday"); //要用 new Date() 需要先  page import="java.util.*
%>

<h2> 姓名: <%= username %> </h2>
<h2> 生日: <%= birthday %> </h2>

<br />

</body>
</html>