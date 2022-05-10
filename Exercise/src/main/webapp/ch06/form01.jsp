<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
	<form action="form01_process.jsp" name="form" method="post">
		<p>	이름 : <input type="text" name="name" />
		<p>	주소 : <input type="text" name="address" />
		<p>	이메일 : <input type="text" name="email" />
		<p>	<input type="submit" value="전송" />
	</form>
</body>
<html>