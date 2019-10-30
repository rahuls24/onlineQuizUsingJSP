      <% 
    	 String errMsgPass ="false"; 
    	 String errMsgId ="false";
       String isRegister = "false";
       String isRegister1 = (String) session.getAttribute("isRegister");
       String errMsgPass1 = (String) session.getAttribute("loginPErrMsg");
       String errMsgId1 = (String) session.getAttribute("loginIdErrMsg");
       if(isRegister1 =="true") {
         isRegister="true";
       }
       if(errMsgPass1== "true" || errMsgId1=="true"){
           if(errMsgPass1 =="true"){
	          	errMsgPass= "true";
           }
           else{
             errMsgId="true";
           }
	       	session.invalidate();
	       }
         else{
         	session.invalidate(); 

         }
      %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
 
    <link
      href="https://fonts.googleapis.com/css?family=Ubuntu"
      rel="stylesheet"
    />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link
      rel="stylesheet"
      href="path/to/font-awesome/css/font-awesome.min.css"
    />
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
    />
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
    />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="./assets/css/login.css" />
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    	<script> 
	         window.onload = function() {
                
                let isPassInvalid = "<%=errMsgPass%>"
                let isIdInvalid = "<%=errMsgId%>"
                let isRegisterSuc = "<%=isRegister%>"
                if(isRegisterSuc  !== "false"){
                         swal({
                           title: "Register Successfully !",
                           text: "Press Login Button For Signin.....",
                           icon: "success",
                           button: "Login",
                          });

                }
                 if (isPassInvalid  !== "false" || isIdInvalid  !== "false") {
                   if(isPassInvalid  !== "false"){
					    
                	    swal({
                         
                           title: "Invalid Credentials !",
                           text: "Enter the correct password.....",
                           icon: "error",
                           button: "Enter again",
                          });
              
                   }
                   
                   else{
                    
                    	swal({
                         
                           title: "Invalid Credentials !",
                           text: "SIC is not register......",
                           icon: "error",
                           button: "Enter again",
                          });

                   }
      
                 }
             }
		</script>
    <title>Login</title>
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

     





    <div id="particles-js">
      <div class="main">
        <p class="sign" align="center">Sign in</p>
        <form class="form1" action="http://localhost:8080/lsuccess.jsp">
          <input
            class="un "
            type="text"
            align="center"
            placeholder="Enter SIC No"
			name="sic"
          />
          <input
            class="pass"
            type="password"
            align="center"
            placeholder="Enter Password"
			name="password"
          />
          <button type="submit" class="btn-grad"> Sign In</button>
		  <br />
	
          
        </form>
           	  <a  href="register.jsp" >  <p class="sign1" align="center">Register ?</p>  </a>
      </div>
    </div>
    <script src="c./assets/backgroundEffect/particles.js"></script>
    <script src="c./assets/backgroundEffect/app.js"></script>
  </body>
</html>
