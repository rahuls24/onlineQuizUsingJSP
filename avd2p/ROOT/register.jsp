<%@page import="java.sql.*,java.util.*"%>
<%@ page import = "java.io.*"%>
<% 
    
    //boolean errMsg = false;
	String errMsg ="false";
	String errMsg1 = (String) session.getAttribute("errMsg");
	if(errMsg1== "true"){
		errMsg= "true";
		session.invalidate(); 
	}
%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link
      href="https://fonts.googleapis.com/css?family=Roboto:400,700"
      rel="stylesheet"
    />
    <title>Sign Up</title>
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
    />
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
    />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="./assets/css/signup.css" />
     <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script> 
	         window.onload = function() {
                let reloading = "<%=errMsg%>"
				
				console.log(reloading)
                 if (reloading !== "false") {
				                	swal({
                         
                           title: "Invalid Credentials !",
                           text: "User is already register......",
                           icon: "warning",
                           button: "Enter again",
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
            
            <a class="myNavlink" href="index.html">Home</a>
            
          </nav>
        </div>
      </div>
    </header>
    <div id="particles-js">
      <div class="signup-form">
        <form action="test.jsp" method="post" >
          <h2>Register</h2>
          <p class="hint-text">
            Create your account. Account Is Necessary To Give Any Quiz.
          </p>
          <div class="form-group">
            <input
              type="text"
              class="form-control"
              name="name"
              placeholder="Enter Your Name"
              required="required"
            />
          </div>

          <div class="form-group">
            <div class="row">
              <div class="col-xs-6">
                <input
                  type="text"
                  class="form-control"
                  name="sic"
                  placeholder="SIC"
                  required="required"
                />
              </div>
              <div class="col-xs-6">
                <input
                  type="text"
                  class="form-control"
                  name="redgno"
                  placeholder="Registration No"
                  required="required"
                />
              </div>
              <div class="form-group">
                <span><p></p></span>
              </div>
            </div>
          </div>
          
          <div class="form-group">
            <input
              type="password"
              class="form-control"
              name="password"
              placeholder="Password"
              required="required"
            />
          </div>
          <div class="form-group">
            <input
              type="password"
              class="form-control"
              name="confirm_password"
              placeholder="Confirm Password"
              required="required"
            />
          </div>
          <div class="form-group">
            <div class="row">
              <div class="col-xs-6">
                <input
                  type="text"
                  class="form-control"
                  name="branch"
                  placeholder="Branch"
                  required="required"
                />
              </div>
              <div class="col-xs-6">
                <input
                  type="text"
                  class="form-control"
                  name="sems"
                  placeholder="Semester"
                  required="required"
                />
              </div>



              <div class="form-group">
                <span><p></p></span>
              </div>
            </div>
          </div>
          
          

          <div class="form-group">
            <button type="submit" class="btn-grad">
              Register Now
            </button>
          </div>
          <div>
              <a href="log.jsp" id="signInLink"  >Sign In Instead ?  </a>
            </div>
          </div>
        </div>
        </form>
        
      </div>
    </div>
     <script src="c./assets/backgroundEffect/particles.js"></script>
    <script src="c./assets/backgroundEffect/app.js"></script>
  </body>
</html>

