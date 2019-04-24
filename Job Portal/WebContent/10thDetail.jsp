<jsp:include page="UserHeader.jsp"/>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Job Portal</title>
  
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
 <link rel="stylesheet" href="css//AdditionalUserDetail.css"/> 

</head>
<body  Style="background-image:url('images//H.jpeg')">
<div class="container">
            <form class="form-horizontal" role="form" >
                <h2>Educational details</h2>
				
				
				
				
				
				
				 <h3   style="margin-left: 5em; margin-bottom: 1em; color:blue;" >10th class:-</h3  >
				
				
				   <div class="form-group">
                    <label for="country" class="col-sm-3 control-label">Medium</label>
                    <div class="col-sm-9">
                        <select id="country" class="form-control" name="medium">
						   <option>Select Your medium</option>
                            <option>Hindi</option>
                            <option>English</option>

                        </select>
                    </div>
                </div>
				
				
				<div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label"> Subjects</label>
                    <div class="col-sm-9">
                        <input type="text" id="firstName" placeholder="Enter Your Subject" class="form-control" name="subject"autofocus>
                        
                    </div>
                </div>
               
				 <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label"> School Name</label>
                    <div class="col-sm-9">
                        <input type="text" id="firstName" placeholder="School Name" class="form-control" name="school" autofocus>
                        
                    </div>
                </div>
               
			   
			   <div class="form-group">
                    <label for="country" class="col-sm-3 control-label">Board</label>
                    <div class="col-sm-9">
                        <select id="country" class="form-control" name="board">
						    <option>Board Name</option>
                            <option> Andhra Pradesh Board of Secondary Education</option>
                            <option>Andhra Pradesh Board of Intermediate Education</option>
                            <option>Andhra Pradesh Open School Society</option>
                            <option>Board of Higher Secondary Education Delhi</option>
                            <option>Assam Higher Secondary Education Council</option>
                            <option>Assam sanskrit board</option>
                            <option>Assam State Open School</option>
                            <option>Bihar Board of Open Schooling and Examination</option>
                             <option>Bihar Sanskrit Shiksha Board</option>
                            <option>Bihar School Examination Board</option>
                            <option>Central Board of Secondary Education, CBSE</option>
                            <option>Uchchatar Madhyamik Shiksha Parishad Under MSMED Act 2006 Koshambi</option>
                            <option>Chhattisgarh Board of Secondary Education</option>
                            <option>Council for the Indian School Certificate Examinations, ICSE / ISC</option>
                            <option>Council Of Secondary Education Mohali</option>
                            <option>Goa Board of Secondary & Higher Secondary Education</option>
                            <option>Grameen Mukt vidhyalayi shiksha sansthan(GMVSS)[1]</option>
                            <option>Gujarat Secondary Education Board</option>
                            <option>Haryana Board of School Education</option>
                            <option>Himachal Pradesh Board of School Education</option>
                            <option>Himachal Pradesh State Open School[2]</option>
                            <option>Jammu and Kashmir State Board of School Education</option>
                            <option>Jammu and Kashmir State Open School[3]</option>
                            <option>Jharkhand Academic Council[4]</option>
                            <option>Karnataka Secondary Education Examination Board</option>
                            <option>Kerala Higher Secondary Examination Board</option>
                            <option>Kerala State Open School[5]</option>
                            <option>Board of Secondary Education, Madhya Pradesh</option>
                            <option>Madhya Pradesh State Open School[6]</option>
                            <option>Maharashtra State Board of Secondary and Higher Secondary Education</option>
                            <option>Meghalaya Board of School Education</option>
                            <option>Mizoram Board of School Education</option>
                            <option>Nagaland Board of School Education</option>
                            <option>National Institute of Open Schooling</option>
                            <option>Odisha Board of Secondary Education</option>
                            <option>Odisha Council of Higher Secondary Education</option>
                            <option>Punjab School Education Board</option>
                            <option>Board of Secondary Education, Rajasthan</option>
                            <option>Rajasthan State Open School[7]</option>
                            <option>Tamil Nadu Board of Secondary Education</option>
                            <option>Telangana Board of Intermediate Education</option>
                            <option>Telangana Board of Secondary Education</option>
                            <option>Tripura Board of Secondary Education</option>
                            <option>Board of High School and Intermediate Education Uttar Pradesh</option>
                            <option>Uttarakhand Board of School Education</option>
                            <option>West Bengal Board of Madrasah Education</option>
                            <option>West Bengal Board of Primary Education</option>
                            <option>West Bengal Board of Secondary Education</option>
                            <option>West Bengal Council of Higher Secondary Education</option>
                            <option>West Bengal Council of Rabindra Open Schooling</option>
                            <option>Madhyamik Shiksha Parishad, Delhi</option>

                        </select>
                    </div>
                </div>
				
			   
			   
			    <div class="form-group">
                    <label class="control-label col-sm-3">Course Type</label>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-4">
                                <label class="radio-inline"> 
								
								
                                    <input type="radio"  class="form-check-input" id="fullRadio" value="Full time"name="opt"  >Full Time
                                </label>
                            </div>
							
                            <div class="col-sm-4">
                                 <label class="radio-inline">
								
								
                                    <input type="radio"  class="form-check-input" id="partRadio" value="Part time" name="opt">Part Time
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
								
								
								
                           
                                    <input type="radio"  class="form-check-input" id="uncknownRadio" value="Correspondence" name="opt">Correspondence
                                </label>
                            </div>
							
                        </div>
                    </div>
                </div>
				
		          <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label"> Percentage</label>
                    <div class="col-sm-9">
                        <input type="text" id="firstName" placeholder="Percentage" class="form-control" name="percentage" autofocus>
                        
                    </div>
                </div>
               
				   <div class="form-group">
                    <label for="country" class="col-sm-3 control-label">Passing Year</label>
                    <div class="col-sm-9">
                        <select id="country" class="form-control" name="year">
						    <option>select</option>
							 <option>2023</option>
                            <option>2022</option>
                            <option>2021</option>
                            <option>2020</option>
                            <option>2019</option>
                            <option>2018</option>
                            <option>2017</option>
                            <option>2016</option>
							
                            <option>2015</option>
                            <option>2014</option>
                            <option>2013</option>
                            <option>2012</option>
                            <option>2011</option>
                            <option>2010</option>
                            <option>2009</option>
                            <option>2008</option>
							
                            <option>2007</option>
                            <option>2006</option>
                            <option>2005</option>
                            <option>2004</option>
                            <option>2003</option>
                            <option>2002</option>
                            <option>2001</option>
                            <option>2000</option>
							
                            <option>1999</option>
                            <option>1998</option>
                            <option>1997</option>
                            <option>1996</option>
                            <option>1995</option>
                            <option>1994</option>
                            <option>1993</option>
                            <option>1992</option>
							
                            <option>1991</option>
                            <option>1990</option>
                            <option>1989</option>
                            <option>1988</option>
                            <option>1987</option>
                            <option>1986</option>
                            <option>1985</option>
                            <option>1984</option>
							
                            <option>1983</option>
                            <option>1982</option>
                            <option>1981</option>
                            <option>1980</option>
                            <option>1979</option>
                            <option>1978</option>
                            <option>1977</option>
                            <option>1976</option>
							
                            <option>1975</option>
                            <option>1974</option>
                            <option>1973</option>
                            <option>1972</option>
                            <option>1971</option>
                            <option>1970</option>
                            <option>1969</option>
                            <option>1968</option>
							
                            <option>1967</option>
                            <option>1966</option>
                            <option>1965</option>
                            <option>1964</option>
                            <option>1963</option>
                            <option>1962</option>
                            <option>1961</option>
                            <option>1960</option>
							
                           </select>
                    </div>
                </div>
				
				 <div class="form-group" >
                    <label for="firstName" class="col-sm-3 control-label"> Skills</label>
                    <div class="col-sm-9">
                        <input type="text" id="firstName" placeholder="Enter Your Area of Specialization" class="form-control"  name="skill" autofocus>
                        
                    </div>
                </div>
            
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox">I accept <a href="#">terms</a>
                            </label>
                        </div>
                    </div>
                </div> 
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        <button type="submit" class="btn btn-primary btn-block">Continue</button>
                    </div>
                </div>
            </form> 
        </div> 
		</body>
		
<div style="margin-top:60px">
<jsp:include page="Footer.jsp"/>
</div>	