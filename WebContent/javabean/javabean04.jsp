<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@ page import="web.example.javabean.*" %> <!-- 匯入 JavaBean 的物件定義 -->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>

<jsp:useBean id="simple" scope="page" class="web.example.javabean.SimpleBean" />
<!-- id 相當於變數名稱 [SimpleBean simple = new SimpleBean()]，scope 指定生命週期的範圍，class 定義位置 -->
 
<jsp:setProperty name="simple" property="*" />
<!-- setProperty 的 name 對應到 useBean 的 id 名稱，property * 表示自動比對參數，當參數相同則自動調用 setter 進行內容設定，且會自動轉型 -->
<!-- setProperty 可以自動將 String 轉變為 int 資料，所以 String 必須全由數字組成，否則會出現 NumberFormatException -->

<body>

<h3> 姓名: <%= simple.getName() %> </h3>
<h3> 生日: <%= simple.getAge() %> </h3>

透過 jsp:getproperty 取得屬性，從 jsp:useBean 初始化的物件中取得屬性，所以在 jsp:getproperty 之前一定要先 jsp:useBean

<h3> 姓名: <jsp:getProperty name="simple" property="name" /> </h3>
<h3> 生日: <jsp:getProperty name="simple" property="age" /> </h3>

</body>
</html>