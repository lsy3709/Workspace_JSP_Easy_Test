<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>MVC</title>
</head>
<body>
	<%
		String str = request.getAttribute("result").toString();
		out.print(str);
	%>
</body>
</html>