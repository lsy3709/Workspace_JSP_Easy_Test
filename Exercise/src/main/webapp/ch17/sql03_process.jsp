<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<html>
<head>
<title>JSTL</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");

	String before = request.getParameter("before_depart");
	String after = request.getParameter("after_depart");
	%>
	<sql:setDataSource var="dataSource"
		url="jdbc:mysql://localhost:3306/ExerciseDB"
		driver="com.mysql.jdbc.Driver" user="root" password="1234" />


	<sql:update dataSource="${dataSource}" var="resultSet">
		UPDATE student SET  depart = ? where depart = ?
		<sql:param value="<%=after%>" />
		<sql:param value="<%=before%>" />	
		
		
	</sql:update>
	<c:import var="url" url="sql01.jsp"  />
	${url}
</body>
</html>