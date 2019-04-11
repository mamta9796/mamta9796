<jsp:include page="EmployerHeader.jsp"/>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${not empty msg}">
	<div class="alert alert-danger">
		${msg}
	</div>
</c:if> 
<body style="background-color:orange;color:blue">
<div align="center">
		<form action="EmployerChangePassword" method="post">
			<table>
			<tr>
					
			    	<tr>
					<td>New Password : </td>
					<td><input type="text" name="t1" placeholder="Enter New Password" required> </td>
				</tr>
					<tr>
				<td>Confirm Password : </td>
					<td><input type="text" name="t2" placeholder="Enter Confirm Password" required> </td>
				</tr>
					<tr>
					<td></td>
					<td>
						<input type="submit" value="Submit"/>
					</td>
				</tr>
			</table>
		</form>
	</div>  
	</body>
	
	<br/><br/><br/>
<div style="margin-top:350px">
<jsp:include page="Footer.jsp"/>
</div>	
	
	

