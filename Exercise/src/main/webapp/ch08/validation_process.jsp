<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Validation</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>

	<p>	아이디 : <%=request.getParameter("id")%>
	<p>	비밀번호 :	<%=request.getParameter("passwd")%>
	
</body>
</html>