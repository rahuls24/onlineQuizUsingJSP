<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@ page import = "java.io.*"%>
<%@ page import = "javax.sql.*" %>
<%
//String id = request.getParameter("userId");



String sic=request.getParameter("sic");
String password=request.getParameter("password");
String name;
int flag=0;

try {
	Class.forName("com.mysql.jdbc.Driver");
	
} 
catch (ClassNotFoundException e) 
{
e.printStackTrace();
}

Statement statement = null;
ResultSet resultSet = null;
	try
	{ 

		java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/myquiz", "root", "");
		statement=conn.createStatement();
		
		String sql ="SELECT * FROM users where sic='"+sic+"'";
		resultSet = statement.executeQuery(sql);
		if(resultSet.next()){
			if(password.equals(resultSet.getString("password"))){
				session.setAttribute("branch",resultSet.getString("branch"));
				session.setAttribute("name",resultSet.getString("name"));
				session.setAttribute("sic",resultSet.getString("sic"));
				session.setAttribute("sems",resultSet.getString("sems"));
				out.println("success");
				session.setAttribute("question_passed",0);
				session.setAttribute("correct_answer",0);
				response.sendRedirect("dashboard.jsp");
			} else{
				session.setAttribute("loginPErrMsg","true");
				response.sendRedirect("log.jsp");
        		}
       
	}
		else{
		   		session.setAttribute("loginIdErrMsg","true");
	        	response.sendRedirect("log.jsp");

	   		}
		
	}
    catch(Exception e)
    {
    	System.out.print(e);
    	e.printStackTrace();
    }
%>
