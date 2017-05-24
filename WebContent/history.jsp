<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ page import="java.util.*" %>
    <%@ page import="BeanDao.ItemBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<div>
<h1>購入履歴</h1>
${ message }
	<table border="1px">
		<%

		ArrayList<ItemBean> userhist = (ArrayList<ItemBean>)request.getAttribute("userhist");
		for(ItemBean hist : userhist){
		%>
		<tr>
			<td><%= hist.getItem_id() %></td>
			<td><%= hist.getItem_name() %></td>
			<td><%= hist.getItemquantity() %></td>
		<% } %>
	</table>
</div>


</body>
</html>