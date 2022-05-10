<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Session</title>
</head>
<body>
	<%  
    if (session.getAttribute("userID") == null) {
        response.sendRedirect("session_out.jsp");
    }
	%>
	<h4><%= session.getAttribute("userID") %>님 반갑습니다.</h4>
	<a href="session_out.jsp">로그아웃</a>


</body>
</html>