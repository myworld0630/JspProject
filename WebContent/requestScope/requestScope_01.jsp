<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>
<body>

requestScopte_01 範例要和 requestScope_02 範例及 requestScope_03 範例一起看 ，為了能夠同時 demo，demo requestScope_03 時請將 jsp:forward 這段 code 註解<br /><br />


<%	//設定 request 屬性範圍，此屬性只在伺服器跳躍中起作用
	request.setAttribute("name","angus");
	request.setAttribute("birthday",new Date()); //要用 new Date() 需要先  page import="java.util.*
%>

<!-- 伺服器跳躍  網址列仍然顯示 requestScope_01.jsp" />-->
<%-- 
<jsp:forward page="requestScope_02.jsp" /> 
--%>

<!-- 用戶端跳躍  網址列變成顯示 requestScope_03.jsp"-->
<a href="requestScope_03.jsp"> 透過超連結取得屬性 </a>
</body>
</html>