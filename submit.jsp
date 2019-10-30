<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@ page import = "java.io.*"%>
<%@ page import = "javax.sql.*" %>
<%
int question_passed = (Integer) session.getAttribute("question_passed");
int value = (Integer) session.getAttribute("correct_answer");
String branch = (String) session.getAttribute("branch");
String name = (String) session.getAttribute("name");
String sic = (String) session.getAttribute("sic");
String paper = (String) session.getAttribute("currentP");

try{
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/myquiz", "root", "");
	//	System.out.println("Connection succesful");
	Statement st=conn.createStatement();
	int i=st.executeUpdate("insert into marks(name,sic,paper,marks,branch)values('"+name+"','"+sic+"','"+paper+"','"+value+"','"+branch+"')");
	System.out.println(i);
}	
	catch(Exception e)
     {
        System.out.print(e);
        e.printStackTrace();
     }
 

%>
<!DOCTYPE html>
<html>
<head>
	<title>Rasult || Quiz</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	 <script src="animation.js" ></script>
</head>
<body>
	 <canvas id="confeti" width="300" height="300" class="active">
  

</canvas>
      
	<div class="container-fluid temp animated bounceInDown">
		<div class="row">
			<div class="col-md-4 col-sm-4 col-xs-12"></div>
			<div class="col-md-4 col-sm-4 col-xs-12">
				<div class="form-horizontal">
					<div class="form-group">
						<img src="https://cdn1.iconfinder.com/data/icons/color-bold-style/21/34-512.png" style="height: 150px;">
						<br>
			            <label class="control-label" >Total Questions <% out.println(question_passed); %></label>
			         </div>

			         <div class="form-group">
			            <label class="control-label" > Correct Answers <% out.println(value); %></label>
			         </div>
			         <a href="log.jsp"><button class="btn btn-danger">Log Out</button></a>
				</div>
			</div>
			<div class="col-md-4 col-sm-4 col-xs-12"></div>
		</div>
	</div>
	 <script src="animation.js" ></script>
</body>
</html>
