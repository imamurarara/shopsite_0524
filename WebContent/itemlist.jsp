<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@ page import="java.util.*" %>
    <%@ page import="BeanDao.ItemBean" %>

     <% session.getAttribute("userid"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
ログイン成功

<div>
<h1>商品一覧	</h1>
${ message }
	<table border="1px">
		<%

		ArrayList<ItemBean> items = (ArrayList<ItemBean>)request.getAttribute("itembean");
		for(ItemBean item : items){
		%>
		<tr>
			<td><%= item.getItem_id() %></td>
			<td><%= item.getItem_name() %></td>
			<td><%= item.getPrice() %></td>
			<form action="BuyServlet" method="post">
			<td>
				<select name="quantity" value="<%= item.getItemquantity() %>">
				<% for(int i=0; i<=item.getItemquantity();){ %>
				<option><%= i++ %></option>
				<% } %>
				</select>
			</td>
			<td>
				<input type="hidden" name="item_id" value="<%= item.getItem_id() %>" />
				<input type="hidden" name="item_name" value="<%= item.getItem_name() %>" />
				<input type="hidden" name="price" value="<%= item.getPrice() %>" />
				<input type="hidden" name="userid" value="<%= session.getAttribute("userid") %>" />
				<button type="submit" name="logaction">確認する</button>
			</td>
			</form>
		</tr>
		<% } %>
	</table>
	<form action="ResultServlet" method="post">
		<input type="hidden" name="hist" value="hist" />
		<button type="submit">購入履歴へ</button>
	</form>
</div>



</body>
</html>