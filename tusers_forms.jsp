<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
  <head>
 <link rel="stylesheet" type="text/css" href="sub.css">
  <title> Sub Form</title>
  
  <style>
  body {
  background-color: grey;
  font-size: 18px;
}
#container {
  background-color: FloralWhite;
  width: 80%;
  margin: auto;
  border-radius: 5px;
  padding: 2%;
}

input[type=text] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
}
input[type=tel], [type=email] {
  width: 20%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
}
legend {
  font-size: 20px;
  font-weight: bold;
  padding: 5px;
  color: navy;
}
textarea{
  width:100%;
  height: 150px;
  padding: 12px 20px;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  background-color: #f8f8f8;
}
input[type=submit], [type=reset] {
  background-color: green;
  color: white;
  padding: 15px;
  font-size:15px;
  cursor: pointer;
}
  
  </style>
  
  
  </head>
  <body>
    <div id="container">
    <form action="Trustuserformsrequest" method="post"  enctype="multipart/form-data">
        <fieldset>
          <legend> Asking Fund Form</legend>
          
        <label for="fname">Name</label><br>
        <input type="text" id="fname" name="fname" placeholder=""><br>
        
        <label for="phone">Phone</label><br>
        <input type="tel" id="phone" name="phone"><br>
        
        <label for="email">E-mail Address</label><br>
        <input type="email" id="email" name="email"><br> <br>
         
          <!-- File Upload -->
    <label for="fileUpload">Upload File:</label>
    <input type="file" id="fileUpload" name="fileUpload"><br><br>
         
     <fieldset>
    <legend>Children's Health Initiatives</legend>

    <div>
        <input type="checkbox" id="immunization" name="health_initiatives" value="immunization">
        <label for="immunization">Childhood Immunization Programs</label>
    </div>

    <div>
        <input type="checkbox" id="pediatric_healthcare" name="health_initiatives" value="pediatric_healthcare">
        <label for="pediatric_healthcare">Access to Pediatric Healthcare</label>
    </div>

    <div>
        <input type="checkbox" id="nutrition" name="health_initiatives" value="nutrition">
        <label for="nutrition">Nutrition and Healthy Eating Initiatives</label>
    </div>

    <div>
        <input type="checkbox" id="mental_health" name="health_initiatives" value="mental_health">
        <label for="mental_health">Mental Health Services for Children</label>
    </div>

    <div>
        <input type="checkbox" id="physical_activity" name="health_initiatives" value="physical_activity">
        <label for="physical_activity">Physical Activity and Sports Programs</label>
    </div>

    <div>
        <input type="checkbox" id="preventive_healthcare" name="health_initiatives" value="preventive_healthcare">
        <label for="preventive_healthcare">Preventive Healthcare Programs</label>
    </div>

    <div>
        <input type="checkbox" id="safe_environment" name="health_initiatives" value="safe_environment">
        <label for="safe_environment">Safe Environment Initiatives</label>
    </div>

    <div>
        <input type="checkbox" id="substance_abuse_prevention" name="health_initiatives" value="substance_abuse_prevention">
        <label for="substance_abuse_prevention">Substance Abuse Prevention Programs</label>
    </div>

    <div>
        <input type="checkbox" id="dental_vision_care" name="health_initiatives" value="dental_vision_care">
        <label for="dental_vision_care">Access to Dental and Vision Care</label>
    </div>

    <div>
        <input type="checkbox" id="early_childhood_development" name="health_initiatives" value="early_childhood_development">
        <label for="early_childhood_development">Family Support and Early Childhood Development</label>
    </div>

</fieldset>

         
    <!--      
    <fieldset>
    <legend>Food Security Initiatives</legend>

    <div>
        <input type="checkbox" id="food_assistance" name="food_initiatives" value="food_assistance">
        <label for="food_assistance">Food Assistance Programs</label>
    </div>

    <div>
        <input type="checkbox" id="nutrition_education" name="food_initiatives" value="nutrition_education">
        <label for="nutrition_education">Nutrition Education and Awareness Campaigns</label>
    </div>

    <div>
        <input type="checkbox" id="community_gardens" name="food_initiatives" value="community_gardens">
        <label for="community_gardens">Support for Community Gardens and Urban Farming</label>
    </div>

    <div>
        <input type="checkbox" id="school_meals" name="food_initiatives" value="school_meals">
        <label for="school_meals">Free or Subsidized School Meals Programs</label>
    </div>

    <div>
        <input type="checkbox" id="food_banks" name="food_initiatives" value="food_banks">
        <label for="food_banks">Support for Food Banks and Pantries</label>
    </div>

    <div>
        <input type="checkbox" id="food_sustainability" name="food_initiatives" value="food_sustainability">
        <label for="food_sustainability">Promotion of Sustainable Food Practices</label>
    </div>
</fieldset>
     -->
  <!--         
     <fieldset>
    <legend>Shelter and Housing Support</legend>

    <div>
        <input type="checkbox" id="affordable_housing" name="housing_initiatives" value="affordable_housing">
        <label for="affordable_housing">Affordable Housing Development</label>
    </div>

    <div>
        <input type="checkbox" id="homelessness_prevention" name="housing_initiatives" value="homelessness_prevention">
        <label for="homelessness_prevention">Homelessness Prevention Programs</label>
    </div>

    <div>
        <input type="checkbox" id="emergency_shelters" name="housing_initiatives" value="emergency_shelters">
        <label for="emergency_shelters">Emergency Shelters and Temporary Housing</label>
    </div>

    <div>
        <input type="checkbox" id="rent_assistance" name="housing_initiatives" value="rent_assistance">
        <label for="rent_assistance">Rental Assistance Programs</label>
    </div>

    <div>
        <input type="checkbox" id="housing_counseling" name="housing_initiatives" value="housing_counseling">
        <label for="housing_counseling">Housing Counseling and Support Services</label>
    </div>

    <div>
        <input type="checkbox" id="public_housing" name="housing_initiatives" value="public_housing">
        <label for="public_housing">Public Housing Maintenance and Improvement</label>
    </div>
</fieldset>
 -->
	<!-- 	<fieldset>
    <legend>Basic Needs and Support Services</legend>

    <div>
        <input type="checkbox" id="healthcare_access" name="support_initiatives" value="healthcare_access">
        <label for="healthcare_access">Access to Healthcare and Medical Services</label>
    </div>

    <div>
        <input type="checkbox" id="utility_assistance" name="support_initiatives" value="utility_assistance">
        <label for="utility_assistance">Utility Bill Assistance Programs</label>
    </div>

    <div>
        <input type="checkbox" id="financial_aid" name="support_initiatives" value="financial_aid">
        <label for="financial_aid">Financial Aid and Cash Assistance</label>
    </div>

    <div>
        <input type="checkbox" id="transportation_support" name="support_initiatives" value="transportation_support">
        <label for="transportation_support">Transportation Support for Low-Income Families</label>
    </div>

    <div>
        <input type="checkbox" id="childcare_services" name="support_initiatives" value="childcare_services">
        <label for="childcare_services">Affordable Childcare and Early Education Programs</label>
    </div>

    <div>
        <input type="checkbox" id="legal_aid" name="support_initiatives" value="legal_aid">
        <label for="legal_aid">Legal Aid and Advocacy Services</label>
    </div>
</fieldset>
		 -->
		
		
		
          <legend>Special Instructions</legend>
      <textarea name="message">
          </textarea>
   </fieldset> 
    <label for="phone">Child id</label><br>
        <input type="text" id="phone" name="cid"><br>
        
   <input type="submit" name"submit">
    <input type="reset" name"reset">
    </form>
    </div>
    </body>
     </html>