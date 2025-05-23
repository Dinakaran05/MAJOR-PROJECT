<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Donate us</title>
 <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
 <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,700italic,400italic' rel='stylesheet' type='text/css'>
 
 <style>
 
 .donation-container {
	height: 1000px;
	font-family: 'Montserrat', sans-serif;
	font-weight: 500;
	font-size: 12px;
	text-transform: uppercase;
	margin-top: 30px;
}

.donation-box {
	width: 390px;
	height: 386px;
	background-color: #F5F5F5;
	border-top-left-radius: 4px;
	border-top-right-radius: 4px;
	position: relative;
	margin-left: auto;
	margin-right: auto;
	
	-webkit-transition: all 0.15s ease-out;
	-moz-transition: all 0.15s ease-out;
	-o-transition: all 0.15s ease-out;
	transition: all 0.15s ease-out;
}

.donation-box .title {
	background-color: #C1D82F;
	width: 100%;
	border-top-left-radius: 4px;
	border-top-right-radius: 4px;
	color: white;
	text-align: center;
	padding-top: 12px;
	padding-bottom: 12px;
	font-size: 15px;
}

.donation-box .donate-button {
	background-color: #C1D82F;
	width: 100%;
	color: white;
	text-align: center;
	padding-top: 12px;
	padding-bottom: 12px;
	font-size: 18px;
	bottom: 0px;
	position: absolute;
	cursor: pointer;
	font-weight: 800;
}

.donation-box .fields {
	width: 59%;
	display: block;
	position: absolute;
	top: 60px;
	left: 15px;
}

.donation-box .fields input {
	width: 90%;
	font-size: 17px;
	padding: 10px;
	border-radius: 4px;
	border-width: 0px;
	color: #5C5C5C;
	font-family: 'Montserrat', sans-serif;
	font-weight: 500;
	margin-bottom: 10px;
	-webkit-font-smoothing: antialiased;
}

::-webkit-input-placeholder {
   color: #cdcdcd;
   font-size: 15px;
}

:-moz-placeholder { /* Firefox 18- */
   color: #cdcdcd;
   font-size: 15px;
}

::-moz-placeholder {  /* Firefox 19+ */
   color: #cdcdcd;
   font-size: 15px; 
}

:-ms-input-placeholder {  
   color: #cdcdcd;
   font-size: 15px;
}

.donation-box .amount {
	width: 30%;
	display: block;
	position: absolute;
	top: 60px;
	right: 15px;
}

.donation-box .amount .button {
	width: 100%;
	background-color: gray;
	margin-bottom: 10px;
	text-align: center;
	color: white;
	padding: 15px 0px 15px 0px;
	border-radius: 4px;
	font-size: 20px;
	cursor: pointer;
	
	-webkit-transition: 400ms background-color;
	-moz-transition: 800ms opacity, 800ms right;
	-ms-transition: 800ms opacity, 800ms right;
	-o-transition: 800ms opacity, 800ms right;
	transition: 200ms background-color;
}

.donation-box .amount .button:hover {
	background-color: #393939;
}

.donation-box .amount .button.selected {
	background-color: #393939;
}

.donation-box .amount .button input {
	min-width: 34px;
	font-size: 20px;
	font-weight: 500;
	border: none;
	background-color: transparent;
	color: white;
	font-family: Montserrat, sans-serif;
	font-size: 20px;
	font-stretch: normal;
	font-style: normal;
	font-variant: normal;
	font-weight: 500;
	border-bottom: 2px dashed white;
	-webkit-font-smoothing: antialiased;
	
	-webkit-transition: all 0.15s ease-out;
	-moz-transition: all 0.15s ease-out;
	-o-transition: all 0.15s ease-out;
	transition: all 0.15s ease-out;
}

.set-amount {
	max-width: 96px;
}

.switch {
  position: absolute;
  top: 190px;
  left: 15px;
  margin: 20px auto;
  height: 26px;
  width: 58.5%;
  background: white;
  border-radius: 3px;
}

.switch-label {
  position: relative;
  z-index: 2;
  float: left;
  width: 49%;
  line-height: 26px;
  font-size: 11px;
  color: #5C5C5C;
  text-align: center;
  cursor: pointer;
  font-weight: bold;
}
.switch-label:active {
  font-weight: bold;
}

.switch-label-off {
  padding-left: 2px;
}

.switch-label-on {
  padding-right: 2px;
}

.switch-input {
  display: none;
}
.switch-input:checked + .switch-label {
  font-weight: bold;
  color: rgba(0, 0, 0, 0.65);
  
  -webkit-transition: 0.15s ease-out;
  -moz-transition: 0.15s ease-out;
  -o-transition: 0.15s ease-out;
  transition: 0.15s ease-out;
}
.switch-input:checked + .switch-label-on ~ .switch-selection {
  left: 114px;
}

