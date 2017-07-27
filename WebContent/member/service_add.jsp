<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="member_head.jsp" %>
<%@ include file="../constants/db.jsp" %>
<%
String[] subjects=request.getParameterValues("subject");
String birth=request.getParameter("birthday");
String id=request.getParameter("id");
String pass=request.getParameter("password");
String name=request.getParameter("name");
int result=0;
Class.forName(ORACLE_DRIVER);
//INSERT INTO Member(id, name, password,ssn,regdate) VALUES('kim','김유신','1','810102-123456',SYSDATE);
PreparedStatement pstmt=DriverManager.getConnection(ORACLE_URL,ID,PW).prepareStatement("INSERT INTO Member(id, name, password,regdate) VALUES(?,?,?,SYSDATE)");
pstmt.setString(1, id);
pstmt.setString(2, name);
pstmt.setString(3, pass);
result=pstmt.executeUpdate();
if(result==1){
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
