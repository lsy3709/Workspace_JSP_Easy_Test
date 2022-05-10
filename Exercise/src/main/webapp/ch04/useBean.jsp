<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<jsp:useBean id="gugudan" class="ch04.com.dao.GuGuDan2" scope="request" />
	<h4>구구단 출력하기</h4>	
	<%
		int num = 5;
	
		for (int i = 1; i <= 9; i++) 
				out.print(num +" * "+ i+ " = " + gugudan.process(num, i) + "<br>");
	%>				
			
</body>
</html>