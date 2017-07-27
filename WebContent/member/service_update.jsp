<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="member_head.jsp" %>
<%@ include file="member_service.jsp" %>
<%
Map<String,String> map =serviceUpdate(request);

if(Integer.parseInt(map.get("result"))==1){
	%>
	<script>
	alert('업데이트 성공');
	location.href="<%=request.getContextPath()%>/member/member_detail.jsp?id=<%=map.get("id")%>";
	</script>
	<%
}else{
	%>
	<script>
	alert('업데이트 실패');
	location.href="<%=request.getContextPath()%>/member/member_detail.jsp?id=<%=map.get("id")%>";
	</script>
	<%
}
%>