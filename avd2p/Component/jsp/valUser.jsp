<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@ page import = "java.io.*"%>
<%@ page import = "javax.sql.*" %>
<%
  
	String redgno=request.getParameter("redgNo");
    String password=request.getParameter("password");
  

	try
{
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/myquiz", "root", "");
Statement st=conn.createStatement();

String sql ="SELECT * FROM users where REGDNO='" + redgno + "'";
ResultSet resultSet = st.executeQuery(sql);
if(resultSet.next()){
    if(password.equals(resultSet.getString("PASSWORD"))){

out.println("success");

response.sendRedirect("http://localhost:8080/index.html");
} else{
response.sendRedirect("http://localhost:8080/test/log.jsp");
}
	
}
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}


%>