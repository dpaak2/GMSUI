<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.beans.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="member_head.jsp" %>
<%@ include file="member_service.jsp"%>
<%@ include file="../constants/db.jsp" %>
<%
	Class.forName(ORACLE_DRIVER);
/* 	String name=request.getParameter("name"); */
	String sql="select * from Member";
	ResultSet rs= DriverManager.getConnection(ORACLE_URL,ID,PW).prepareStatement("select * from Member").executeQuery();
%>
<div id="container">
<!--id, pw, ssn,name,regedate,email,major,subject-->
<table id="member_list_tab">
	<tr>
		<th style="width: 5%;">NO</th>
		<th style="width: 10%;">ID</th>
		<th style="width: 10%;">NAME</th>
		<th style="width: 20%;">EMAIL</th>
		<th style="width: 20%;">MAJOR</th>
		<th style="width: 10%;">SUBJECT</th>
		<th style="width: 15%;">PHONE NO</th>
		<th style="width: 10%;">REGDATE</th>
	</tr>
	<%
	List<Map<String,String>> list= new ArrayList<>();
	while(rs.next()){
		Map<String,String> map=new HashMap<>();
		map.put("id", rs.getString("id"));
		map.put("name",rs.getNString("name"));
		map.put("regDate",rs.getString("regdate"));
		list.add(map);
		
	}
	
	
	for(int i=0;i<list.size();i++){
		//list(i);
		Map<String ,String> resultMap=list.get(i);
	%>
	<tr>
		<td><%=i+1 %></td>
		<td><%= resultMap.get("id")%></td>
		<td><%=resultMap.get("name") %></td>
		<td>hong@gmail.com</td>
		<td>computer science</td>
		<td>java</td>
		<td>010-1234-1234</td>
		<td><%=resultMap.get("regDate") %></td>
	</tr>
	<%
	}
	%>
</table>
</div>
<%@ include file="../common/footer.jsp"%>







