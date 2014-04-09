<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>
<body>

pageScopte_02 範例要和 pageScope03 範例一起看 <br /><br />

pageScope_02 設定完 pageScope 的屬性後，透過 jsp:forward page="pageScope_03.jsp" 跳到 pageScope_03，<br />
可以發現 pageScope_03 無法取出 pageScope_02 的屬性，因為 pageScope 的生命週期只限定在一個 jsp page 當中

<%	//設定 page 屬性範圍，此屬性只在目前的 JSP 頁面中起作用
	pageContext.setAttribute("name","angus");
	pageContext.setAttribute("birthday",new Date()); //要用 new Date() 需要先  page import="java.util.*
%>

<jsp:forward page="pageScope_03.jsp" />

</body>
</html>