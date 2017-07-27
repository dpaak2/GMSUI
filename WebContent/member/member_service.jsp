<%@page import="jdk.internal.org.objectweb.asm.tree.TryCatchBlockNode"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="../constants/db.jsp" %>
<%!
   public String getAge(HttpServletRequest request){
	  String spec="";
	  String name=request.getParameter("name");
      String birth =request.getParameter("birthday");
      String clock = new SimpleDateFormat("yyyy").format(new Date());
      String age = String.valueOf(Integer.parseInt(clock)-Integer.parseInt(birth));
      return age;
}

public String root(HttpServletRequest request){
	return request.getContextPath();
}
public Map<String,String> getAdd(HttpServletRequest request){
	Map<String,String>map=new HashMap<>();
	String[] subjects=request.getParameterValues("subject");
	String birth=request.getParameter("birthday");
	String id=request.getParameter("id");
	String pass=request.getParameter("password");
	String name=request.getParameter("name");
	try{
		Class.forName(ORACLE_DRIVER);
		PreparedStatement pstmt=DriverManager.getConnection(ORACLE_URL,ID,PW).prepareStatement("INSERT INTO Member(id, name, password,regdate) VALUES(?,?,?,SYSDATE)");
		pstmt.setString(1, id);
		pstmt.setString(2, name);
		pstmt.setString(3, pass);
		map.put("result",String.valueOf(pstmt.executeUpdate()));
	}catch(Exception e){
		System.out.print("erro");
		e.printStackTrace();
	}
	return map;
} 
public Map<String,String> getDetail(HttpServletRequest request){
	Map<String,String > map= new HashMap<>();
		  String id = request.getParameter("id");
	try {
		   Class.forName(ORACLE_DRIVER);
		   PreparedStatement pstmt = DriverManager.getConnection(ORACLE_URL, ID, PW).prepareStatement("select * from member where id=?");
		   pstmt.setString(1, id);
		   
		   ResultSet rs = pstmt.executeQuery();
		   if(rs.next()){
			   map.put("id",rs.getString("id"));
			   map.put("name",rs.getString("name"));
			   map.put("ssn",rs.getString("ssn"));
			   map.put("phone",rs.getString("phone"));
			   map.put("email",rs.getString("email"));
			   map.put("major",rs.getString("major_id"));
			   map.put("regDate",rs.getString("regdate"));
			   map.put("profile",rs.getString("profile"));
		   }
		
	} catch (Exception e) {
	System.out.print("erro");
		e.printStackTrace();
	}
	
	return map;
} 
public List<Map<String,String>> getList (HttpServletRequest request){
	Map<String,String> map=null;
	List<Map<String,String>> list= new ArrayList<>();
		String name=request.getParameter("name");
	try {
		String sql="";
	    Class.forName(ORACLE_DRIVER);
		PreparedStatement pstmt=null;
		if(request.getParameter("action").equals("list")){
			pstmt=DriverManager.getConnection(ORACLE_URL,ID,PW).prepareStatement("SELECT * FROM Member");
		}else{
			pstmt= DriverManager.getConnection(ORACLE_URL,ID,PW).prepareStatement("SELCT * FROM Member WHERE name=?");
			pstmt.setString(1, name);
		}
		ResultSet rs= pstmt.executeQuery();
		
		while(rs.next()){
			map=new HashMap<>();
			map.put("id", rs.getString("id"));
			map.put("name",rs.getString("name"));
			map.put("email",rs.getString("email"));
			map.put("major",rs.getString("major_id"));
			map.put("phone",rs.getString("phone"));
			map.put("regDate",rs.getString("regdate"));
			list.add(map);
		}
		
	} catch (Exception e) {
	System.out.print("erro");
		e.printStackTrace();
	}
	return list;
	
}
public Map<String,String> serviceUpdate(HttpServletRequest request){
	Map<String,String> map= new HashMap<>();
		map.put("id",request.getParameter("id"));
		map.put("name",request.getParameter("name"));
	try{
		Class.forName(ORACLE_DRIVER);
		PreparedStatement pstmt=DriverManager.getConnection(ORACLE_URL,ID,PW).prepareStatement("UPDATE Member SET name=? WHERE id=?");
		pstmt.setString(1, map.get("name"));
		pstmt.setString(2, map.get("id"));
		map.put("result", String.valueOf(pstmt.executeUpdate()));
	} catch (Exception e){
		System.out.print("erro");
		e.printStackTrace();
	}
	return map;
}
public Map<String,String> deleteService(HttpServletRequest request){
	Map<String,String>map =new HashMap<>();
	String id=request.getParameter("id");
	try{
		Class.forName(ORACLE_DRIVER);
		PreparedStatement pstmt= DriverManager.getConnection(ORACLE_URL,ID,PW).prepareStatement("DELETE FROM MEMBER WHERE id=?");
		pstmt.setString(1,id);
		map.put("result", String.valueOf(pstmt.executeUpdate()));
	}catch(Exception e){
		System.out.print("erro");
		e.printStackTrace();
	}
	return map;
}



%>
