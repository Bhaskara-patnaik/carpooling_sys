<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="http://localhost:8082/carpooling_sytem/assets/css/standard.css">
    <link rel="stylesheet" href="http://localhost:8082/carpooling_sytem/assets/css/login.css">
    <script type="text/javascript">
    
    function validate(){
    	console.log("called")
    	var uname=document.getElementById("uname").value
    	var upass=document.getElementById("upass").value
    	if(uname=="")
    		{
    		console.log("uname blank")
    		document.getElementById("uname").style.background = "red";
    	  		}
    	else    	if(upass=="")
		{
		document.getElementById("upass").style.background = "red";
		}

    	else{
    		document.form.action="../LoginController"
    		document.form.submit()
    	}
    }
    function validateform() {
    	console.log("fname blank")
    	var fname=document.getElementById("fname").value
    	var lname=document.getElementById("lname").value
    	var age=document.getElementById("age").value
    	gender=false;
    	if(document.getElementById('gender1').checked) {
    		  gender=true;
    		}else if(document.getElementById('gender2').checked) {
    			gender=true;
    		}
    		
 
    	
    	var cnumber=document.getElementById("cnumber").value
    	var cuname=document.getElementById("cuname").value
    	var cpass=document.getElementById("cpass").value
    	if(fname=="")
    		{
    		console.log("fname blank")
    		document.getElementById("fname").style.background = "red";
    	  		}
    	else    	if(lname=="")
		{
		document.getElementById("lname").style.background = "red";
		}
    	else    	if(age=="")
		{
		document.getElementById("age").style.background = "red";
		}
    	else    	if(gender==false)
		{
    		document.getElementById("gender_id").style.color = "red";	
		document.getElementById("gender_id").style.background = "aqua";
		document.getElementById("gender_id").style.border = "inset 2px black ";
		document.getElementById("gender_id").innerHTML = "Please Select the gender";
		}
    	else    	if(cnumber=="")
		{
		document.getElementById("cnumber").style.background = "red";
		}
    	else    	if(cuname=="")
		{
		document.getElementById("cuname").style.background = "red";
		}
    	else    	if(cpass=="")
		{
		document.getElementById("cpass").style.background = "red";
		}
		
    	else{
    		document.form1.action="../RegisterController"
    		document.form1.submit()
	}
}
    </script>
    <style>
     body{
 -webkit-animation: colorchange 60s infinite; 
    animation: colorchange 60s infinite;
}
@-webkit-keyframes colorchange {
     0%  {background: #33FFF3;}
    25%  {background: #78281F;}
    50%  {background: #117A65;}
    75%  {background: #DC7633;}
    100% {background: #9B59B6;}
}
@keyframes colorchange {
     0%  {background: #33FFF3;}
    25%  {background: #78281F;}
    50%  {background: #117A65;}
    75%  {background: #DC7633;}
    100% {background: #9B59B6;}
  }</style>
  </head>
  <body bgcolor="aqua">
    <div class="loginPage container">

      <div class="form-modal">

          <div class="form-toggle">
              <button id="login-toggle" onclick="toggleLogin()">log in</button>
              <button id="signup-toggle" onclick="toggleSignup()">sign up</button>
          </div>

          <div id="login-form">
              <form name="form">
                  <input type="text" placeholder="Enter username" name="uname" id="uname"/>
                  <input type="password" name="upass" id="upass" placeholder="Enter password"/>
                  <button type="button" onclick="validate()" class="btn login">login</button>
                  <p class="forget_btn"><a href="javascript:void(0)">Forgotten account</a></p>
              </form>
          </div>

          <div id="signup-form" style="height:200px">
              <form name="form1">
                <input type="text"name="fname" id="fname" placeholder="Enter your firstname" />
                <input type="text" name="lname" id="lname"placeholder="Enter your lastname" />
                <input type="number" name="age" id="age"placeholder="Enter your age" />

                <div class="dropdown"  >
                  <div class="select" >
                    <span>Select your Gender</span>
                    <i class="fa fa-chevron-left"></i>
                  </div>
                  </div>
                  <input type="hidden" />
                  <!-- <ul class="dropdown-menu">
                    <li id="gender">Male</li>
                    <li id="gender">Female</li>
                  </ul> -->
                   <!-- <select name="gender" class="dropdown-menu">
                     <option value="male">Male</option>
                     <option value="female">Female</option>
                  </select>  -->
                  <span id="gender_id"></span>
                  <input type="radio" value="male" name="gender" id="gender1" placeholder="Male" />
                  <label>Male</label>
                  <input type="radio" value="female" name="gender"  id="gender2" placeholder="Female"/>
                 <label>Female</label> 
                

                <input type="number" name="cnumber" id="cnumber"placeholder="Enter your contact number" />
                <input type="text" name="cuname" id="cuname"placeholder="Choose username" />
                <input type="password" name="cpass" id="cpass"placeholder="Create password" />
                  <input type="button" onclick="validateform()" class="btn signup" value="create account"/> 
                  <p>Clicking <strong>create account</strong> means that you are agree to our <a href="javascript:void(0)">terms of services</a>.</p>
              </form>
          </div>

      </div>

    </div>

    <script
      src="https://code.jquery.com/jquery-3.4.0.js"
      integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
      crossorigin="anonymous"></script>

    <script type="text/javascript" src="../assets/js/login.js"></script>
  </body>
</html>
