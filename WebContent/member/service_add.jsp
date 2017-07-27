<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="member_head.jsp" %>
<%@ include file="member_service.jsp"%>
<%
Map<String,String>map= getAdd(request);

if(Integer.parseInt(map.get("result"))==1){
	%>
	<script>
	alert('회원가입 성공');
	location.href="<%=request.getContextPath()%>/index.jsp";
	</script>
	<%
}

%>
<script>
alert('회원가입이 완료 되었습니다');
location.href="<%=headRoot(request)%>/index.jsp";
</script>
