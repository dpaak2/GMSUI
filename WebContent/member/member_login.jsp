<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MEMBEER login</title>
<link rel="stylesheet" href="../css/member.css" />

</head>
<body>
<div id="wrapper">
<header>
<!-- 로그인 화면 -->
<a href="../index.jsp"><img src="../img/homebutton.jpg" alt="" /></a>
	<h1 id="title">LONGIN</h1>
<a id="go_main" href="../index.jsp">메인으로 가기</a><br />
	<hr />
</header>
<div id="container">
	<img src="../img/login.png" alt="" /><br />
	<mark style="color: red;">*ID는 숫자포함 8자 이내</mark><br />
<!-- 	//display: inline-block; -->
<form action="">
	<span id="login_id">ID</span>
	<input type="text" placeholder="ID" />
	<br />
	<span id="login_pass">PASSWORD</span>
	<input type="text" placeholder="PASSWORD" /><br />
	<button id="login-button_submit" onclick="window.location.href='member_detail.jsp'">login</button>
	<button id="login-button_cancle" onclick="window.location.href='../index.jsp'">cancel</button>
</form>	
</div>
</div>
</body>
</html>