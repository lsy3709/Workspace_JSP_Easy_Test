<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<h4>구구단 출력하기</h4>	
	<jsp:include page="include_date.jsp" flush="true" >	
		<jsp:param name="num" value="5" />
	</jsp:include>
	<h4>구구단 출력 종료하기</h4>		
</body>
</html>
