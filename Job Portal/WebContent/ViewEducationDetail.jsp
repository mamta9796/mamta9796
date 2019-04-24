<jsp:include page="UserHeader.jsp"/>
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
      	<td>Medium </td>
      	<td>${sessionScope.detail.medium}</td>
      </tr>
      <tr>
      	<td>Subject </td>
      	<td>${sessionScope.detail.subject}</td>
      </tr>
      <tr>
      	<td>School Name </td>
      	<td>${sessionScope.detail.sName}</td>
      </tr>
      <tr>
      	<td>Board </td>
      	<td>${sessionScope.detail.board}</td>
      </tr>
      <tr>
      	<td>Course Type</td>
      	<td>${sessionScope.detail.cType}</td>
      </tr>
      <tr>
      	<td>Percentage </td>
      	<td>${sessionScope.detail.perc}</td>
      </tr>
      <tr>
      	<td>Passing Year </td>
      	<td>${sessionScope.detail.pYear}</td>
      </tr>
        <tr>
      	<td>Medium1 </td>
      	<td>${sessionScope.detail.medium1}</td>
      </tr>
         <tr>
      	<td>Stream </td>
      	<td>${sessionScope.detail.stream}</td>
      </tr>
      <tr>
      	<td>Subject1 </td>
      	<td>${sessionScope.detail.subject1}</td>
      </tr>
      <tr>
      	<td>School Name </td>
      	<td>${sessionScope.detail.sName1}</td>
      </tr>
      <tr>
      	<td>Board </td>
      	<td>${sessionScope.detail.board1}</td>
      </tr>
      <tr>
      	<td>Course Type</td>
      	<td>${sessionScope.detail.cType1}</td>
      </tr>
      <tr>
      	<td>Percentage </td>
      	<td>${sessionScope.detail.perc1}</td>
      </tr>
      <tr>
      	<td>Passing Year </td>
      	<td>${sessionScope.detail.pYear1}</td>
      </tr>
          <tr>
      	<td>Qualification </td>
      	<td>${sessionScope.detail.qual}</td>
      </tr>
         <tr>
      	<td>Course </td>
      	<td>${sessionScope.detail.course}</td>
      </tr>
      <tr>
      	<td>Specialisation </td>
      	<td>${sessionScope.detail.specialization}</td>
      </tr>
      <tr>
      	<td>College </td>
      	<td>${sessionScope.detail.college}</td>
      </tr>
       	<td>Course Type</td>
      	<td>${sessionScope.detail.cType2}</td>
      </tr>
        <tr>
      	<td>Passing Year </td>
      	<td>${sessionScope.detail.pYear2}</td>
      </tr>
       <tr>
      	<td>Qualification1 </td>
      	<td>${sessionScope.detail.qual1}</td>
      </tr>
         <tr>
      	<td>Course1 </td>
      	<td>${sessionScope.detail.course1}</td>
      </tr>
      <tr>
      	<td>Specialisation1 </td>
      	<td>${sessionScope.detail.specialization1}</td>
      </tr>
      <tr>
      	<td>College1 </td>
      	<td>${sessionScope.detail.college1}</td>
      </tr>
       	<td>Course Type</td>
      	<td>${sessionScope.detail.cType3}</td>
      </tr>
        <tr>
      	<td>Passing Year </td>
      	<td>${sessionScope.detail.pYear3}</td>
      </tr>
       <tr>
      	<td>Email </td>
      	<td>${sessionScope.detail.email}</td>
      </tr>
  </table>
  </div>
  </body>
  
  <br/><br/><br/>
<div style="margin-top:260px">
<jsp:include page="Footer.jsp"/>
</div>	