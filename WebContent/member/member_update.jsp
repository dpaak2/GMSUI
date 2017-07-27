<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="../constants/db.jsp" %>
<%@ include file="member_service.jsp" %>
<%@ include file="member_head.jsp" %>
	<%    
	   String id=request.getParameter("id");
	%>   
	   <div id="container">
	  <form id="update_value" action="<%=headRoot(request)%>/member/service_update.jsp" method="get">
		<table id="member_detail_tab">
			<tr>
				<td colspan="2" rowspan="3" ><img src="<%=request.getContextPath()%>/img/colly.jpg" id="member_img" alt="" /></td>
				<td class="member_detail_td">이름</td>
				<td class="member_detail_td"><input type="text" name="name" value="<%= request.getParameter("name")%>"/></td>
			</tr>
			<tr>
				<td class="member_detail_td">ID</td>
				<td class="member_detail_td"><%=id%></td>
			</tr>
			<tr>
				<td class="member_detail_td">주민번호</td>
				<td class="member_detail_td"><%=request.getParameter("ssn") %></td>
			</tr>
			<tr>
				<td>전화</td>
				<td colspan="3"></td>
			</tr>
			<tr>
				<td>Email</td>
				<td colspan="3"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td colspan="3"></td>
			</tr>
			<tr>
				<td>major</td>
				<td colspan="3"></td>
			</tr>
			<tr>
				<td>subject</td>
				<td colspan="3"></td>
			</tr>
		</table>
		<input id="confirm_button"  type="submit" value="수정" />
		<input id="confirm_button"  type="button" onclick="javascript:cancel()" value="취소" />
		<input type="hidden" name="id" value="<%=id %>" />
		</form>
		
	   </div>
	<br /><br /><br /><br />
	<script>
	function cancel(){
		location.href="<%=headRoot(request)%>/member/member_update.jsp";
	}
	</script>
	
	<%@ include file="../common/footer.jsp"%>
	