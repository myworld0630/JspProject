<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>
<body>

pageScopte_01 範例說明 pageScope 只能在同一個 page 中使用 <br />

<%	//設定 page 屬性範圍，此屬性只在目前的 JSP 頁面中起作用
	pageContext.setAttribute("name","angus");
	pageContext.setAttribute("birthday",new Date()); //要用 new Date() 需要先  page import="java.util.*
%>

<%	//從 page 屬性範圍中取得屬性，並執行向下轉型操作
	String username = (String)pageContext.getAttribute("name");
	Date birthday = (Date)pageContext.getAttribute("birthday"); //要用 new Date() 需要先  page import="java.util.*
%>


<h2> 姓名: <%= username %> </h2>
<h2> 生日: <%= birthday %> </h2>

</body>
</html>