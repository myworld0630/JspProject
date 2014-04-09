<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>
<body>

requestScopte_01 設定完 requestScope 的屬性後，透過 jsp:forward page="requestScope_02.jsp" 跳到 requestScope_02，<br /><br />

可以發現 requestScope_02 可以取出 requestScope_01 的屬性，因為 jsp:forward 的標籤屬於伺服器跳躍 ，request 在一次伺服器跳躍範圍內有效<br /><br />

可以發現伺服器跳躍  網址列仍然顯示 requestScope_01.jsp，但實際上顯示的是 requestScope_02.jsp 的內容 <br /><br />


<%	//從 page 屬性範圍中取得屬性，並執行向下轉型操作
	String username = (String)request.getAttribute("name");
	Date birthday = (Date)request.getAttribute("birthday"); //要用 new Date() 需要先  page import="java.util.*
%>

<h2> 姓名: <%= username %> </h2>
<h2> 生日: <%= birthday %> </h2>



</body>
</html>