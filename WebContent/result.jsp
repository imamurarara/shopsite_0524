<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

購入しました

<% String[] buyitem = (String[])session.getAttribute("buyitem"); %>
<table border="1px">
	<tr>
		<td>購入ID</td>
		<td>購入商品</td>
		<td>個数</td>
	</tr>
	<tr>
		<td><%= buyitem[0] %></td>
		<td><%= buyitem[1] %></td>
		<td><%= buyitem[3] %></td>
	</tr>
	<form action="ResultServlet" method="post">
		<input type="hidden" name="hist" value="hist" />
		<button type="submit">購入履歴へ</button>
	</form>

	<a href="ItemServlet">商品一覧に戻る</a>

</table>

</body>
</html>