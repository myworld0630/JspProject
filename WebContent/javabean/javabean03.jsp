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

javabean03.jsp 要和 javabean04.jsp 範例一起看，javabean03.jsp 會將參數傳遞到 javabean04.jsp

<!-- 傳送到 javabean04.jsp 頁面，傳送的參數會放在 request 當中傳遞，request 在一次伺服器跳躍範圍內有效-->
<form action="javabean04.jsp" method="POST">
	姓名: <input type="text" name="name"> <br />
	年齡: <input type="text" name="age"> <br />
	<input type="submit" value="傳送"> <br />
	<input type="reset" value="重置"> <br />
</form>

</body>
</html>