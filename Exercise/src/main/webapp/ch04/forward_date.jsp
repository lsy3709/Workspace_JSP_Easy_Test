<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<%
		int num = Integer.parseInt(request.getParameter("num"));
		
		for (int i = 1; i <= 9; i++) 			
				out.println(num +" * "+ i + " = " + num*i + "<br>");		
			
	%>
	<p>
	<%
		int num2 = Integer.parseInt(request.getParameter("num2"));
	   int j = 1;
		while(j<=9) {
			out.println(num2 +" * "+ j + " = " + num2*j + "<br>");
			j += 1;
		}
	%>
</body>
</html>