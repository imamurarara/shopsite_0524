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
<header>
 ようこそ「<jsp:getProperty property="name" name="user_db"/>」さん！
<a href="/プロジェクト名/LoginServlet?submit=購入履歴">購入履歴</a>
<a href="/プロジェクト名/LoginServlet?submit=ログアウト">ログアウト</a>
</header>

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



</body>
</html>