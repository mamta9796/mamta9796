<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="StyleSheet" href="css//registration.css"/>
</head>
<body Style="background-image:url('images//j.jpg')">
<div class="login-page">
  <div class="form">
    
    <form class="login-form" action="SignUp" method="post">
	  <label style="text-align:left"><h2>Create Account</h2></label><br>
	  <label><strong>User Name</label>
      <input type="text" required  placeholder="Enter your Full Name" name="name" />
	  <label>Mobile Number</label>
	  <input type="tel" id="phone" name="phone" placeholder="1234567890"
       pattern="[0-9]{10}" maxlength="10" required>
	   <label>Email</label><br>
	   <input type="email"  required  placeholder="Enter email" name="email" >
	   
	   
		<label>Password</label><br>
      <input type="password" required  placeholder="Enter password"  name="password"/>
	  	<label>Current location</label><br>
		<input type="text" placeholder="Location" name="location" required list="location"> 
		<datalist id="location">
  <option value="Sonipat">
  <option value="Panipat">
   <option value="Karnal">
    <option value="Delhi">
</datalist>


      <button>Registration</button>
      <p class="message">Already have an Account? <a href="login.jsp">Login</a></p>
    </form>
  </div>
</div>
</body>
</html>