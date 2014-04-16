<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="angus" uri="angusTag" %> <!-- prefix 的名稱可以隨便取名，跟 hellotag.tld 中的定義沒有關係 -->
<html>
<head>
<title>Jsp Project</title>
</head>
<body>

	<%
		List<String> all = new ArrayList<String>();
		all.add("hello angus");
		all.add("hello alex");
		all.add("hello angela");
		request.setAttribute("all", all);
	%>

	<angus:present name="all" scope="request">
		<angus:bodyiterator id="url" name="all" scope="request">
			<h3>姓名: <%=url%></h3>
		</angus:bodyiterator>
	</angus:present>

	
	標籤開發及使用流程:<br /><br />
	
	1. 實作標籤處理類別 HelloTag.java<br /><br />
		
	2. 實作標籤描述檔案 hellotag.tld<br /><br />
	
	3. 實作 JSP 頁面: 透過  &lt;%@ taglib %&gt; 引用標籤類別<br /><br />
	
	4. (可選) 在 web.xml 中設定映射名稱<br /><br />
	
</body>
</html>