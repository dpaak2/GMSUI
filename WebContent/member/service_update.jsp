<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="member_head.jsp" %>
<%@ include file="../constants/db.jsp" %>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
Class.forName(ORACLE_DRIVER);
PreparedStatement pstmt=DriverManager.getConnection(ORACLE_URL,ID,PW).prepareStatement("UPDATE Member SET name=? WHERE id=?");
pstmt.setString(1, name);
pstmt.setString(2, id);
int result=pstmt.executeUpdate();
if(result==1){
	%>
	<script>
	alert('업데이트 성공');
	location.href="<%=request.getContextPath()%>/member/member_detail.jsp?id=<%=id%>";
	</script>
	<%
}else{
	%>
	<script>
	alert('업데이트 실패');
	location.href="<%=request.getContextPath()%>/member/member_detail.jsp?id=<%=id%>";
	</script>
	<%
}
%>