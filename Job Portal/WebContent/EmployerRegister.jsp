<jsp:include page="Header.jsp"/>
 <link rel="stylesheet" href="css//registration1.css"/> 

    </head>
<body Style="background-image:url('images//j.jpg')">
<div class="login-page">
  <div class="form">
    
    <form class="login-form" action="employer" method="post">
	  <label style="text-align:left"><h2>New Employee Registration</h2></label><br>
	  
	  <input type="email"  required  placeholder="Enter email" name="email" >
	  
	   <input type="password" required  placeholder="Enter password" name="password"/>
	  
		<input type="text" placeholder="Location" name="location" required> 

         <input type="text" required  placeholder="Company Name" name="companyName" />
		 
		  <input type="text" required  placeholder="Industry type" name="industry" />
		  <div class="radio">
		  <div class="form-check-inline">
         <label class="form-check-label">
            <input type="radio" class="form-check-input" name="optradio" style="height:15px" value="Company">Company
  </label>
</div>
     
      <div class="form-check-inline">   
  <label class="form-check-label">
    <input type="radio" class="form-check-input" name="optradio" style="height:15px" value="Consultant">Consulant
  </label>
</div>
     </div>
	 <input type="text"  required  placeholder="Contact Person Name" name="name" >
	 
	 <input type="text"  required  placeholder="Designation" name="designation" >
	 
	 <input type="text"  required  placeholder="Office Address" name="address" >
	 
	  <div class="container-fluid">
    <div class="row">
      <div class="col-md-6 ">
 
	 
	 <input type="text"  required  placeholder="Country" name="country" >
	 </div>
	 <div class=" col-md-6 ">
	 
	 <input type="text"  required  placeholder="State" name="state" >
	 </div>
	 </div>
	 
	 <div class="row">
      <div class="col-md-6 ">
 
     <input type="text"  required  placeholder="City" name="city" >
	 </div>
	 <div class=" col-md-6">
	 
	 <input type="text"  name="pincode" required  placeholder="Pincode" > 
	 </div>
	 </div>
	 </div>
	 	  <input type="tel" id="phone" name="phone" placeholder="Mobile number" pattern="[0-9]{10}" maxlength="10" required>



      <button>Registration</button>
      <p class="message">Already have an Account? <a href="login.jsp">Login</a></p>
    </form>
  </div>
</div>

</body>
</html>