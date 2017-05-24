	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SHOP</title>
</head>
<body>


<div id="Continer">
	<form action="LoginServlet" method="post">
		<p>ID</p><input type="text" name="id" />
		<p>PASSWORD</p><input type="password" name="password" />
		<button type="submit" name="logaction" value="log_action">ログイン</button>
	</form>
</div>
<font color="red">${ message }</font>

</body>
</html>


