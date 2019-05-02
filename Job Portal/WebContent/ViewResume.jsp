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
	<form  method="post">
			<table class="table table-hover">				
					<tr>						
						<td>
						${sessionScope.resume1}
						<img src="RESUME1//${sessionScope.resume1}"/></td>		
					</tr>
				</table>
				</form>
	 </div>
<div style="margin-top:470px">
<jsp:include page="Footer.jsp"/>
</div>	








