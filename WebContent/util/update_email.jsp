<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../constants/db.jsp" %>
<%
List<String> list= new ArrayList<>();
Class.forName(ORACLE_DRIVER);
ResultSet rs= DriverManager.getConnection(ORACLE_URL,ID,PW).prepareStatement("SELECT id FROM Member").executeQuery();
while(rs.next()){
	list.add(rs.getString("id"));
}
int result =0;
for(int i=0;i<list.size();i++){
	String id = list.get(i);
	String email=id+"@test.com";
	String sql="UPDATE Member SET email=? WHERE id=?";
	PreparedStatement pstmt= DriverManager.getConnection(ORACLE_URL,ID,PW).prepareStatement(sql);
	pstmt.setString(1, email);
	pstmt.setString(2, id);
	result=pstmt.executeUpdate();
	
	}
if(result==1){
	%>
	<script>
	alert('email 수정 완료');
	location.href="<%=request.getContextPath()%>/index.jsp";
	</script>
	<%
}else{
 %>
	<script>
	alert('email 수정 실패');
	location.href="<%=request.getContextPath()%>/index.jsp";
	</script>
	<%
}
 %>