<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
@import url('https://fonts.googleapis.com/css?family=Raleway:400,600,900');

*{
  box-sizing:border-box;
 /* outline:1px solid ;*/
}
body{
        background: #D7272D;
        height: 100%;
        margin: 0;
        background-repeat: no-repeat;
        background-attachment: fixed;
  
}

a.contact-link {
    color: #007bff;
    text-decoration: none;
    position: relative; /* Add relative positioning */
}

a.contact-link::after {
    content: '';
    position: absolute;
    bottom: -2px; /* Adjust the position of the underscore */
    left: 0;
    width: 100%;
    height: 2px;
    background-color: #007bff; /* Color of the underscore */ 
}

a {
  color: #fff;
  text-decoration: none;
  transition: all 0.30s linear 0s;
}

.wrapper-1{
  width:100%;
  height:100vh;
  display: flex;
flex-direction: column;
}
.wrapper-2{
  padding: 30px;
  text-align:center;
}
h1{
  font-family: 'Raleway', Arial Black, Sans-Serif;
  font-size:4em;
  font-weight: 900;
  letter-spacing:3px;
  color: #fafafa;
  margin:0;
  margin-top: 40px;
  margin-bottom:40px;
}
.wrapper-2 p{
  margin:0;
  font-size:1.3em;
  color:#fafafa;
  font-family: 'Raleway', sans-serif;
  letter-spacing:1px;
  line-height: 1.5;
}
.go-home{
  background: #e83890;
  border:none;
  padding: 25px 30px;
  margin: 30px 0;
  border-radius: 5px;
  cursor: pointer;
}
.go-home:hover{
  opacity: 0.9;
}
.go-home a{
  font-family: 'Raleway', Arial Black;
  font-size: 1rem;
  font-weight: 700!important;
  text-transform: uppercase;
  letter-spacing: 2px;
  
}
.footer-like{
  margin-top: auto; 
  background: rgb(31,38,130);
  padding:6px;
  text-align:center;
}
.footer-like p{
  margin:0;
  padding:4px;
  color:#fafafa;
  font-family: 'Raleway', sans-serif;
  letter-spacing:1px;
}
.footer-like p a{
  text-decoration:none;
  color:#5892FF;
  font-weight: 600;
}

.footer-like p a:hover{
  color:#FFF;
 }

@media (min-width:360px){
  h1{
    font-size:4.5em;
  }
  .go-home{
    margin-bottom:20px;
  }
}

@media (min-width:600px){
  .thankyoucontent{
  max-width:1000px;
  margin:0 auto;
}
  .wrapper-1{
  height: initial;
  max-width:620px;
  margin:0 auto;
  margin-top:50px;
  }
  
  
}
</style>

</head>
<body>

<div class=thankyoucontent>
 <div class="wrapper-1">
    <div class="wrapper-2">
       <img src="https://i.ibb.co/Lkn7rkG/thank-you-envelope.png" alt="thank-you-envelope" border="0">
      <h1>Thank You for Your Donation!</h1>
        <p>Your contribution means a lot to us. With your support, we can continue our efforts to make a positive impact on the lives of those in need.</p>
        <p>If you have any questions or feedback, please feel free to <a href="contact.jsp" class="contact-link"><b>contact us</b></a></p>
        <p>Thank you once again for your generosity!</p>
      
      <button class="go-home"><a href="index.jsp">
        home page</a>
      </button>
    </div>
   
      <p>
      </p>
    </div>
</div>
 






</body>
</html>