
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
                    <li><a href="viewEmployees">View All Employees</a></li> 
                <li><a href="viewUser">View All User</a></li>
                                          
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
<div class="container" style="margin-top:80px;margin-left:10px">

	<c:if test="${not empty msg}">
		<div class="alert alert-success">
			${msg}
		</div>
	</c:if>
	<h1>List of Employer</h1>
	<c:choose>
		<c:when test="${eList.size() eq 0}">
			No Employee Found...
		</c:when>
		<c:otherwise>
			<table class="table table-hover" style="background-color:white">
				<tr>
					
					<th>EMAIL</th>
					<th>LOCATION</th>
					<th>COMPANY NAME</th>
					<th>INDUSTRY TYPE</th>
					<th>TYPE</th>
					<th>EMPLOYER NAME </th>
					<th>DESIGNATION</th>
					<th>ADDRESS</th>
					<th>COUNTRY</th>
					<th>STATE</th>
					<th>CITY</th>
					<th>PIN CODE</th>
					<th>MOBILE NO</th>
						
				</tr>
				<c:forEach items="${eList}" var="eObj">
					<tr>						
						<td>${eObj.email}</td>
						<td>${eObj.loc}</td>
						<td>${eObj.companyName}</td>
						<td>${eObj.industryType}</td>
						<td>${eObj.type}</td>
						<td>${eObj.employerName}</td>
						<td>${eObj.des}</td>
						<td>${eObj.address}</td>
						<td>${eObj.country}</td>
						<td>${eObj.state}</td>
						<td>${eObj.city}</td>
						<td>${eObj.pinCode}</td>
						<td>${eObj.mobileNo}</td>
						<td>
							<a href="deleteEmployee?eId=${eObj.email}"><span class="glyphicon glyphicon-trash"></span></a>
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








