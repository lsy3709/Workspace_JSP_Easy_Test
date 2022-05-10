<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Filter</title>
</head>
<body>
	<% 

    String id = request.getParameter("id"); 

    String password = request.getParameter("passwd"); 

    String message; 

    if(id.equals("admin")&&password.equals("admin1234")){ 

        session.setAttribute("userID", id); 

        message = "로그인 성공"; 

    }else{ 

        message = "로그인 실패"; 

    } 

%>
<%= message %> 
</body>
</html>