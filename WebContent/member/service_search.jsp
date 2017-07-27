<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="member_head.jsp" %>
<%
String option=request.getParameter("option");
String search=request.getParameter("search");
switch(option){
		case"id":

				%>
				<script>
				alert('아이디 검색 결과');
				              /* request.getContextPath() */
				location.href="<%= headRoot(request)%>/member/member_detail.jsp?id=<%=search%>";
				</script>
				<%
			
			break;
		case"name":
			%>
			<script>
			alert('이름 검색 결과');
			location.href="<%= headRoot(request)%>/member/member_list.jsp?name=<%=search%>";
			</script>
			<%
			break;
}
%>