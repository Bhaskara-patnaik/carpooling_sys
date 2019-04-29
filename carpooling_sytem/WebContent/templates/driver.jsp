<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>driver</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="../assets/css/standard.css">
    <link rel="stylesheet" href="../assets/css/driver.css">
  </head>
  <script type="text/javascript">
  
  
  
  function validatedriverform() {
  	//console.log("fname blank")
  	var fname=document.getElementById("fname").value
  	var lname=document.getElementById("lname").value
  	var age=document.getElementById("age").value
  	// gender=false;
  	// if(document.getElementById('gender1').checked) {
  		//  gender=true;
  		// }else if(document.getElementById('gender2').checked) {
  		//	gender=true;
  		// }
  		

  		var gender=document.getElementById("gender").value
  	var phone=document.getElementById("phone").value
  	var curr_loc=document.getElementById("curr_loc").value
  	var dest=document.getElementById("dest").value
  	var city=document.getElementById("city").value
  	var start_time=document.getElementById("start_time").value
  	var end_time=document.getElementById("end_time").value
  	
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
  	//   	if(gender==false)
	//	{
  	//	document.getElementById("gender_id").style.color = "red";	
	//	document.getElementById("gender_id").style.background = "aqua";
	//	document.getElementById("gender_id").style.border = "inset 2px black ";
	//	document.getElementById("gender_id").innerHTML = "Please Select the gender";
	//	}-->
		else    	if(gender=="")
		{
		document.getElementById("gender").style.background = "red";
		}
  	else    	if(phone=="")
		{
		document.getElementById("phone").style.background = "red";
		}
  	else    	if(curr_loc=="")
		{
		document.getElementById("curr_loc").style.background = "red";
		}
  	else    	if(dest=="")
		{
		document.getElementById("dest").style.background = "red";
		}
  	else    	if(city=="")
	{
	document.getElementById("city").style.background = "red";
	}
  	else    	if(start_time=="")
	{
	document.getElementById("start_time").style.background = "red";
	}
  	else    	if(end_time=="")
	{
	document.getElementById("end_time").style.background = "red";
	}
		
  	else{
  		document.riderform1.action="../DriverController";
  		document.riderform1.submit()
	}
}
  </script>
  <body>
    <form name="riderform1">
    <div class="riderpage">

      <div class="rider_form">
      
        <input class="col-sm-12 col-md-6" type="text" id="fname" name="fname" value="" placeholder="FirstName" required="required"/>
        <input class="col-sm-12 col-md-6" type="text" name="lname" id="lname"value="" placeholder="LastName"required="required"/>
        <input class="col-sm-12 col-md-6" type="number" id="age"name="age" min="18" max="120" step="1"value="" placeholder="Age" required="required"/>
         <input class="col-sm-12 col-md-6" type="text" id="gender"name="gender" value="" placeholder="Gender" required="required"> 
           <div class="dropdown"  >
               <!--     <div class="select" >
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
                  </select>  
                  <span id="gender_id"></span>
                  <input type="radio" value="male" name="gender" id="gender1" placeholder="Male" />
                  <label>Male</label>
                  <input type="radio" value="female" name="gender"  id="gender2" placeholder="Female"/>
                 <label>Female</label>  -->
                        
 
        <input class="col-sm-12 col-md-6" type="tel" id="phone"name="phone" pattern="[0-9] {5}-[0-9] {5}" placeholder="Contact NUmber" required="required"/>
        <input class="col-sm-12 col-md-6" type="text"id="curr_loc" name="curr_loc" value="" placeholder="Enter current location" required="required"/>
        <input class="col-sm-12 col-md-6" type="text" id="dest"name="dest" value="" placeholder="Enter your destination"required="required"/>
        <input class="col-sm-12 col-md-6" type="text"id="city" name="city" value="" placeholder="city"required="required"/>
        
        <input class="col-sm-12 col-md-6" type="time"id="start_time" name="start_time" value="" placeholder="Enter starting time" required="required"/>
        <input class="col-sm-12 col-md-6" type="time" id="end_time"name="end_time" value="" placeholder="Enter ending time" required="required"/>
     
      </div>
      
      
      
        <!-- <div class="col-xs-12 col-lg-6">
          <button class="drive_btn" type="button" name="button" onclick="ride_history()">history</button>
        </div>-->
      </div>
       <div class="driver_btns row">
        <div class="col-xs-12 col-lg-6">
          <button class="drive_btn" onclick="validatedriverform()"type="button" name="button">post a ride</button>
        </div>
      </div>
