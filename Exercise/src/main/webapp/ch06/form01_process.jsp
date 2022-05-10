<%@ page contentType="text/html; charset=utf-8"%>
  <%@ page import="java.util.Enumeration"  %> 
<html>
<head>
<title>Form Processing</title>
</head>
<body>
	<%  
		
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String address = request.getParameter("address");
	String email = request.getParameter("email");
	
	
	 StringBuffer buffer = new StringBuffer();   
	 buffer.append("아이디 : " + name);         
     buffer.append("<br/>"); 
     buffer.append("주소 : " + address);         
     buffer.append("<br/>");    
     buffer.append("이메일 : " + email);         
     buffer.append("<br/>");    
           
     %>     
     <%= buffer.toString() %> 
	
		
</body>
</html>