<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Security</title>
</head>
<body>
	<%
		if (request.isUserInRole("admin")) {
			response.sendRedirect("success.jsp");
		} else if (request.isUserInRole("role1")) {
			response.sendRedirect("success2.jsp");
		}
	%>
</body>
</html>