</form> 



     <!--  <div class="ride_history" id="ride_history">
        <div class="row">
          <div class="col-xs-6 col-lg-3">
            <div class="row">
              <div class="col-sm-4">
                <img src="https://www.indiaalliance.org/uploads/fellowsprofile/default/default.png" alt="driver image" width="100px">
              </div>
              <div class="col-sm-8">
                <p>Rider name</p>
                <p>+91 9999999999</p>
                <p>Amount received</p>
              </div>
            </div>
          </div>
          <div class="col-xs-6 col-lg-3">
            <div class="row">
              <div class="col-sm-4">
                <img src="https://www.indiaalliance.org/uploads/fellowsprofile/default/default.png" alt="driver image" width="100px">
              </div>
              <div class="col-sm-8">
                <p>Rider name</p>
                <p>+91 9999999999</p>
                <p>Amount received</p>
              </div>
            </div>
          </div>
          <div class="col-xs-6 col-lg-3">
            <div class="row">
              <div class="col-sm-4">
                <img src="https://www.indiaalliance.org/uploads/fellowsprofile/default/default.png" alt="driver image" width="100px">
              </div>
              <div class="col-sm-8">
                <p>Rider name</p>
                <p>+91 9999999999</p>
                <p>Amount received</p>
              </div>
            </div>
          </div>
          <div class="col-xs-6 col-lg-3">
            <div class="row">
              <div class="col-sm-4">
                <img src="https://www.indiaalliance.org/uploads/fellowsprofile/default/default.png" alt="driver image" width="100px">
              </div>
              <div class="col-sm-8">
                <p>Rider name</p>
                <p>+91 9999999999</p>
                <p>Amount received</p>
              </div>
            </div>
          </div>
          <div class="col-xs-6 col-lg-3">
            <div class="row">
              <div class="col-sm-4">
                <img src="https://www.indiaalliance.org/uploads/fellowsprofile/default/default.png" alt="driver image" width="100px">
              </div>
              <div class="col-sm-8">
                <p>Rider name</p>
                <p>+91 9999999999</p>
                <p>Amount received</p>
              </div>
            </div>
          </div>
          <div class="col-xs-6 col-lg-3">
            <div class="row">
              <div class="col-sm-4">
                <img src="https://www.indiaalliance.org/uploads/fellowsprofile/default/default.png" alt="driver image" width="100px">
              </div>
              <div class="col-sm-8">
                <p>Rider name</p>
                <p>+91 9999999999</p>
                <p>Amount received</p>
              </div>
            </div>
          </div>
          <div class="col-xs-6 col-lg-3">
            <div class="row">
              <div class="col-sm-4">
                <img src="https://www.indiaalliance.org/uploads/fellowsprofile/default/default.png" alt="driver image" width="100px">
              </div>
              <div class="col-sm-8">
                <p>Rider name</p>
                <p>+91 9999999999</p>
                <p>Amount received</p>
              </div>
            </div>
          </div>
          <div class="col-xs-6 col-lg-3">
            <div class="row">
              <div class="col-sm-4">
                <img src="https://www.indiaalliance.org/uploads/fellowsprofile/default/default.png" alt="driver image" width="100px">
              </div>
              <div class="col-sm-8">
                <p>Rider name</p>
                <p>+91 9999999999</p>
                <p>Amount received</p>
              </div>
            </div>
          </div>
        </div>
      </div>-->


      <div class="mapouter">
        <div class="gmap_canvas">
<iframe width="100%" height="100%" id="gmap_canvas" src="https://maps.google.com/maps?q=university%20of%20san%20francisco&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
          Werbung: <a href="https://www.pureblack.de">pureblack.de</a> 
        </div>
      </div>

    </div>


    <script type="text/javascript" src="../assets/js/driver.js"></script> 
  </body>
</html>
