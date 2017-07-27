<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../constants/db.jsp" %>
<%@ page import="java.sql.*" %>
<%
Class.forName(ORACLE_DRIVER);
String id=request.getParameter("id");
String pass=request.getParameter("pass");
String sql="SELECT * FROM Member WHERE id='hong'";
Statement stmt=DriverManager.getConnection(ORACLE_URL,ID,PW).createStatement();
ResultSet rs= stmt.executeQuery(sql);
String findName="";
if(rs.next()){
	findName=rs.getString("name");
}

%>