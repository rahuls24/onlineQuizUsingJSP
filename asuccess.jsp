<%@page import="java.sql.*,java.util.*"%>
<%@ page import = "java.io.*"%>

<%
 int adminId;
 adminId = Integer.parseInt(request.getParameter("sic"));
 String password;
 password=request.getParameter("password");
if(adminId==170){
			response.sendRedirect("http://localhost:8080/questionmake.jsp");
}else{
         response.sendRedirect("http://localhost:8080/alog.jsp");
}

%>