<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="angus" uri="angusTag" %> <!-- prefix 的名稱可以隨便取名，跟 hellotag.tld 中的定義沒有關係 -->
<html>
<head>
<title>Jsp Project</title>
</head>
<body>

	<%
		String scope = "session";
		session.setAttribute("username", "angus");
	%>

	<angus:present name="username" scope="<%=scope%>">
		<h2><%=scope%> 範圍存在屬性，內容是: "${sessionScope.username}"</h2>
	</angus:present>
	
	<angus:present name="allusers" scope="request">
		<h2>request 範圍存在屬性，內容是: "${requestScope.allusers}"</h2>
	</angus:present>
	
	
	標籤開發及使用流程:<br /><br />
	
	1. 實作標籤處理類別 HelloTag.java<br /><br />
	
	2. 實作標籤描述檔案 hellotag.tld<br /><br />
	
	3. 實作 JSP 頁面: 透過  &lt;%@ taglib %&gt; 引用標籤類別<br /><br />
	
	4. (可選) 在 web.xml 中設定映射名稱<br /><br />
	
</body>
</html>