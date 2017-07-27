<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="../constants/db.jsp" %>
<%@ include file="member_service.jsp" %>
<%@ include file="member_head.jsp" %>
	<%    
	   
	   Class.forName(ORACLE_DRIVER);
	   String id = request.getParameter("id");
	   PreparedStatement pstmt = DriverManager.getConnection(ORACLE_URL, ID, PW).prepareStatement("select * from member where id=?");
	   pstmt.setString(1, id);
	   
	   ResultSet rs = pstmt.executeQuery();
	   if(rs.next()){
	%>   
	   <div id="container">
		<table id="member_detail_tab">
			<tr>
				<td colspan="2" rowspan="3" ><img src="<%=request.getContextPath()%>/img/colly.jpg" id="member_img" alt="" /></td>
				<td class="member_detail_td">이름</td>
				<td class="member_detail_td"><%=rs.getString("name") %></td>
			</tr>
			<tr>
				<td class="member_detail_td">ID</td>
				<td class="member_detail_td"><%=rs.getString("id") %></td>
			</tr>
			<tr>
				<td class="member_detail_td">주민번호</td>
				<td class="member_detail_td"><%=rs.getString("ssn") %></td>
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
		<button id="list_button" onclick="javascript:goList()" >목록</button>
		<button id="update_button" onclick="javascript:goUpdate()">수정</button>
		
	   </div>
	<%    
	   }
	   
	   //String pw = request.getParameter("pw");
	   //String name = request.getParameter("name");
	   //String birth = request.getParameter("birth").substring(0, 4);
	   //int age = 2017-Integer.parseInt(birth);
	   //String gender = (request.getParameter("gender").equals("male"))?"남":"여";
	   //String email = request.getParameter("email");
	   //String major = request.getParameter("major");
	%>
	
	
	<br /><br /><br /><br />
	<script>
	function goList(){
		location.href="<%=headRoot(request)%>/member/member_list.jsp";
	}
	function goUpdate(){
		location.href="<%=headRoot(request)%>/member/member_update.jsp?id=<%=rs.getString("id")%>&name=<%=rs.getString("name")%>&ssn=<%= rs.getString("ssn")%>";
	}
	</script>
	
	<%@ include file="../common/footer.jsp"%>
	