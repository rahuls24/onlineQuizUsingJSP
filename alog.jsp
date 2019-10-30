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
    <title> Admin || Login</title>
  </head>
  <body>
   <header class="clearfix">
      <div class="container">
   
    <div class="header-right">
          <nav>
            <a class="myNavlink" href="log.jsp">User Login</a>
          </nav>
        </div>
      </div>
    </header>
   <div id="particles-js">
      <div class="main">
        <p class="sign" align="center">Sign in</p>
        <form class="form1" action="http://localhost:8080/asuccess.jsp">
          <input
            class="un "
            type="text"
            align="center"
            placeholder="Enter Admin ID"
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
           	 
      </div>
    </div>
    <script src="c./assets/backgroundEffect/particles.js"></script>
    <script src="c./assets/backgroundEffect/app.js"></script>
  </body>
</html>
