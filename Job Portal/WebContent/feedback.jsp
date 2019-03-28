<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<title>Feedback</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


<style>
.Feedback-page {
  width: 450px;
  padding: 8% 0 0;
  margin: auto;
}
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 18px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: blue;
  width: 100%;
  border: 0;
  padding: 15px;
  color:#FFFFFF;
  font-size: 14px;
  cursor: pointer;
}
.form button:hover,.form button:active,.form button:focus {
  background: #43A047;
}
.form .message {
  margin: 15px 0 0;
  color:#b3b3b3;
  font-size: 12px;
}
.form .message a {
  color:blue;
  text-decoration: none;
}
body {
 background-image: url("H.jpeg");
 background-repeat: no-repeat;
 background-position: center;
 background-size: cover; 
}
</style>



    </head>
<body>
<div class="Feedback-page">
  <div class="form">
    
    <form class="Feedback-form">
	
      <h2>	Feedback</h2><br>

     <h5> Help us to make the new JobRoute.com even better. </h5>	  
	<input type="text" placeholder=" Enter Your email id "/>
	
	
	
      <input type="text" placeholder="Enter the issue you would like to high light"/><br>
	  <div class="Submit" style="margin-left:-2px; margin-right:150px; " ><br>
      <button>Submit</button>
	  </div>
	 <div class ="cancel" style="margin-left:150px; margin-right:10px; margin-top:-50px;"> 
    <button>cancel</button>
    </div>
	  	  
      
    </form>
  </div>
</div>
<div style="margin-top:200px">
<jsp:include page="Footer.jsp"/>
</div>