<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ include file="member_service.jsp" %>
<%
Map<String,String>map=deleteService(request);
if(Integer.parseInt(map.get("result"))==1){
	%>
	<script>
	alert('회원삭제 완료');
	location.href="<%=request.getContextPath()%>/member/member_list.jsp";
	</script>
	<%
}
    else{
    	%>
    	<script>
    	alert('회원삭제 완료');
    	location.href="<%=request.getContextPath()%>/member/member_list.jsp";
    	</script>
    	<%
 } 
 %>