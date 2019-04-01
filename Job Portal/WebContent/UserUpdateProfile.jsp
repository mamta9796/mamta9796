<jsp:include page="UserHeader.jsp"/>

<br/>
<!-- Content -->
<div class="container">
<form class="form-horizontal" action="UpdateUser" method="post">
    
  <div class="form-group">
    <label class="control-label col-sm-2" for="name">Name:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control"  name="name" value="${sessionScope.user.name}" >
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Email:</label>
    <div class="col-sm-10">
    <input type="email" class="form-control" id="email" name="email" value="${sessionScope.user.email}" required>
    </div>
  </div>
 
   <div class="form-group">
    <label class="control-label col-sm-2" for="phone">MobileNo:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control"  name="phone" value="${sessionScope.user.mobileNo}">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="location">Location:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" name="location" value="${sessionScope.user.currentLoc }">
    </div>
  </div> 
  
  <br>
  <div style="margin-left:200px">
  <button type="submit" class="btn btn-default">Update</button>
  </div>
</form>

 </div>
 

<br/><br/><br/>
<div style="margin-top:160px">
<jsp:include page="Footer.jsp"/>
</div>	
