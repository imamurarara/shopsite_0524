	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="https://fonts.googleapis.com/css?family=Josefin+Slab" rel="stylesheet">
    <link href="https://fonts.googleapis.com/earlyaccess/notosansjapanese.css" rel="stylesheet" />
    <link href="test.css" rel="stylesheet" type="text/css" media="all" />

<title>SHOP</title>
</head>
<body>

  <div id="cont">
    <div id="header">
    <h1>Welcome to <span>'Selfme'</span></h1>
    </div>


    <div id="btn">
    	<font color="red">${ message }</font><br />
      <div class="a"><a href="#open_login">ログインする？</a></div>
      <div class="a"><a href="#open_new">新規会員登録する？</a></div>
    </div>
    <hr class="hr" />

  <div id="btn_form">
    <div id="open_login">
      <a href="#" class="close_btn">×</a>
        <div class="window">
          <h2>LOGIN</h2>
          <a href="http://black-flag.net" target="_blank"></a>
          <form action="LoginServlet" method="post">
            <div class="logform">
              <span>USER ID</span><br /><br />
              <span>PASSWORD </span>
            </div>
            <div class="logform">
             <input type="text" name="id" value="" required /><br /><br />
              <input type="password" name="password" value="" required /><br />
            </div>
            <input type="hidden" name="logaction" value="logaction" />
            <button type="submit" class="a">ログインする！</button>
          </form>

          <a href="#" class="close　">（×）CLOSE</a>
        </div>
    </div>
    <div id="open_new">
      <a href="#" class="close_btn">×</a>
        <div class="window">
          <h2>NEW ACOUNT</h2>
          <a href="http://black-flag.net" target="_blank"></a>
           <form action="LoginServlet" method="post">
            <div class="logform">
              <span>USER NAME</span><br /><br />
              <span>USER ID</span><br /><br />
              <span>PASSWORD </span>
            </div>
            <div class="logform">
            <input type="text" name="new_name" value="" required  /><br /><br />
             <input type="text" name="new_id" value="" required /><br /><br />
              <input type="password" name="new_password" value="" required  /><br />
            </div>
            <input type="hidden" name="newaccount" value="newaccount" />
            <button type="submit" class="a">会員登録する</button>
          </form>
          <a href="#">（×）CLOSE</a>
    </div>
    </div>

  </div>

   <!-- jQuery (necessary for Bootstrap’s JavaScript plugins) -->
    <script src=“https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js”></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src=“https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js” integrity=“sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa” crossorigin=“anonymous”>

    </script>
  </body>
</html>

</body>
</html>


