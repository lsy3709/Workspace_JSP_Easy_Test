<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Session</title>
</head>
<body>
	<%
		session.invalidate();
		response.sendRedirect("session.jsp");
	%>

</body>
</html>