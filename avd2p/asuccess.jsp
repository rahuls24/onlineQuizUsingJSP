<%@page import="java.sql.*,java.util.*"%>
<%@ page import = "java.io.*"%>

<%

String sic=request.getParameter("sic");
String password=request.getParameter("password");
if(sic=="admin"){
	
	response.sendRedirect("http://localhost:8080/questionmake.jsp");
}
else{
	response.sendRedirect("http://localhost:8080/questionmake.jsp");
//response.sendRedirect("http://localhost:8080/test/.jsp");	
}

%>