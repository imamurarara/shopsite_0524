<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	<header>
    ようこそ「<jsp:getProperty property="name" name="userid"/>」さん! <a href="/ShopSite/LoginServlet?submit=購入履歴">購入履歴</a>
    <a href="/ShopSite/LoginServlet?submit=ログアウト">ログアウト</a>
    </header>

</body>
</html>