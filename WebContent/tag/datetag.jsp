<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="angus" uri="angusTag" %> <!-- prefix 的名稱可以隨便取名，跟 hellotag.tld 中的定義沒有關係 -->
<html>
<head>
<title>Jsp Project</title>
</head>
<body>
	<h1>
		<angus:date format="yyyy-MM-dd HH:mm:ss.SSS" /> <!-- 依據 hellotag.tld 定義，必須要設定 format 屬性 -->
	</h1>
	
	標籤開發及使用流程:<br /><br />
	
	1. 實作標籤處理類別 HelloTag.java<br /><br />
	
	2. 實作標籤描述檔案 hellotag.tld<br /><br />
	
	3. 實作 JSP 頁面: 透過  &lt;%@ taglib %&gt; 引用標籤類別<br /><br />
	
	4. (可選) 在 web.xml 中設定映射名稱<br /><br />
	
</body>
</html>