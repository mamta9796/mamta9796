<jsp:include page="EmployerHeader.jsp"/>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<body style="background-color:orange;color:blue">
<div class="container">
<form class="form-horizontal" action="addjob" method="post">
  <div class="form-group">
    <label class="control-label col-sm-2" for="jobtitle">Job Title :</label>
    <div class="col-sm-10">
    <input type="text" class="form-control"  name="jobtitle">
    </div>
  </div>
   <div class="form-group">
    <label class="control-label col-sm-2" for="desc">Job Description:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" name="desc">
    </div>
  </div>
    <div class="form-group">
    <label class="control-label col-sm-2" for="qualification">Qualification:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control"  name="qualification">
    </div>
  </div>
    <div class="form-group">
    <label class="control-label col-sm-2" for="companyname">Company Name:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control"  name="companyname">
    </div>
  </div>
   <div class="form-group">
    <label class="control-label col-sm-2" for="loc">Location:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" name="loc">
    </div>
  </div>
    <div class="form-group">
    <label class="control-label col-sm-2" for="vacancy">No Of Vacancy:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control"  name="vacancy">
    </div>
  </div>
      
  
    <button type="submit" class="btn btn-default">Add Job</button>
</form>

 </div>
 </body>

<div style="margin-top:320px">
<jsp:include page="Footer.jsp"/>
</div>	