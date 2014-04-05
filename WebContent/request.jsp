<%@ page contentType="text/html;charset=utf-8"%>
<html>
<head>
<title>Jsp Project</title>
</head>
<body>
	<%
		//Web完整網址
		out.println(request.getRequestURL()+"<br />");
		//Web網址後路徑
		 out.println(request.getRequestURI()+"<br />"); 
		//request字串
		out.println(request.getQueryString()+"<br />");
		out.println(request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"<br />");
		out.println(request.getContextPath()+"<br />");
		out.println(request.getServletPath()+"<br />");
	%>
</body>
</html>