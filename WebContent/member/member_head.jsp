<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/common_service.jsp" %>
<!doctype html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>학생 관리</title>
<link rel="stylesheet" href="<%=headRoot(request)%>/css/member.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<div id="wrapper">
<header>
<a href="../index.jsp"><img src="<%=headRoot(request)%>/img/homebutton.jpg" alt="" /></a>
<h1 id="title">학생관리</h1>
<a id="go_main" href="<%=request.getContextPath()%>/common/main.jsp">메인으로 가기</a><br />
<hr />
</header>