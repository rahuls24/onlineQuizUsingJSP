<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@ page import = "java.io.*"%>
<%@ page import = "javax.sql.*" %>
<%
    String fName=request.getParameter("fName");
    String Name=request.getParameter("lName");
    String email = request.getParameter("email");
	String redgno=request.getParameter("redgNo");
	String password=request.getParameter("password");
	String branch=request.getParameter("branch");
    String sems=request.getParameter("sems");
    String university=request.getParameter("universityName");
    String sic= "170310430";
	try
{
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/myquiz", "root", "");
Statement st=conn.createStatement();

//int i=st.executeUpdate("insert into users(name,sic,redgno,password,branch,sems)values('"+fName+"','"+university+"','"+redgno+"','"+password+"',+branch+"','"+sems+"')");
out.println("Data is successfully inserted!");
	
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
String redirectURL = "../HTML/login.html";
	response.sendRedirect(redirectURL);

%>