<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@ page import="java.util.*" %>
    <%@ page import="BeanDao.ItemBean" %>


    <%

    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

購入商品
<table border="1px">

		<tr>
		<%
			String[] buyitem = (String[])session.getAttribute("buyitem");
			 %>
			<td><%= buyitem[0] %></td>
			<td><%= buyitem[1] %></td>
			<td><%= buyitem[2] %></td>
			<td><%= buyitem[3] %></td>

			<td>
			<form action="ResultServlet" method="post">
				<input type="hidden" name="buyaction" value="buy_act" />
				<button type="submit">購入する</button>
			</form>
			</td>
		</tr>
	</table>
	<a href="ItemServlet">商品一覧に戻る</a>



</body>
</html>