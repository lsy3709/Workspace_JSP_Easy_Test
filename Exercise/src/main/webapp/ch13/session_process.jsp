<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Session</title>
</head>
<body>
	<%
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("passwd");

		if (user_id.equals("admin") && user_pw.equals("admin1234")) {
			session.setAttribute("userID", user_id);			
			response.sendRedirect("welcome.jsp");
		} else {
			out.println("아이디와 비밀번호를 확인해 주세요");
		}
	%>
	
</body>
</html>