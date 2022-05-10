<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
	<%@ page import="java.util.Date, java.lang.Math" %>
	현재 날짜 :  <%=new Date()%><br>
	5의 제곱 : <%= Math.pow(5,2) %>
</body>
</html>