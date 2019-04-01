<jsp:include page="UserHeader.jsp"/>

<div align="center">
		<form action="EmployerChangePassword" method="post">
			<table>
			<tr>
					<td>Old Password : </td>
					<td><input type="text" name="t1" placeholder="Enter Old Password" required> </td>
				</tr><br><br>
			    	<tr>
					<td>New Password : </td>
					<td><input type="text" name="t2" placeholder="Enter New Password" required> </td>
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
	
	<br/><br/><br/>
<div style="margin-top:320px">
<jsp:include page="Footer.jsp"/>
</div>	
	
	

