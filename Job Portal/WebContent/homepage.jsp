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
          div.print_icon{
                position:absolute;
                top:10px;
                left:1200px;
                
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
      div#myCarousel{ 
       	  
        width:1338px;
        height:340px;
	   margin-left:10px;
       margin-right:10px;
       margin-top:70px	;   	      
      

}
          div.job_search{ 
                 margin-left:800px;
                 margin-bottom:65px;
}
      div.img3{clear:both;
        margin-left:10px;
        margin-right:1px;
        margin-top:60px;		
      
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
                 <li><a href="contact.jsp">Contact Us</a></li>
                                <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Search jobs
				<span class="caret"></span></a>
                                <ul class="dropdown-menu">
				<li><a href="#">Jobs in top cities </a></li>
				<li><a href="#">Jobs by Skills</a></li>
                                <li><a href="#">Jobs by Courses</a></li>
                                <li><a href="#">Jobs by Education</a></li>
                                <li><a href="#">Jobs by Designation</a></li>
				</ul>
				</li>
                                 <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Career Info
				<span class="caret"></span></a>
                                <ul class="dropdown-menu">
				<li><a href="#">Interview Preparation </a></li>
				<li><a href="#">Resume article</a></li>
                                <li><a href="#">Top companies</a></li>
                              	</ul>
				</li>
                                  <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Resume Article
				<span class="caret"></span></a>
                                <ul class="dropdown-menu">
				<li><a href="#">Resume Format</a></li>
                                </ul>
				</li>
			                               
		</ul></div>

</p>
<div class="print_icon" >
<a href="AdminHome.jsp" class="btn btn-success btn-lg" style="color:blue";>
    <span class="glyphicon glyphicon-user" style="color:white"; ></span> Recruiter 
  </a>
</p>
</div>
	
                <div class="img3">
    <img src="images//b1.jpeg" width=100% height="400px"/></div><br>     

 <div class="container">
      
        <div class="dark">
    	   <form role="Job search" style="width: 380px; margin-top:-280px;margin-left:190px;">
			 
    <div class="input-group">
        <input type="text" class="form-control" placeholder="Search">
        <div class="input-group-btn">
            <button type="submit" class="btn btn-default">
                <span class="glyphicon glyphicon-search"></span>
            </button> 
        </div>
    </div>
</form> 
        
    </div>
</div>

<div class="signin"  style= margin-top:-300px;margin-left:900px;"  >
<div class="Submit"  >
<a href="UserSignUp.jsp"><input  type="submit" value="Sign Up"  style="width:350px; height:50px;"></a>
</div><br>
<h5 style="color:blue;">
-----------------------------------or-----------------------------------<h5><br>
<div class="Submit"  >
<a href="login.jsp"><input  type="submit" value="Login"  style="width:350px; height:50px;"></a>
</div><br>
</div>


<br>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
   <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <div class="carousel-inner" style="margin-top:70px;" >
    <div class="item active ">
      <img src="images//g.jpeg"    width=100% height="300px">
    </div>

    <div class="item">
      <img src="images//d.jpeg"  width=100% height="300px">
    </div>

    <div class="item">
      <img src="images//b.jpeg"   width=100% height="300px">
    </div>
   <div class="item">
      <img src="images//f.jpeg"   width=100% height="300px" >
    </div>
    </div>  
 
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>


<div style="margin-top:300px">
<jsp:include page="Footer.jsp"/>
</div>
