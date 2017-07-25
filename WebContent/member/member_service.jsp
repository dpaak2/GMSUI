<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
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
%>
