<!DOCTYPE html>
<html>
<head>
	<title>Question Maker</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
</head>
<body>
	 <header class="clearfix">
      <div class="container">
   
    <div class="header-right">
          <nav>
            <a class="myNavlink" href="log.jsp">Logout</a>
          </nav>
        </div>
      </div>
    </header>


	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3 col-sm-4 col-xs-12"></div>
			<div class="col-md-6 col-sm-4 col-xs-12">
				<!--Start-->
				<form class="form-horizontal" method="POST" action="quesdb.jsp">
					<h1 style="color: white;"> Make Questions </h1>
					<div class="form-group custom-form" style="color: white;">
						<label class="control-label">Branch:</label> <br>
						<input type="radio" name="branch" value="CSE" UNchecked>CSE
	  					<input type="radio" name="branch" value="EEE">EEE
	  					<input type="radio" name="branch" value="ECE">ECE
					    <input type="radio" name="branch" value="EIE">EIE
	  					<input type="radio" name="branch" value="IT"> IT 
	  					<input type="radio" name="branch" value="MCA"> MCA
  					</div>
  					<div class="form-group custom-form">
  						<label class="control-label">Semester:
  						<div class="dropdown">
						 <select name="sems" class="btn btn-info btn-block">
						 	<option>1</option>
						 	<option>2</option>
						 	<option>3</option>
						 	<option>4</option>
						 	<option>5</option>
						 	<option>6</option>
						 	<option>7</option>
						 	<option>8</option>
						 </select>
						</div>
					</label>
  					</div> 
					  <div class="form-group">
						<label class="control-label">Subject:</label>
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Subject" name="paper">
						</div>
					</div>
  				
					<div class="form-group">
						<label class="control-label">Question:</label>
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Question" name="ques">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label">Option 1:</label>
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Option 1" name="ans1">
						</div>
					</div>
  					<br/>
  					<div class="form-group">
						<label class="control-label">Option 2:</label>
						<div class="input-group">
							<input type="text" class="form-control" placeholder="option 2" name="ans2">
						</div>
					</div>
  					<br/>
  					<div class="form-group">
						<label class="control-label">Option 3:</label>
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Option 3" name="ans3">
						</div>
					</div>
  					
					<div class="form-group custom-form" style="color: white;">
						<label class="control-label">Correct Answer:</label> <br>
						<input type="radio" name="cans" value="1" UNchecked>Option 1
	  					<input type="radio" name="cans" value="2">Option 2
	  					<input type="radio" name="cans" value="3">Option 3
					   
  					</div>
  					<br/>
				<div class="form-group custom-form">
					<input type="submit" value="Submit" class="btn btn-success ">
					<input type="reset" value="RESET" class="btn btn-warning ">
					
  				</div>
				</form></div>
				<div class="col-md-3 col-sm-4 col-xs-12"></div>
			</div></div>
</body>