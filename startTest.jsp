<%
     String sic = (String) session.getAttribute("sic");
      // System.out.println(sic+"24");
       if(sic==null){
         response.sendRedirect("log.jsp");
         // System.out.println("msg from startTest");
	        
         // System.out.println("msg after startTest");
       }
       

       %>


<!DOCTYPE html>
<html>
<head>
  <title>Quiz Time</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="./assets/css/qsn.css" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

</head>
<body>
 
<header class="clearfix">
      <div class="container">
   
    <div class="header-right">
          <nav>
            
            <a class="myNavlink" href="guidelines.jsp">Quiz Guidelines</a>
            <a class="myNavlink" href="alog.jsp">Admin Login</a>
          </nav>
        </div>
      </div>
    </header>
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-2 col-sm-12 col-xs-12">
      </div>
      <div class="col-md-8 col-sm-12 col-xs-12">
        <div class="container-fluid">
      
     <%@ page import="java.io.File" %>
     <%@ page import="java.sql.*" %>

     <%
     int q_index = 0;
     int flag =0;
     int qsnCount = 0;
     %>

     <%! String ques,ans1,ans2,ans3; %>
    <%
	//
 
    String paper = (String)request.getParameter("testName");
    //String sic = (String) session.getAttribute("sic");
    session.setAttribute("currentP",paper);
    String sems = (String) session.getAttribute("sems");
    System.out.println(paper);
    try {
	        Class.forName("com.mysql.jdbc.Driver");
        } 
    catch (ClassNotFoundException e) 
        {
            e.printStackTrace();
        }




    
      java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/myquiz", "root", ""); 
  
    Statement stat = conn.createStatement();
    String query0 = "SELECT * FROM marks where paper='"+paper+"' and sic='"+sic+"';";
    ResultSet rs0 = stat.executeQuery(query0);
    if(rs0.next()){
      session.setAttribute("isGiven","true");
      response.sendRedirect("dashboard.jsp");
    }
    String query = "SELECT * FROM qsn where paper='"+paper+"' and sems='"+sems+"';";
    ResultSet rs = stat.executeQuery(query);
    	while(rs.next())
		{
			qsnCount= qsnCount+1;
		
			
		}
		while(rs.previous());

    int question_passed = (Integer) session.getAttribute("question_passed");

      session.setAttribute("qsnNum",qsnCount);
     

    while(q_index <= question_passed){
      if (!rs.next()){
        flag = 1;
      }
      q_index ++;
    }
    if(flag !=1){
      session.setAttribute("cans", rs.getString("cans"));
     
      ques = (String) rs.getString("ques");
      ans1 = (String) rs.getString("ans1");
      ans2 = (String) rs.getString("ans2");
      ans3 = (String) rs.getString("ans3");
     // ans4 = (String) rs.getString("ans4");
      rs.close();
      conn.close();

    } else{
      //response.sendRedirect("final_submit.jsp");
    }
      %>
       <form class="" action="" method="post" name="theForm">

        <div class="card">
            <label>Question <%=q_index%> : <%=ques%></label> 
          
          </div>
          <div class="card1">
        <input type="radio" name="ans"  value= "1" />    <label class="" > <%=ans1%></label>
          </div>

          <div class="card1">
          <input type="radio" name="ans"  value= "2" />   <label class="" > <%=ans2%></label>
          </div>

          <div class="card1">
          <input type="radio" name="ans"  value= "3" />   <label class="" > <%=ans3%></label>
          </div>

         



       
        <br>

   
   
   
    <button type="button" class="btn btn-primary submitBtn" onclick="window.open('http://localhost:8080/submit.jsp','_self')"> Final Submit </button>
      <button type="submit" class=" btn btn-primary nextBtn" formaction="http://localhost:8080/next.jsp?testName=<%=paper%>">Next Question </button> 
  </form></div></div></div></div>

   </body>
</html>
