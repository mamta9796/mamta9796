<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="Header.jsp"/>

<c:if test="${not empty errorMsg}">
	<div class="alert alert-danger">
		${errorMsg}
	</div>
</c:if> 

<c:if test="${not empty msg}">
	<div class="alert alert-danger">
		${msg}
	</div>
</c:if> 	
<c:if test="${not empty msg1}">
	<div class="alert alert-success">
		${msg1}
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
      
      <input type="submit" value="Login" class="btn btn-primary" id="b2">
      <p class="message">Not registered? <a href="SignUp.jsp">Create an account</a></p>
    </form>
  </div>
</div>
</body>
</html>
