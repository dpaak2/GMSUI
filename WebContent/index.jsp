<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
	<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>메인</title>
<link rel="stylesheet" href="css/common.css" /><!--class로 준 css  -->
<link rel="stylesheet" href="css/member.css" /> <!--id로 주는 css  -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	<div id="wrapper" >
	<header>
		<img src="img/homebutton.jpg" alt="" />
		<h1 class="gms-text-center" >성적관리 시스템[GMS]</h1>
		<hr />
	</header>
		<div id="container">
		<table id="index-tab" >
			<tr id="index-tab-tr">
				<th><i class="glyphicon glyphicon-user"></i>학생관리</th>
				<th><i class="glyphicon glyphicon-cloud"></i>성적관리</th>
				<th><i class="glyphicon glyphicon-thumbs-up"></i>게시판</th>
			</tr>
			
			<tr>
				<td>
					<ul class="index-ul" class="gms-list-style-none">
						<li><a href="member/member_login.jsp">로그인</a></li>
						<li><a href="member/member_add.jsp">학생 추가</a></li>
						<li><a href="member/member_list.jsp">학생 목록</a></li>
						<li><a href="member/member_update.jsp">학생 수정</a></li>
						<li><a href="member/member_delete.jsp">학생 삭제</a></li>
					</ul>
				</td>
				<td>
					 <ul class="index-ul" class="gms-list-style-none index-ul">
						<li><a href="grade/grade_add.jsp">성적 입력</a></li>
						<li><a href="grade/grade_list.jsp">성적 목록</a></li>
						<li><a href="grade/grade_update.jsp">성적 수정</a></li>
						<li><a href="grade/grade_delete.jsp">성적 삭제</a></li>
					 </ul>
				</td>
				<td>
					<ul class="index-ul"  class="gms-list-style-none">
					<li><a class="gms-text-deco-none" href="board/board_write.jsp">게시글 쓰기</a></li>
					<li><a class="gms-text-deco-none" href="board/board_list.jsp">게시글 목록</a></li>
					<li><a href="board/board_update.jsp">게시글 수정</a></li>
					<li><a href="board/board_delete.jsp">게시글 삭제</a></li>
					<li><a href="board/board_delete.jsp">게시글 삭제</a></li>
				</ul>
				</td>
			
			</tr>
		</table>
		</div>
		<hr />
	<%@ include file="common/footer.jsp"%>	
	
	
