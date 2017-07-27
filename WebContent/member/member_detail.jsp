<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="member_service.jsp" %>
<%@ include file="member_head.jsp" %>
	<%    
	   Map<String,String> map =getDetail(request);

	%>   
	   <div id="container">
		<table id="member_detail_tab">
			<tr>
				<td colspan="2" rowspan="3" ><img src="<%=request.getContextPath()%>/img/<%=map.get("profile") %>" id="member_img" alt="" /></td>
				<td class="member_detail_td">이름</td>
				<td class="member_detail_td"><%=map.get("name")%></td>
			</tr>
			<tr>
				<td class="member_detail_td">ID</td>
				<td class="member_detail_td"><%=map.get("id")%></td>
			</tr>
			<tr>
				<td class="member_detail_td">주민번호</td>
				<td class="member_detail_td"><%=map.get("ssn")%></td>
			</tr>
			<tr>
				<td>전화</td>
				<td colspan="3"><%=map.get("phone")%></td>
			</tr>
			<tr>
				<td>Email</td>
				<td colspan="3"><%=map.get("email")%></td>
			</tr>
			<tr>
				<td>major</td>
				<td colspan="3"><%=map.get("major")%></td>
			</tr>
			<tr>
				<td>Registered date</td>
				<td colspan="3"><%=map.get("regDate") %></td>
			</tr>
		</table>
		<button id="list_button" onclick="javascript:goList()" >목록</button>
		<button id="update_button" onclick="javascript:goUpdate()">수정</button>
		
	   </div>
	
	<br /><br /><br /><br />
	<script>
	function goList(){
		location.href="<%=headRoot(request)%>/member/member_list.jsp?action=list";
	}
	function goUpdate(){
		location.href="<%=headRoot(request)%>/member/member_update.jsp?id=<%=request.getParameter("id")%>";
	}
	</script>
	
	<%@ include file="../common/footer.jsp"%>
	