.switch-selection {
  display: block;
  position: absolute;
  z-index: 1;
  top: 2px;
  left: 2px;
  width: 49%;
  height: 22px;
  background: #65bd63;
  border-radius: 3px;
  background-color: #C1D82F;
  
  -webkit-transition: left 0.15s ease-out;
  -moz-transition: left 0.15s ease-out;
  -o-transition: left 0.15s ease-out;
  transition: left 0.15s ease-out;
}

.checkboxes {
	position: absolute;
	top: 242px;
	left: 13px;
}

.checkboxes label {
	position: relative;
	top: -8px;
	font-size: 13px;
	color: gray;
}

.checkbox {
	-webkit-appearance: none;
	background-color: #fafafa;
	border: 1px solid #C1D82F;
	padding: 9px;
	border-radius: 3px;
	display: inline-block;
	position: relative;
	
	-webkit-transition: all 0.15s ease-out;
	-moz-transition: all 0.15s ease-out;
	-o-transition: all 0.15s ease-out;
	transition: all 0.15s ease-out;
}

.checkbox:active, .checkbox:checked:active {
	
}

.checkbox:checked {
	background-color: #C1D82F;
	border: 1px solid #C1D82F;
	color: white;
}

.checkbox:checked:after {
	content: '\2714';
	font-size: 14px;
	position: absolute;
	top: 0px;
	left: 3px;
	color: white;
}

.confirm {
	display: none;
	position: absolute;
	top: 335px;
	left: 15px;
	right: 15px;
	font-size: 16px;
	
	-webkit-transition: all 0.15s ease-out;
	-moz-transition: all 0.15s ease-out;
	-o-transition: all 0.15s ease-out;
	transition: all 0.15s ease-out;
}

.confirm i {
	font-weight: bold;
	text-decoration: underline;
	font-style: normal;
}
 
 </style>
</head>
<body>

<div class="donation-container">
            
            <div class="donation-box">
	            <div class="title">Donation Information</div>
	            
	            <div class="fields">
		            <input type="text" id="firstName" placeholder="First Name">
		            <input type="text" id="lastName" placeholder="Last Name"> 
		            <input type="text" id="email" placeholder="Email">
	            </div>
	            
	            <div class="amount">
		            <div class="button">$30</div>
		            <div class="button">$50</div>
		            <div class="button">$100</div>
		            
		            <div>
   						 <b>$Enter amount</b>
    					<input type="text" class="set-amount" style="height: 50px;" "width: 200px;" placeholder="">
					</div>
		            
		            
	            </div>
	            
	            <div class="switch">
					<input type="radio" class="switch-input" name="view" value="One-Time" id="one-time" checked="">
					<label for="one-time" class="switch-label switch-label-off">One-Time</label>
					<input type="radio" class="switch-input" name="view" value="Monthly" id="monthly">
					<label for="monthly" class="switch-label switch-label-on">Monthly</label>
					<span class="switch-selection"></span>
			    </div>
			    
			    <div class="checkboxes">
					<input type="checkbox" id="receipt" class="checkbox" />
					<label for="receipt">Email Me A Receipt</label>
					<br />
					<input type="checkbox" id="anon" class="checkbox" />
					<label for="anon">Give Anonymously</label>
					<br />
					<input type="checkbox" id="list" class="checkbox" />
					<label for="list">Add Me To Email List</label>
			    </div>
			  
			 
			    
			    <div class="confirm">
				    
			    </div>
	            
	            <div class="donate-button"><i class="fa fa-credit-card"></i> <a href ="donatedone.jsp">Donate Now</a></div>
            </div>
            
        </div>
        
        
			    

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://raw.githubusercontent.com/jerryluk/jquery.autogrow/master/jquery.autogrow-min.js"></script>

<script>
var firstName = "";
var lastName = "";
var email = "";
var dType = "";
var receipt = "";
var anon = "";
var list = "";
var amount = ""; // Variable to store the selected amount

$('.set-amount').autoGrow(0);

// Set & Highlight Donation Amount
$(".button").click(function(){
    $(".button").removeClass("selected");
    $(this).addClass("selected");
    amount = $(this).text().replace('$', ''); // Capture the selected amount
});

// Grow the donation box if they type more than 4 numbers
$(".set-amount").keyup(function(){
    if (this.value != this.value.replace(/[^0-9\.]/g, '')) {
        this.value = this.value.replace(/[^0-9\.]/g, '');
    }
});

// Handle changes in input fields
$("input").on("change", function(){
    firstName = $("#firstName").val();
    lastName = $("#lastName").val();
    email = $("#email").val();
    if ($("#one-time").prop("checked")) {
        dType = "One-Time";
    }
    if ($("#monthly").prop("checked")) {
        dType = "Monthly";
    }
    console.log("Donation Amount: " + amount); // Check if the selected amount is captured
});
</script>


</body>




</html>