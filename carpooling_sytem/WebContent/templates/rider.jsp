<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
  
  
  
  function validateriderform() {
  	//console.log("fname blank")
  	var pickup=document.getElementById("pickup").value
  	var drop=document.getElementById("drop").value
  	var name=document.getElementById("name").value
  	// gender=false;
  	// if(document.getElementById('gender1').checked) {
  		//  gender=true;
  		// }else if(document.getElementById('gender2').checked) {
  		//	gender=true;
  		// }
  		

  		//var gender=document.getElementById("gender").value
  	var phone=document.getElementById("phone").value
  	
  	
  	if(pickup=="")
  		{
  		console.log("pickup blank")
  		document.getElementById("pickup").style.background = "red";
  	  		}
  	else    	if(drop=="")
		{
		document.getElementById("drop").style.background = "red";
		}
  	else    	if(name=="")
		{
		document.getElementById("name").style.background = "red";
		}
  	//   	if(gender==false)
	//	{
  	//	document.getElementById("gender_id").style.color = "red";	
	//	document.getElementById("gender_id").style.background = "aqua";
	//	document.getElementById("gender_id").style.border = "inset 2px black ";
	//	document.getElementById("gender_id").innerHTML = "Please Select the gender";
	//	}-->
		//else    	if(gender=="")
		//{
		//document.getElementById("gender").style.background = "red";
		//}
  	else    	if(phone=="")
		{
		document.getElementById("phone").style.background = "red";
		}
  	
  	else{
  		document.riderform1.action="riderdisplay.jsp";
  		document.riderform1.submit()
	}
}
  </script>
  <body>
    <form name="riderform1">
    <div class="riderpage">

      <div class="rider_form">
      
        <input class="col-sm-12 col-md-6" type="text" id="pickup" name="pickup" value="" placeholder="Enter pickup point" required="required"/>
        <input class="col-sm-12 col-md-6" type="text" name="drop" id="drop"value="" placeholder="Enter drop point"required="required"/>
        <input class="col-sm-12 col-md-6" type="text" id="name"name="name" value="" placeholder="Enter your name"required="required"/>
        <input class="col-sm-12 col-md-6" type="number"id="phone" name="phone" value="" placeholder="mobile number"required="required"/>
      </div>  
      </div>
       <div class="driver_btns row">
        <div class="col-xs-12 col-lg-6">
          <button class="drive_btn" onclick="validateriderform()"type="button" name="button">search rides</button>
        </div>
      </div>
</form>  
     

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
