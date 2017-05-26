<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

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
            <li><a href="#">過去の頑張り</a></li>
            <li><a href="#">
            	<form action="ResultServlet" method="post">
					<input type="hidden" name="hist" value="hist" />
					<button>購入履歴</button>

				</form>
            	</a></li>
            <li><a href="#">設定</a></li>
            <li><a href="#">ログアウト</a></li>
          </ul>
         </li>
      </ul>
    </div>


<div id="list">
<div id="itemlist">
<div id="category">
	<p>購入完了</p>
<hr class="bor" />

	<table>

		<% String[] buyitem = (String[])session.getAttribute("buyitem"); %>
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
	</table>
</div>

<a href="ItemServlet">商品一覧に戻る</a>

</div>

</div>


  <!-- jQuery (necessary for Bootstrap’s JavaScript plugins) -->
    <script src=“https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js”></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src=“https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js” integrity=“sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa” crossorigin=“anonymous”>
    </script>


</div>



</body>
</html>