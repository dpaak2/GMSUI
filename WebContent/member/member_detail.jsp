<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="member_head.jsp" %>
<%@ include file="member_service.jsp"%>
<div id="container">
<h1>HELLO</h1>
<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String pwd = request.getParameter("pwd");
String email =request.getParameter("email");
%>
</div>
<%@ include file="../common/footer.jsp"%>