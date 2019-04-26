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
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Job Portal</a>
    </div>
    <ul class="nav navbar-nav" >
      <li><a href="#">Home</a></li>
      <li><a href="AboutUs.jsp">About Us </a></li>
      <li><a href="contact.jsp">Contact Us </a></li>
      <li><a href="UserEducationalDetail.jsp">Add Education Detail </a></li>
      <li><a href="UploadUserResume.jsp">Upload Resume </a></li>
                       
                                  <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Resume Article
				<span class="caret"></span></a>
                                <ul class="dropdown-menu">
				<li><a href="#">Resume Format</a></li>
                                </ul>
				</li>
		<ul class="nav navbar-nav navbar-right">
    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#" style=margin-left:400px>Welcome : ${sessionScope.user.name}<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="UserViewProfile.jsp">View Profile</a></li>
          <li><a href="viewResume">View Resume</a></li>
           <li><a href="ViewEducation">View Educational Detail</a></li>
          <li><a href="UserUpdateProfile.jsp">Update Profile</a></li>
          <li><a href="UserChangePassword.jsp">Change Password</a></li>
          <li><a href="homepage.jsp"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
        </ul>
      </li>      
    </ul>                     
		</div>
   </nav>
   
   
  
    

  
  
  

