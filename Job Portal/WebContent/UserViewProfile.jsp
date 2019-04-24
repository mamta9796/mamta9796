viewalljobtouser.jsp<jsp:include page="UserHeader.jsp"/>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${not empty msg}">
	<div class="alert alert-danger">
		${msg}
	</div>
</c:if> 
<body style="background-color:skyblue;color:blue">

<div class="container table-responsive">          
  <table class="table table-hover">
      <tr>
      	<td>Name </td>
      	<td>${sessionScope.user.name}</td>
      </tr>
      <tr>
      	<td>Email </td>
      	<td>${sessionScope.user.email}</td>
      </tr>
      <tr>
      	<td>MobileNo </td>
      	<td>${sessionScope.user.mobileNo}</td>
      </tr>
      <tr>
      	<td>Location </td>
      	<td>${sessionScope.user.currentLoc}</td>
      </tr>
  </table>
  </div>
  </body>
  
  <br/><br/><br/>
<div style="margin-top:260px">
<jsp:include page="Footer.jsp"/>
</div>	