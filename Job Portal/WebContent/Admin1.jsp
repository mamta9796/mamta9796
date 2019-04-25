<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<head>
  <title>Job portal</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
 
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
		<ul class="nav navbar-nav navbar-right">
    <li ><a class="dropdown-toggle" data-toggle="dropdown" style=margin-right:100px;color:black>Welcome : ${sessionScope.admin.fName}  ${sessionScope.admin.lName}<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="viewEmployees">View All Employees</a></li>
          <li><a href="viewUser">View All User</a></li>
             <li><a href="changeAdminPassword.jsp">Change Password</a></li>
          <li><a href="homepage.jsp"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
        </ul>
      </li>      
    </ul>                     
   
     <div class="img3">
    <img src="images//a1.jpg" width=100% height="400px"/><br>     

 <h1 style="margin-left:-755px; margin-top:-345px;color:orange"> Hire The Right Talent With Right Skills </h1>
 </div>
 
<div>	     
<h5 style="margin-top:350px; margin-left:80px;">If you are looking for any information, please feel free to contact us. We will be glad to help.<h5>
<br><div class="print_icon"  style="margin-left:380px; ">
<a href="recruiter.html" class="btn btn-success btn-lg" style="color:blue";>
    <span class="glyphicon glyphicon-phone" style="color:white"; ></span>881-306-0213   
  </a>
</p>
</div>

<div class="print_icon"  style="margin-left:100px; margin-top:-55px; ">
<a href="recruiter.jsp" class="btn btn-success btn-lg" style="color:blue";>
    <span class="glyphicon glyphicon-envelope" style="color:white"; ></span>  jobroute@gmail.com
     
  </a>
</p>
</div>
</div>
</body>
</html>
