<%@page import="java.sql.*,java.util.*"%>
<%@ page import = "java.io.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String isGiven="false";
String isGiven1= (String) session.getAttribute("isGiven");
//System.out.println(isGiven1+"is");
if(isGiven1 =="true") {
		session.setAttribute("isGiven","false");
        isGiven="true";
    }
String branch = (String) session.getAttribute("branch");
String name = (String) session.getAttribute("name");
String sic = (String) session.getAttribute("sic");
if(sic==null){
	response.sendRedirect("log.jsp");
}
String sems = (String) session.getAttribute("sems");
Stack<String> STACK = new Stack<String>(); 
int i=0;
int count=0;
String subject;
try {
	Class.forName("com.mysql.jdbc.Driver");
    } 
catch (ClassNotFoundException e) {

	e.printStackTrace();
}
Statement statement = null;
ResultSet resultSet = null;
	try
	{ 

		java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/myquiz", "root", "");
		statement=conn.createStatement();
		
		String sql ="SELECT * FROM questiondb where branch='"+branch+"' and sems='"+sems+"'";
		resultSet = statement.executeQuery(sql);
		while(resultSet.next())
		{
			i=i+1;
			subject=resultSet.getString("paper");
			STACK.push(resultSet.getString("paper"));
			
		}
		while(resultSet.previous());

		resultSet.next();
      // System.out.println(resultSet.getString("sems"));
		System.out.println(resultSet.getString("paper"));
		session.setAttribute("sems",resultSet.getString("sems"));
		session.setAttribute("paper1",resultSet.getString("paper"));
	//	System.out.println(session.getAttribute("sems"));
      	resultSet.next();
		System.out.println(resultSet.getString("paper"));
		session.setAttribute("paper2",resultSet.getString("paper"));
		
	//	System.out.println(resultSet.getString("paper"));
		System.out.println(i);
		
		
		
	}
    catch(Exception e)
    {
    	System.out.print(e);
    	e.printStackTrace();
    }
	System.out.println(STACK);
	System.out.println(i);

	//changing  the stack string into array string
	Object[] arr = STACK.toArray();
%>


<!DOCTYPE html>
<html>
<head>
	<title>Dashboard || Quiz</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
	
  <script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.11"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  	<script> 
	         window.onload = function(){
                
                let isGivenTest = "<%=isGiven%>"
             
                if(isGivenTest  !== "false"){
                         swal({
                           title: "Selected Paper is Already Given",
                           text: "You can give one paper only once",
                           icon: "warning",
                           button: "close",
                          });
                }
             }
		</script>

</head>
<body>
 <header class="clearfix">
      <div class="container">
   
    <div class="header-right">
          <nav>
            <a class="myNavlink" href="guidelines.jsp">Quiz Guidelines</a>
            <a class="myNavlink" href="log.jsp">Logout</a>
          </nav>
        </div>
      </div>
    </header>
	<div class="container-fluid">
		
		<div class="row">
			<div class="col-md-4 col-sm-12 col-xs-12"></div>
			<div class="col-md-4 col-sm-12 col-xs-12">
			<div class="container-fluid">
					  
					   <h2> <span id="typed" class="element" style="margin-left: 22%; color: #fff;"></span> </h2>
					<div class="form-horizontal">
						<h1 style="color: white">Select Quiz</h1>
						<span>
							<div class="form-group ">
				
					             <% 
								   while(count<i)
								   {
								   %>
									<a href="startTest.jsp?testName=<%=arr[count]%>"> <button class="btn btn-primary"><p><%=arr[count] %></p></button> </a>
								<% 
								      count=count+1;
								   }
								   %>

								
							</div>
						</span>
					</div>
			</div>
			<div class="col-md-4 col-sm-12 col-xs-12"></div>
		</div>
	</div>
	<script>
	        let loginUser= "Welcome" + "  "+"<%=name%>"
            var options = {
 			 strings: [loginUser],
 			 typeSpeed: 200
			};
			var typed = new Typed('.element', options);
      
     </script>
</body>
</html>
