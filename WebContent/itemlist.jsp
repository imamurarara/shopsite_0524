<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@ page import="java.util.*" %>
    <%@ page import="javax.servlet.http.HttpServletRequest" %>
    <%@ page import="BeanDao.ItemBean" %>

     <% session.getAttribute("userid"); %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>SHOP</title>

 <link href="https://fonts.googleapis.com/css?family=Josefin+Slab" rel="stylesheet">
 <link href="https://fonts.googleapis.com/earlyaccess/notosansjapanese.css" rel="stylesheet" />
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
 <link href="test.css" rel="stylesheet" type="text/css" media="all" />
 <link href="second.css" rel="stylesheet" type="text/css" media="all" />


</head>

<body>

 <div id="cont">

    <div id="head2">
      <h3>Selfme</h3>
    </div>


    <div id="menu">
      <ul id="nav">
        <li class=""><p class="home"><a href="#"><i class="fa fa-user fa-fw fa-2x"></i>user</a></p>
          <ul class="menu_sec">
            <li><a href="#">現在の目標</a></li>
            <li><a href="#">
            	<form action="userHistory.jsp"><button>過去の頑張り</button></form>
            </a></li>
            <li><a href="#">
            	<form action="ResultServlet" method="post">
					<input type="hidden" name="hist" value="hist" />
					<button>購入履歴</button>

				</form>
            	</a></li>
            <li><a href="#">設定</a></li>
            <li><a href="#">
            <form action="logoutServlet" method="post">
					<input type="hidden" name="logout" value="logout" />
					<button>ログアウト</button>
				</form>
				</a>
            </li>
          </ul>
         </li>
      </ul>
    </div>


<div id="list">

<div id="category">
	<form action="ItemServlet" method="post">
		<input type="hidden" name="cate"  />
		<button type="submit" name="" class="cate_btn">All</button>
	</form>
	<form action="ItemServlet" method="post">
		<input type="hidden" name="cate" value="1" />
		<button type="submit" name="" class="cate_btn">1</button>
	</form>
	<form action="ItemServlet" method="post">
		<input type="hidden" name="cate" value="2" />
		<button type="submit" name="" class="cate_btn">2</button>
	</form>
</div>
<hr class="bor" />


<div id="itemlist">

<% ArrayList<ItemBean> getcate = (ArrayList<ItemBean>)request.getAttribute("getcate");
	if( getcate == null){%>
${ message }

	<table>
		<%
		ArrayList<ItemBean> items = (ArrayList<ItemBean>)request.getAttribute("itembean");
		for(ItemBean item : items){
		%>
		<tr>
			<td><%= item.getCategory() %></td>
			<td><%= item.getItem_id() %></td>
			<td><%= item.getItem_name() %></td>
			<td><%= item.getPrice() %></td>
			<form action="BuyServlet" method="post">
			<td>
				<select name="quantity" value="<%= item.getItemquantity() %>">
				<%
					for(int i=0; i<=item.getItemquantity();){ %>
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
</div>

<% }else{ %>

${ message }
		<table>

		<% for(ItemBean item : getcate){%>

		<tr>
			<td><%= item.getCategory() %></td>
			<td><%= item.getItem_id() %></td>
			<td><%= item.getItem_name() %></td>
			<td><%= item.getPrice() %></td>
			<form action="BuyServlet" method="post">
			<td>
				<select name="quantity" value="<%= item.getItemquantity() %>">
				<%
					for(int i=0; i<=item.getItemquantity();){ %>
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
<% } %>

</div>



</div>


  <!-- jQuery (necessary for Bootstrap’s JavaScript plugins) -->
    <script src=“https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js”></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src=“https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js” integrity=“sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa” crossorigin=“anonymous”>
    </script>


</body>
</html>