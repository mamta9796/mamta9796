<jsp:include page="UserHeader.jsp"/>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<body style="background-color:skyblue;color:blue">

<div class="container">

	<c:if test="${not empty msg}">
		<div class="alert alert-success">
			${msg}
		</div>
	</c:if>
	<h1>View Resume</h1>
			<table class="table table-hover">				
					<tr>						
						<td><img src="images/${sessionScope.resume1.resume}"/></td>		
					</tr>
				</table>
	 </div>
<div style="margin-top:470px">


<jsp:include page="Footer.jsp"/>
</div>	








