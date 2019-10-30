<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@ page import = "java.io.*"%>
<%@ page import = "javax.sql.*" %>
<%
    Boolean isPresent = false;
	String name=request.getParameter("name");
	String sic=request.getParameter("sic");
	String redgno=request.getParameter("redgno");
	String password=request.getParameter("password");
	String branch=request.getParameter("branch");
	String sems=request.getParameter("sems");
	try{
		Class.forName("com.mysql.jdbc.Driver");
		java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/myquiz", "root", "");
	//	System.out.println("Connection succesful");
		Statement st=conn.createStatement();
     
		//Checking condition is user is already resister 

		String sql ="SELECT * FROM users where sic='"+sic+"'";
		ResultSet resultSet = st.executeQuery(sql);
		if(resultSet.next()){
			session.setAttribute("errMsg","true");
			String redirectURL = "register.jsp";
	    	response.sendRedirect(redirectURL);
		}
		else {
		//	System.out.println("Inserting");
			int i=st.executeUpdate("insert into users(name,sic,redgno,password,branch,sems)values('"+name+"','"+sic+"','"+redgno+"','"+password+"','"+branch+"','"+sems+"')");
			session.setAttribute("isRegister","true");
			String redirectURL = "log.jsp";
			response.sendRedirect(redirectURL);
			}

			// closing the DB connection
			conn.close();
		}

	
	catch(Exception e)
     {
        System.out.print(e);
        e.printStackTrace();
     }

%>