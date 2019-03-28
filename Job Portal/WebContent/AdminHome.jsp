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
      
} </style>
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
   <div class="contect" style="margin-left:700px; margin-top:3px;position:absolute;">
        123-456-7890
		</div>
	<div class="email" style="margin-left:700px; margin-top:20px;position:absolute; color:black;">	
	<a href="#">jobroute@gmail.com<a>
   
   
   </p>
<div class="print_icon"  style="margin-left:200px; margin-top:-40px;  position:absolute;">
<a href="login.jsp" class="btn btn-success btn-lg" style="color:blue";>
    <span class="glyphicon glyphicon-user" style="color:white"; ></span> Recruiter Login
  </a>
  
</p>
</div>
<div class="print_icon"  style="margin-left:400px; margin-top:-40px;  position:absolute;">
<a href="EmployerRegister.jsp" class="btn btn-success btn-lg" style="color:blue";>
    <span class="glyphicon glyphicon-user" style="color:white"; ></span> Recruiter Register
  </a>
</p>
</div>

     <div class="img3">
    <img src="images//a1.jpg" width=100% height="400px"/><br>     

 <h1 style="margin-left:-755px; margin-top:-345px;color:orange"> Hire The Right Talent With Right Skills </h1>
 </div>
 
<div class="signin"   >
<div class="Submit" >
<br><br><br>
<div class="Submit"  >
<a href="#"><input  type="submit" value="Post a Job for Almost Free"  style="width:350px; height:50px; background-color:orange; color:white;"></a>
</div><br>

</div>
<div>	     
<h5 style="margin-top:200px; margin-left:-690px;">If you are looking for any information, please feel free to contact us. We will be glad to help.<h5>
<br><div class="print_icon"  style="margin-left:-690px; ">
<a href="recruiter.html" class="btn btn-success btn-lg" style="color:blue";>
    <span class="glyphicon glyphicon-phone" style="color:white"; ></span>881-306-0213   
  </a>
</p>
</div>

<div class="print_icon"  style="margin-left:-500px; margin-top:-55px; ">
<a href="recruiter.jsp" class="btn btn-success btn-lg" style="color:blue";>
    <span class="glyphicon glyphicon-envelope" style="color:white"; ></span>  jobroute@gmail.com
     
  </a>
</p>
</div>
<br>

 <div style="margin-left:100px margin-top:200px">
<jsp:include page="Footer.jsp"/>
</div>