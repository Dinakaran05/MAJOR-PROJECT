<html>
<head>

<title>Children Healthcare Donation | Homepage</title>

<style>

@import "compass/css3";

body {
  background-image: url("images/unnamed.jpg");
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
}


ul > li > a:first-child:nth-last-child(2){
background: red;
}

/*a is all the links inside the li class in the nav class. I specified that it was not the only a link*/

nav > li > a:not(:only-child){
  position: relative; 
  position: absolute;   
  top: 40% ;
  right:5px;  
  }

nav{
display:block;
text-align: center;
  ul{
    margin:0;
    padding: 0;
    list-style-type: none;
  }
}

.nav a {
  display:block; 
  background: #111; 
  color: white; 
  text-decoration: none;
  padding: 0.8em 1.8em;
  text-transform: uppercase;
  font-size: 80%;
  letter-spacing: 2px;
  text-shadow: 0 -1px 0 #000;
  position: relative;
}

.nav{  
  vertical-align: top; 
  display: inline-block;
}

.nav li {
  position: relative;
  float: left; 
  margin-right: 1px; 
}

/* arrow hover styling */
.nav li:hover > a { 
  color:#9c1b30	; 
}
  
/*slideshow stuff */
.slides {
   margin: 0; /*need to reset to 0,padding too*/
	 padding: 0;
   width: 600px;
   height: 300px;
   margin: 0px auto;
   overflow: hidden;
}

.allslides {
  margin: 0;
	padding: 0;
   width: 1800px; 
   -webkit-animation: slide 8s ease infinite;
}

.slides .slide {
   width: 600px;
   height: 300px;
   float: left;
  }

/*takes the nth object in it's class and applies background:url() command*/

.slides div:nth-of-type(1) {
   background:url(https://i.imgur.com/TbjsEM5.png);
}

.slides div:nth-of-type(2) {
   background:url(https://i.imgur.com/3H3qo48.png);
}

.slides div:nth-of-type(3) {
   background:url(https://i.imgur.com/3H3qo48.png);
}


/*animation to switch through slides, moves image from the left margin x px and then negative moves it back. */

@-webkit-keyframes slide {
  15% {margin-left: 0px;} 
  30% {margin-left: 0px;}
  45% {margin-left: -600px;}
  60% {margin-left: -600px;}
  75% {margin-left: -1200px;}
  90% {margin-left: -1200px;}
  100% {margin-left: 0px;}
  }
  
  
/* Footer styles */
.footer {
  background-color: #111; /* Dark background color */
  color: white; /* Text color */
  padding: 20px; /* Padding around the content */
  text-align: center; /* Center-align the text */
  position: fixed; /* Position the footer */
  bottom: 0; /* Align it to the bottom of the viewport */
  left: 0; /* Align it to the left edge */
  width: 100%; /* Make it span the full width of the viewport */
}

.footer p {
  margin: 0; /* Remove default margin */
}

.footer a {
  color: white; /* Link color */
  text-decoration: none; /* Remove underline */
}
  
</style>

<body> 

<center> <img src="https://i.imgur.com/UMXRDXs.png">   </center>

  <!--nav tag prepares for a list of navigation links-->
  
  <center>
  
   <nav>
    <ul class="nav">
      <li><a href="GovtAdmin_RegLogin.jsp">Govt_Admin</a>
      <li><a href="Trusts_RegLogin.jsp">Trusts</a></li>
      <li><a href="dreg.jsp">Donate us</a></li>
       <li><a href="ghospital.jsp">Govt_Hospital_Management</a></li> 
      <li><a href="map.jsp">Map</a></li>
      <li><a href="contact.jsp">Contact Us</a></li>
    </ul>
   </nav>
  
  <!--Next is going to be the slideshow, div is a container -->
<div class="slides">
  <div class="allslides">
    <div class="slide"></div>
    <div class="slide"></div>
    <div class="slide3="></div>
  </div>
</div>
  <!--writing stuff-->
  <h3 style="color: white;">
    Giving your money is just as important as knowing where it ends up</h3>
  <p style="color: white;">We offer a service to the people, for the people. <br>Welcome to a website that will provide information to make sure your donation reaches it's intended target.

<!-- Footer -->
	<footer class="footer">
  		<p>Contact us: <a href="mailto:example@example.com">example@example.com</a> | Phone: +123456789</p>
 	 	<p>&copy; 2024 Your Website</p>
	</footer>

</body>


</html>