<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>게시글 작성</title>
<link rel="stylesheet" href="../css/board.css" />
</head>
<body>
<div id="wrapper">
<a href="../index.jsp"><img src="../img/homebutton.jpg" alt="" /></a>
<h1 id="title" class="gms-text-center">BOARD WRITE</h1>
<a id="go_main"  href="../index.jsp">메인으로 가기</a><br />
<hr/>
<div id="container">
<form action="" method="get">
    <textarea name="post" id="" cols="30" rows="10" placeholder="게시글 작성" style="width: 300px;">
    </textarea>
<input type="submit" style="background-color: #3c89bc; color: white; font-size: 15px; width: 307px;"/>
</form>
</div>
</div>
</body>
</html>