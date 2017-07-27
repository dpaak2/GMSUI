<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../member/member_head.jsp" %>
<%@ include file="../member/member_service.jsp" %>
<%@ include file="../constants/db.jsp" %>
<%@ page import="java.sql.*" %>
<%
Class.forName(ORACLE_DRIVER);
String id=request.getParameter("id");
String pass=request.getParameter("pass");
String sql="SELECT * FROM Member WHERE id=?";
PreparedStatement pstmt=DriverManager.getConnection(ORACLE_URL,ID,PW).prepareStatement(sql);
pstmt.setString(1, id);
ResultSet rs= pstmt.executeQuery();
String result="";
String dbpw="";
if(rs.next()){
	dbpw=rs.getString("password");
	if(pass.equals(dbpw)){
		%>
		
		<div id="container">
		<table id="index-tab" >
			<tr id="index-tab-tr">
				<th><i class="glyphicon glyphicon-user"></i>학생관리</th>
				<th><i class="glyphicon glyphicon-cloud"></i>성적관리</th>
				<th><i class="glyphicon glyphicon-thumbs-up"></i>게시판</th>
			</tr>
			
			<tr>
				<td>
					<ul class="index-ul" class="gms-list-style-none">
						<li><a href="<%=root(request)%>/member/member_login.jsp">로그인</a></li>
						<li><a href="<%=root(request)%>/member/member_add.jsp">학생 추가</a></li>
						<li><a href="<%=root(request)%>/member/member_list.jsp">학생 목록</a></li>
						<li><a href="<%=root(request)%>/member/member_search.jsp">학생 상세정보</a></li>
						<li><a href="<%=root(request)%>/member/member_update.jsp">학생 수정</a></li>
						<li><a href="<%=root(request)%>/member/member_delete.jsp">학생 삭제</a></li>
					</ul>
				</td>
				<td>
					 <ul class="index-ul" class="gms-list-style-none index-ul">
						<li><a href="<%=root(request)%>/grade/grade_add.jsp">성적 입력</a></li>
						<li><a href="<%=root(request)%>/grade/grade_list.jsp">성적 목록</a></li>
						<li><a href="<%=root(request)%>/grade/grade_update.jsp">성적 수정</a></li>
						<li><a href="<%=root(request)%>/grade/grade_delete.jsp">성적 삭제</a></li>
					 </ul>
				</td>
				<td>
					<ul class="index-ul"  class="gms-list-style-none">
					<li><a class="gms-text-deco-none" href="<%=root(request)%>/board/board_write.jsp">게시글 쓰기</a></li>
					<li><a class="gms-text-deco-none" href="<%=root(request)%>/board/board_list.jsp">게시글 목록</a></li>
					<li><a href="<%=root(request)%>/board/board_update.jsp">게시글 수정</a></li>
					<li><a href="<%=root(request)%>/board/board_delete.jsp">게시글 삭제</a></li>
					<li><a href="<%=root(request)%>/board/board_delete.jsp">게시글 삭제</a></li>
				</ul>
				</td>
			
			</tr>
		</table>
		</div>
		<hr />
<%
	}else{
	%>
	<script>
	alert('잘못된 비밀번호');
	location.href="<%=headRoot(request)%>/index.jsp";
	</script>
	<% 
		
	}
}else{
	%>
	<script>
	alert('없는 ID..회원 가입 바랍니다.');
	location.href="<%=headRoot(request)%>/member/member_add.jsp";
	</script>
	<%
}
%>
	<%@ include file="footer.jsp"%>	
	
	
