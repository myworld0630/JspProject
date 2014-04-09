<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>
<body>

本程式直接取得 application 範圍的屬性，因為 application 是將屬性設定到到一個伺服器中，所以不管開多少個瀏覽器都存取的到<br /><br />

但是若設定過多的 application 屬性將會影響到伺服器的效能，另外，若伺服器重啟，則之前所設定的全部屬性將消失<br /><br />

<%	//從 page 屬性範圍中取得屬性，並執行向下轉型操作
	String username = (String)application.getAttribute("name");
	Date birthday = (Date)application.getAttribute("birthday"); //要用 new Date() 需要先  page import="java.util.*
%>

<h2> 姓名: <%= username %> </h2>
<h2> 生日: <%= birthday %> </h2>

<br />

</body>
</html>