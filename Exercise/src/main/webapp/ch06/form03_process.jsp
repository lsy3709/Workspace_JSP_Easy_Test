<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<h4>선택한 과일</h4>
	<%
		String message = " ";
		String values[] = request.getParameterValues("FruitGroup");
		if (values != null) {
			for (int i = 0; i < values.length; i++) {
				message = message + values[i] + " ";
			}
		}
	%>
	<%=message%>

</body>
</html>