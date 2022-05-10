<%@ page contentType="text/html; charset=utf-8"%>
  <%@ page import="java.util.Enumeration"  %> 
<html>
<head>
<title>Form Processing</title>
</head>
<body>
	<%  
	request.setCharacterEncoding("UTF-8");
	
      Enumeration<String> paramEnumeration= request.getParameterNames();
      StringBuffer buffer = new StringBuffer();     
      while(paramEnumeration.hasMoreElements())     
      {         
        String paramName= paramEnumeration.nextElement();        
        String paramValue =request.getParameter(paramName);             
        buffer.append(paramName + " : " + paramValue);         
        buffer.append("<br/>");     
      }     
     %>     
     <%= buffer.toString() %> 

</body>
</html>