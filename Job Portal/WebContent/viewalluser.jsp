
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


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
 
<body style="background-image:url('images//m5.jpg') ;color:orange; background-repeat:no-repeat">
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
<body style="background-image:url('images//m5.jpg') ;color:orange; background-repeat:no-repeat">
<div class="container" style="margin-top:80px;margin-left:10px">

	<c:if test="${not empty msg}">
		<div class="alert alert-success">
			${msg}
		</div>
	</c:if>
	<h1>List of User</h1>
	<c:choose>
		<c:when test="${uList.size() eq 0}">
			No User Found...
		</c:when>
		<c:otherwise>
			<table class="table table-hover" style="background-color:white">
				<tr>
					<!--<th>Job Id</th>-->
					<th>NAME</th>
					<th>EMAIL</th>
					<th>MOBILENO</th>
					<th>CURRENT LOCATION</th>
											
				</tr>
				<c:forEach items="${uList}" var="uObj">
					<tr>
						<%--<td>${jobObj.jobId}</td>--%>
						<td>${uObj.name}</td>
						<td>${uObj.email}</td>
						<td>${uObj.mobileNo}</td>
						<td>${uObj.currentLoc}</td>
						<td>
							<a href="deleteUser?eId=${uObj.email}"><span class="glyphicon glyphicon-trash"></span></a>
						</td>						
					</tr>
				</c:forEach>
			</table>
		</c:otherwise>
	</c:choose>
 </div>
 </div>
 </body>
 
<div style="margin-top:300px">
<jsp:include page="Footer.jsp"/>
</div>	








