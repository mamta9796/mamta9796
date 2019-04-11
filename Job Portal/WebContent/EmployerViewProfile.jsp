<jsp:include page="EmployerHeader.jsp"/>

<body style="background-color:orange;color:blue">
<div class="container table-responsive">          
  <table class="table table-hover">
      <tr>
      	<td>Location </td>
      	<td>${sessionScope.employer.loc}</td>
      </tr>
      <tr>
      	<td>Company Name </td>
      	<td>${sessionScope.employer.companyName}</td>
      </tr>
      <tr>
      	<td>Industry Type </td>
      	<td>${sessionScope.employer.industryType}</td>
      </tr>
      <tr>
      	<td>Type </td>
      	<td>${sessionScope.employer.type}</td>
      </tr>
       <tr>
      	<td>Name </td>
      	<td>${sessionScope.employer.employerName}</td>
      </tr>
      <tr>
      	<td>Designation </td>
      	<td>${sessionScope.employer.des}</td>
      </tr>
      <tr>
      	<td>Address</td>
      	<td>${sessionScope.employer.address}</td>
      </tr>
      <tr>
      	<td>Country </td>
      	<td>${sessionScope.employer.country}</td>
      </tr>
       <tr>
      	<td>State </td>
      	<td>${sessionScope.employer.state}</td>
      </tr>
      <tr>
      	<td>City </td>
      	<td>${sessionScope.employer.city}</td>
      </tr>
      <tr>
      	<td>Pincode </td>
      	<td>${sessionScope.employer.pinCode}</td>
      </tr>
      <tr>
      	<td>Mobile No </td>
      	<td>${sessionScope.employer.mobileNo}</td>
      </tr>
      <tr>
      	<td>Email </td>
      	<td>${sessionScope.employer.email}</td>
      </tr>
  </table>
  </div>
  </body>
  
  <br/><br/><br/>
<div style="margin-top:260px">
<jsp:include page="Footer.jsp"/>
</div>	