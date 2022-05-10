<%@page import="java.net.URLDecoder"%>
<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>	
	<%		
	
	String de = URLDecoder.decode(request.getQueryString(),"UTF-8");
		String value = request.getQueryString();
		/* out.println("전송된 요청 파라미터 : " + value); */
		out.println("<br>");
		out.println("전송된 요청 파라미터 : " + de);
		
	%>
	

</body>
</html>