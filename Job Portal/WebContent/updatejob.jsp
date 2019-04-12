<jsp:include page="EmployerHeader.jsp"/>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<body style="background-color:orange;color:blue">
<div class="container">
<form class="form-horizontal" action="updateJobProcess"  method="post">
<div class="form-group">
    <label class="control-label col-sm-2" for="jobid">Job Id :</label>
    <div class="col-sm-10">
    <input type="text" class="form-control"  name="jobid" value="${requestScope.jobObj.jobId}"readonly="readonly" >
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="jobtitle">Job Title :</label>
    <div class="col-sm-10">
    <input type="text" class="form-control"  name="jobtitle" value="${requestScope.jobObj.jobTitle}" >
    </div>
  </div>
   <div class="form-group">
    <label class="control-label col-sm-2" for="desc">Job Description:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" name="desc" value="${requestScope.jobObj.desc}">
    </div>
  </div>
    <div class="form-group">
    <label class="control-label col-sm-2" for="qualification">Qualification:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control"  name="qualification" value="${requestScope.jobObj.qualification}">
    </div>
  </div>
    <div class="form-group">
    <label class="control-label col-sm-2" for="companyname">Company Name:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control"  name="companyname" value="${requestScope.jobObj.companyName}">
    </div>
  </div>
   <div class="form-group">
    <label class="control-label col-sm-2" for="loc">Location:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" name="loc" value="${requestScope.jobObj.location}">
    </div>
  </div>
    <div class="form-group">
    <label class="control-label col-sm-2" for="vacancy">No Of Vacancy:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control"  name="vacancy" value="${requestScope.jobObj.vacancy}">
    </div>
  </div>
  
      
  
    <button type="submit" class="btn btn-default">Update Job</button>
</form>

 </div>
 </body>

<div style="margin-top:320px">
<jsp:include page="Footer.jsp"/>
</div>	