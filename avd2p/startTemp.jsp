<!DOCTYPE html>
<html>
<head>
  <title>Quiz Time</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="assets/css/style.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <script>
    function startTimer(duration, display) {
        var timer = duration, minutes, seconds;
        setInterval(function () {
            minutes = parseInt(timer / 60, 10)
            seconds = parseInt(timer % 60, 10);

            minutes = minutes < 10 ? "0" + minutes : minutes;
            seconds = seconds < 10 ? "0" + seconds : seconds;

            display.textContent = minutes + ":" + seconds;

            if (--timer < 0) {
                timer = duration;
                var url= "http://localhost:8080/timeup.jsp"; 
                window.location = url;
            }
        }, 1000);
    }

    window.onload = function () {
        var fiveMinutes = 60 * 1,
            display = document.querySelector('#time');
        startTimer(fiveMinutes, display);
    };
  </script>
</head>
<body>
 

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
     %>

     <%! String ques,ans1,ans2,ans3; %>
    <%
	//
   // String branch = (String) session.getAttribute("branch");
    String branch = "CSE";
    String paper = "ENGLISH";
    try {
	          Class.forName("com.mysql.jdbc.Driver");
         } 
    catch (ClassNotFoundException e) 
        {
            e.printStackTrace();
        }




    
      java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/myquiz", "root", ""); 
  
    Statement stat = conn.createStatement();
    String query = "SELECT * FROM qsn where paper='"+paper+"';";
    ResultSet rs = stat.executeQuery(query);

    int question_passed = (Integer) session.getAttribute("question_passed");

    while(q_index <= question_passed){
      if (!rs.next()){
        flag = 1;
      }
      q_index ++;
    }
    if(flag !=1){
      session.setAttribute("cans", rs.getString("cans"));
      System.out.println(rs.getString("cans"));
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
       <form class="form-horizontal" action="" method="post" name="theForm">

        <div class="form-group">
            <label class="control-label" >Question : <%=ques%></label>
          </div>
          <div class="form-group">
            <label class="control-label" >Option A: <%=ans1%></label>
          </div>

          <div class="form-group">
            <label class="control-label" >Option B: <%=ans2%></label>
          </div>

          <div class="form-group">
            <label class="control-label" >Option C: <%=ans3%></label>
          </div>

         


        <div class="form-group custom-form">
              <label class="control-label">Answer:
              <div class="dropdown">
             <select name="ans" class="btn btn-info btn-block">
            <option value='1'> A </option>
            <option value='2'> B </option>
            <option value='3'> C </option>
         
          </select>
        </div></label></div>

       
        <br>

    <button type="submit" class="btn btn-primary" formaction="http://localhost:8080/next.jsp">Next Question </button>
    <button type="button" class="btn btn-success" onclick="window.open('http://localhost:8080/submit.jsp','_self')"> Final Submit </button>

  </form></div></div></div></div>

   </body>
</html>
