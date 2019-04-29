<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>rider</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="../assets/css/standard.css">
    <link rel="stylesheet" href="../assets/css/rider.css">
  </head>
  <body>
    <div class="riderpage">

      <div class="rider_form">
        <input class="col-sm-12 col-md-6" type="text" name="" value="" placeholder="Enter current location" required="required">
        <input class="col-sm-12 col-md-6" type="text" name="" value="" placeholder="Enter your destination"required="required">
        <input class="col-sm-12 col-md-6" type="number" name="" value="" placeholder="Contact number" required="required">
        <input class="col-sm-12 col-md-6" type="text" name="" value="" placeholder="Enter your name" required="required">
      </div>
      <button class="ride_btn" type="button" name="button" onclick="available_drivers()">Go</button>



      <div class="available_drivers" id="available_drivers">
        <div class="row">
          <div class="col-xs-6 col-lg-3">
            <div class="row">
              <div class="col-sm-4">
                <img src="https://www.indiaalliance.org/uploads/fellowsprofile/default/default.png" alt="driver image" width="100px">
              </div>
              <div class="col-sm-8">
                <p>Driver Name</p>
                <p>+91 9999999999</p>
                <p>Arives in 15 mins</p>
                <button class="available_driver--btn" type="button" name="button"></button>
              </div>
            </div>
          </div>
          <div class="col-xs-6 col-lg-3">
            <div class="row">
              <div class="col-sm-4">
                <img src="https://www.indiaalliance.org/uploads/fellowsprofile/default/default.png" alt="driver image" width="100px">
              </div>
              <div class="col-sm-8">
                <p>Driver Name</p>
                <p>+91 9999999999</p>
                <p>Arives in 15 mins</p>
                <button class="available_driver--btn" type="button" name="button"></button>
              </div>
            </div>
          </div>
          <div class="col-xs-6 col-lg-3">
            <div class="row">
              <div class="col-sm-4">
                <img src="https://www.indiaalliance.org/uploads/fellowsprofile/default/default.png" alt="driver image" width="100px">
              </div>
              
              <div class="col-sm-8">
                <p>Driver Name</p>
                <p>+91 9999999999</p>
                <p>Arives in 15 mins</p>
                <button class="available_driver--btn" type="button" name="button"></button>
              </div>
            </div>
          </div>
          <div class="col-xs-6 col-lg-3">
            <div class="row">
              <div class="col-sm-4">
                <img src="https://www.indiaalliance.org/uploads/fellowsprofile/default/default.png" alt="driver image" width="100px">
              </div>
              </div>
              </div>
              <div class="col-sm-8">
                <p>Driver Name</p>
                <p>+91 9999999999</p>
                <p>Arives in 15 mins</p>
                <button class="available_driver--btn" type="button" name="button"></button>
              </div>
            </div>
          </div>
          <div class="col-xs-6 col-lg-3">
            <div class="row">
              <div class="col-sm-4">
                <img src="https://www.indiaalliance.org/uploads/fellowsprofile/default/default.png" alt="driver image" width="100px">
              </div>
              <div class="col-sm-8">
                <p>Driver Name</p>
                <p>+91 9999999999</p>
                <p>Arives in 15 mins</p>
                <button class="available_driver--btn" type="button" name="button"></button>
              </div>
            </div>
          </div>
          <div class="col-xs-6 col-lg-3">
            <div class="row">
              <div class="col-sm-4">
                <img src="https://www.indiaalliance.org/uploads/fellowsprofile/default/default.png" alt="driver image" width="100px">
              </div>
              <div class="col-sm-8">
                <p>Driver Name</p>
                <p>+91 9999999999</p>
                <p>Arives in 15 mins</p>
                <button class="available_driver--btn" type="button" name="button"></button>
              </div>
            </div>
          </div>
          <div class="col-xs-6 col-lg-3">
            <div class="row">
              <div class="col-sm-4">
                <img src="https://www.indiaalliance.org/uploads/fellowsprofile/default/default.png" alt="driver image" width="100px">
              </div>
              <div class="col-sm-8">
                <p>Driver Name</p>
                <p>+91 9999999999</p>
                <p>Arives in 15 mins</p>
                <button class="available_driver--btn" type="button" name="button"></button>
              </div>
            </div>
          </div>
          <div class="col-xs-6 col-lg-3">
            <div class="row">
              <div class="col-sm-4">
                <img src="https://www.indiaalliance.org/uploads/fellowsprofile/default/default.png" alt="driver image" width="100px">
              </div>
              <div class="col-sm-8">
                <p>Driver Name</p>
                <p>+91 9999999999</p>
                <p>Arives in 15 mins</p>
                <button class="available_driver--btn" type="button" name="button"></button>
              </div>
            </div>
          </div>
        </div>
      </div>


      <div class="mapouter">
        <div class="gmap_canvas">
          <iframe width="100%" height="100%" id="gmap_canvas" src="https://maps.google.com/maps?q=university%20of%20san%20francisco&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
          Werbung: <a href="https://www.pureblack.de">pureblack.de</a>
        </div>
      </div>

    </div>


    <!--  <script type="text/javascript" src="../assets/js/rider.js"></script>-->
  </body>
</html>
