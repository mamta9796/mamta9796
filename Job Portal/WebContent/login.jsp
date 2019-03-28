<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<jsp:include page="navbar.jsp"/>--%>


<div class="container">
<%--
 <%
	Object msg=request.getAttribute("errorMsg");
   if(msg!=null){
	   %>
	   		<div class="alert alert-danger">
	   			Email or Password is incorrect...
	   		</div>
	   <%
   }
 %>	
  --%>

<c:if test="${not empty errorMsg}">
	<div class="alert alert-danger">
		${errorMsg}
	</div>
</c:if>  	
<!DOCTYPE html>
<html>
<head> <link rel="stylesheet" href="css//login.css"/> 

    </head>
<body Style="background-image:url('images//H.jpeg')">
<div class="login-page">
  <div class="form">
    
    <form class="login-form" action="login" method="post">
      <input type="text" placeholder="username" name="t1"/>
      <input type="password" placeholder="password" name="t2"/>
      
      <div class="b2"><input type="submit" value="Login" class="btn btn-primary"></div>
      <p class="message">Not registered? <a href="SignUp.jsp">Create an account</a></p>
    </form>
  </div>
</div>
</body>
</html>
