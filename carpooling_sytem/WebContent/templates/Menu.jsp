<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu</title>
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
  }

h1{
text-align: center;
}
ul {
  
  list-style-type: none;
  margin: 0;
  padding: 0;
  height: 695px;
  width: 1395px;
}
.image
{

background-image: url('share.jpg');
background-repeat: no-repeat;
font-family: 'Roboto', sans-serif;
margin-left: 200px;
margin-top: 100px;
margin-down: 100px;
height: 800px;
width: 1200px;
}

li a { 
 
  display: block;
  color: #000;
  padding: 32px 64px;
  width: 75%;
  text-decoration: none;
}
li
{
margin-left:500px;
}
li a:hover {
  color:white;
}
/*
h1{
text-align: center;
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  height: 695px;
  width: 1395px;
}
.image
{
background-image: url('share.jpg');
font-family: 'Roboto', sans-serif;}

li a { 
 text-align: center;
  display: block;
  color: #000;
  padding: 32px 64px;
  width: 100%;
  text-decoration: none;
}
li a:hover {
  
  color:white;
}*/
</style>
</head>
<body bgcolor="aqua">
<div class="image">
<h1>Car Pool</h1>

<ul>

  <li><a href="templates/driver.jsp">DRIVER</a></li>
  <li><a href="templates/rider.jsp">  RIDER</a></li>
  <li><a href="templates/History.jsp">HISTORY</a></li>
  <li><a href="templates/billing.jsp">RIDE FARES</a></li>
  
</ul>
</div>
</body>
</html>