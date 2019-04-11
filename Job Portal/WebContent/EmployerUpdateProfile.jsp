<jsp:include page="EmployerHeader.jsp"/>

<br/>
<!-- Content -->
<body style="background-color:orange;color:blue">
<div class="container">
<form class="form-horizontal" action="UpdateEmployer" method="post">
    
  <div class="form-group">
    <label class="control-label col-sm-2" for="location">Location</label>
    <div class="col-sm-10">
    <input type="text" class="form-control"  name="location" value="${sessionScope.employer.loc}" >
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="company name">Company Name</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" name="companyName" value="${sessionScope.employer.companyName}">
    </div>
  </div>
 
   <div class="form-group">
    <label class="control-label col-sm-2" for="industry type">Industry Type</label>
    <div class="col-sm-10">
    <input type="text" class="form-control"  name="industry" value="${sessionScope.employer.industryType}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="type">Type</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" name="optradio" value="${sessionScope.employer.type }">
    </div>
  </div> 
  <div class="form-group">
    <label class="control-label col-sm-2" for="name">Name</label>
    <div class="col-sm-10">
    <input type="text" class="form-control"  name="name" value="${sessionScope.employer.employerName}" >
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="desgination">Designation</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" name="designation" value="${sessionScope.employer.des}">
    </div>
  </div>
 
   <div class="form-group">
    <label class="control-label col-sm-2" for="address">Address</label>
    <div class="col-sm-10">
    <input type="text" class="form-control"  name="address" value="${sessionScope.employer.address}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="country">Country</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" name="country" value="${sessionScope.employer.country }">
    </div>
  </div> 
  <div class="form-group">
    <label class="control-label col-sm-2" for="state">State:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control"  name="state" value="${sessionScope.employer.state}" >
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="city">City</label>
    <div class="col-sm-10">
    <input type="text" class="form-control"  name="city" value="${sessionScope.employer.city}">
    </div>
  </div>
 
   <div class="form-group">
    <label class="control-label col-sm-2" for="pincode">PinCode</label>
    <div class="col-sm-10">
    <input type="text" class="form-control"  name="pincode" value="${sessionScope.employer.pinCode}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="phone">Mobile No</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" name="phone" value="${sessionScope.employer.mobileNo }">
    </div>
  </div> 
   <div class="form-group">
    <label class="control-label col-sm-2" for="email">Email</label>
    <div class="col-sm-10">
    <input type="email" class="form-control" name="email" value="${sessionScope.employer.email }" required>
    </div>
  </div> 
  
  <br>
  <div style="margin-left:200px">
  <button type="submit" class="btn btn-default">Update</button>
  </div>
</form>

 </div>
 </body>
 

<br/><br/><br/>
<div style="margin-top:160px">
<jsp:include page="Footer.jsp"/>
</div>	
