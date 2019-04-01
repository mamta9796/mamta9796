<jsp:include page="UserHeader.jsp"/>


<div class="container table-responsive">          
  <table class="table table-striped">
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
  
  <br/><br/><br/>
<div style="margin-top:260px">
<jsp:include page="Footer.jsp"/>
</div>	