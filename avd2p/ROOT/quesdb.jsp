<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@ page import = "java.io.*"%>
<%@ page import = "javax.sql.*" %>
<%
	String branch=request.getParameter("branch");
	String sems=request.getParameter("sems");
	String paper=request.getParameter("paper");
	session.setAttribute("adminBranch",branch);
	session.setAttribute("adminSems",sems);
	session.setAttribute("adminPaper",paper);
	String ques=request.getParameter("ques");
	String ans1=request.getParameter("ans1");
	String ans2=request.getParameter("ans2");
	String ans3=request.getParameter("ans3");

	String cans=request.getParameter("cans");
	try {
	      Class.forName("com.mysql.jdbc.Driver");
		  java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/myquiz", "root", "");
	      out.print("Connection succesful");
	      Statement st=conn.createStatement();
	       out.print("Inserting");
	       // TODO Save the qsn to db 
         int i=st.executeUpdate("insert into qsn(branch,sems,paper,ques,ans1,ans2,ans3,cans)values('"+branch+"','"+sems+"','"+paper+"','"+ques+"','"+ans1+"','"+ans2+"','"+ans3+"','"+cans+"')");
         String redirectURL = "addmore.jsp";
	      response.sendRedirect(redirectURL);
	    } 

    catch (ClassNotFoundException e) 
        {
          e.printStackTrace();
    
		}
	// conn.close();
	
%>