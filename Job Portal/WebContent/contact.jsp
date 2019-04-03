<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>JOB PORTAL</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
 
 
 <style>
    	        ul#menu{
		padding:20px;
		width:100%;
		background-color:blue;
                
		}
		ul#menu li{
		display:inline
		}
		ul#menu li a{
		background-color:blue;
		color:white;
		text-decoration:none;
		padding:10px;
		margin-right:5px;
		}
		ul.dropdown-menu li{
		display:inline
		}
         ul.dropdown-menu a{
		 background-color:white;
		color:blue;
		text-decoration:none;
		padding:10px;
		margin-right:5px;
		 
		 }
 
     div.img1{
        position:absolute;
        top:5px;
       left:10px;
       
     }
        div.img2{
        position:absolute;
        left:200px;
        width:85%;
}

 div.img3{clear:both;
        margin-left:-850px;
        margin-right:6px;
        margin-top:20px;		
      
}



.login-page {
  width: 360px;
  padding: 1% 0 0;
  margin: auto;
}
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 50px;
  padding: 35px;
  text-align: 
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
#address        {
                 padding: 20px;   	
}
.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 7px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: blue;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  cursor: pointer;
}
.form button:hover,.form button:active,.form button:focus {
  background: #43A047;
}
.form .message {
  margin: 15px 0 0;
  color: #b3b3b3;
  font-size: 12px;
}
.form .message a {
  color: blue;
  text-decoration: none;
}
body {
 background-image: url("");
 background-repeat: no-repeat;
 background-position: center;
 background-size: cover; 
}

 </style>
 </head>
 
<body>
 <div class="container">
    <div class="img1">
    <img src="images//a.jpeg" width="200px" height="55px"/></div>
</div>
	
   <div class="img2">
                <ul id="menu">
				<li class="active"><a href="">Home</a></li>
				<li><a href="AboutUs.jsp">About Us</a></li>
                 <li><a href="#">Hiring plans</a></li>
                 <li><a href="homepage.jsp">job seekers?</a></li>		                               
		</ul></div>
		<div class="contect" style="margin-left:900px; margin-top:3px;position:absolute;">
        123-456-7890
		</div>
		<div class="email" style="margin-left:900px; margin-top:20px;position:absolute; color:pink;">	
	<a href="#">jobroute@gmail.com</a></div>
 
   
<div class="print_icon"  style="margin-left:1100px; margin-top:10px;  position:absolute;">
<a href="recruiter.html" class="btn btn-success btn-lg" style="color:blue";>
    <span class="glyphicon glyphicon-user" style="color:white"; ></span> Recruiter Login
  </a>

</div>

     <div class="img3"> 
    <img src="images//cont1.jpg" width=68% height="300px" style="margin-top:43px;margin-left:710px;"/><br>  
</div>	
  
   

<div class="container">
 <div class="row" >
    <div class="col-md-6" >
    <h4 style="margin-left:-80px; margin-top:30px;">     For any queries please call us between 
	9 am to 6 pm (Monday - Saturday)</h4></div><br><br><br><br><br>
	
<div class="print_icon" style="margin-left:-50px; ">
<a href="#" class="btn btn-success btn-lg" style="color:blue";>
   <span class="glyphicon glyphicon-phone" style="color:white; "></span> 881-306-0213   
  </a></div>

<div class="print_icon" style=" margin-top:-47px; " >
<a href="#" class="btn btn-success btn-lg" style=" margin-left:150px; color:blue";>
    <span class="glyphicon glyphicon-envelope" style="color:white;" ></span> jobroute@gmail.com
     
  </a>
</div><br><br>

<div class="img4" style="margin-top:90px;"> 
    <img src="images//cont2.jpeg" width=45% height="300px" /><br>  
</div>	
  
<div class="col-md-6" >

  <div class="form" style=" margin-right:-500px; margin-top:-550px; background-color:orange; ">
    
    <form class="login-form" >
	  <label style="text-align:left"><h2>Suggestion or feedback</h2></label><br>
<label>We value your suggestions. Please select any one of the three options below, describe your query or suggestion and send it to us. We will reply as soon as possbile. </label><br>
	  <label><strong>Your Name</label>
      <input type="text" required placeholder="User Name"/>
	  <label>Mobile Number</label>
	  <input type="tel" id="phone" name="phone" placeholder="123-456-7890"
       pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}"
       required>
	   <label>Email</label><br>
	   <input type="email" name="email" required   oninvalid="this.setCustomValidity('Email is a must')" placeholder="Email ID"/>
	   
	   <label>Description</label>
	  <input type="tel" id="phone" name="phone" placeholder="Description"/>
	  <div class="radio">
	  <div class="form-check-inline">
      <label class="form-check-label" for="radio1">
        <input type="radio" class="form-check-input" id="radio1" name="optradio" value="option1" checked> <b>Candidate</b>
      </label>
    </div>
    <div class="form-check-inline">
      <label class="form-check-label" for="radio2">
        <input type="radio" class="form-check-input" id="radio2" name="optradio" value="option2"> <b>Recruiter </b>
      </label>
    </div>
	</div>
      
	  
      <button>Submit</button>
    </form>
  </div>
</div>
</div>
</div>

<div style="margin-top:200px">
<jsp:include page="Footer.jsp"/>
</div>