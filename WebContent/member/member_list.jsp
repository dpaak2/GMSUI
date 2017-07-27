<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="member_head.jsp" %>
<%@ include file="member_service.jsp"%>
<%
List<Map<String,String>> list=getList(request);
%>
<div id="container">
<!--id, pw, ssn,name,regedate,email,major,subject-->
<table id="member_list_tab">
	<tr>
		<th style="width: 3%;">NO</th>
		<th style="width: 12%;">ID</th>
		<th style="width: 10%;">NAME</th>
		<th style="width: 20%;">EMAIL</th>
		<th style="width: 20%;">MAJOR</th>
		<th style="width: 5%;">학점</th>
		<th style="width: 10%;">PHONE NO</th>
		<th style="width: 10%;">REGDATE</th>
		<th style="width: 10%;">수정/삭제</th>
	</tr>
	<%
	
	for(int i=0;i<list.size();i++){
		
		Map<String ,String> resultMap=list.get(i);
	%>
	<tr>
		<td><%=i+1 %></td>
		<td><a href="<%=request.getContextPath()%>/member/member_detail.jsp?id=<%= resultMap.get("id")%>"><%= resultMap.get("id")%></a></td>
		<td><%=resultMap.get("name") %></td>
		<td><%=resultMap.get("email") %></td>
		<td><%=resultMap.get("major") %></td>
		<td>A</td>
		<td><%=resultMap.get("phone") %></td>
		<td><%=resultMap.get("regDate") %></td>
		<td><a href="<%=request.getContextPath()%>/member/meber_detail.jsp?id=<%= resultMap.get("id")%>">수정 </a>/<a href="<%=request.getContextPath()%>/member/service_delete.jsp?id=<%= resultMap.get("id")%>">삭제</a></td> 
	</tr>
	<%
	}
	%>
</table>
</div>
<%@ include file="../common/footer.jsp"%>







