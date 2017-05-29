<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>過去を振り返るページ</title>

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
<h4>過去を振り返る</h4>
</div>
<hr class="bor" />


<div id="itemlist">

</div>


   </div>

</body>
</html>