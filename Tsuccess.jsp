<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="dbcon.dbcon" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Trust home</title>

<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>






<style>


* {

    background-color: #023349;
    font-family: proxima_nova_rgregular, Helvetica, Arial, sans-serif;

}

.container {
    padding-left: 80px;
    padding-right: 80px;
}

/* =========================================================================================================================
                                                         NAVBAR
==============================================================================================================================  */
* {
    margin: 0;
    padding: 0;
    color: #f2f5f7;
    /* font-family: sans-serif; */
    font-family: proxima_nova_rgregular, Helvetica, Arial, sans-serif;
    font-weight: 400;
}

body {
    overflow-x: hidden;
}

nav {
    height: 5rem;
    width: 100vw;
    background-color: #023349;
    /* box-shadow: 0 3px 20px rgba(0, 0, 0, 0.2); */
    display: flex;
    position: fixed;
    z-index: 10;
}

/* =========================================================================================================================
                                                         LOGO
==============================================================================================================================  */

.logo {
    /* padding: 1vh 1vw; */
    text-align: center;
}

.logo img {
    height: 5rem;
    width: 6rem;
}







/*Styling Links*/
.nav-links {
    display: flex;
    list-style: none;

    width: 88vw;
    padding: 0 0.7vw;
    justify-content: space-evenly;
    align-items: center;
    text-transform: uppercase;
}

.nav-links li a {
    text-decoration: none;
    margin: 0 0.7vw;
}

.nav-links li a:hover {
    color: #61DAFB;
}

.nav-links li {
    position: relative;
}

.nav-links li a::before {
    content: "";
    display: block;
    height: 3px;
    width: 0%;
    background-color: #61DAFB;
    position: absolute;
    transition: all ease-in-out 250ms;
    margin: 30% 0 0 0;
}

.nav-links li a:hover::before {
    width: 90%;
}

/*Styling Buttons*/
.login-button {
    color: #131418;
    background-color: #61DAFB;
    border: 1.5px solid #61DAFB;
    border-radius: 2em;
    padding: 0.6rem 0.8rem;
    font-size: 1rem;
    cursor: pointer;
}

.login-button:hover {
    color: #f2f5f7;
    background-color: transparent;
    border: 1.5px solid #f2f5f7;
    transition: all ease-in-out 350ms;
}

.join-button {
    color: #131418;
    background-color: #61DAFB;
    border: 1.5px solid #61DAFB;
    border-radius: 2em;
    padding: 0.6rem 0.8rem;
    font-size: 1rem;
    cursor: pointer;
}

.join-button:hover {
    color: #f2f5f7;
    background-color: transparent;
    border: 1.5px solid #f2f5f7;
    transition: all ease-in-out 350ms;
}

/*Styling Hamburger Icon*/
.hamburger div {
    width: 30px;
    height: 3px;
    background: #f2f5f7;
    margin: 5px;
    transition: all 0.3s ease;
}

.hamburger {
    display: none;
}

/*Stying for small screens*/
@media screen and (max-width: 800px) {
    nav {
        position: fixed;
        z-index: 3;
    }

    .hamburger {
        display: block;
        position: absolute;
        cursor: pointer;
        right: 5%;
        top: 50%;
        transform: translate(-5%, -50%);
        z-index: 2;
        transition: all 0.7s ease;
    }

    .nav-links {
        position: fixed;
        background: #2da4db;
        height: 100vh;
        width: 100%;
        flex-direction: column;
        clip-path: circle(50px at 90% -20%);
        -webkit-clip-path: circle(50px at 90% -10%);
        transition: all 1s ease-out;
        pointer-events: none;
    }

    .nav-links.open {
        clip-path: circle(1000px at 90% -10%);
        -webkit-clip-path: circle(1000px at 90% -10%);
        pointer-events: all;
    }

    .nav-links li {
        opacity: 0;
    }

    .nav-links li:nth-child(1) {
        transition: all 0.5s ease 0.2s;
    }

    .nav-links li:nth-child(2) {
        transition: all 0.5s ease 0.4s;
    }

    .nav-links li:nth-child(3) {
        transition: all 0.5s ease 0.6s;
    }

    .nav-links li:nth-child(4) {
        transition: all 0.5s ease 0.7s;
    }

    .nav-links li:nth-child(5) {
        transition: all 0.5s ease 0.8s;
    }

    .nav-links li:nth-child(6) {
        transition: all 0.5s ease 0.9s;
        margin: 0;
    }

    .nav-links li:nth-child(7) {
        transition: all 0.5s ease 1s;
        margin: 0;
    }

    li.fade {
        opacity: 1;
    }
}

/*Animating Hamburger Icon on Click*/
.toggle .line1 {
    transform: rotate(-45deg) translate(-5px, 6px);
}

.toggle .line2 {
    transition: all 0.7s ease;
    width: 0;
}

.toggle .line3 {
    transform: rotate(45deg) translate(-5px, -6px);
}





/* ===============================================================================================
                                                BODY IMAGE
===================================================================================================  */

.image_side {
    height: 0px;
    width: 0px;
    padding-top: 13%;
    padding-left: 55%;
    width: 52rem;
    box-sizing: border-box;
}

@media only screen and (max-width: 520px) {

    img {
        max-width: 100% !important;
    }
}

@media (max-width: 1024px) {
    img {
        max-width: 100%;
    }
}

img {
    vertical-align: middle;
    border: 0;
}

/* ===============================================================================================
                            Heading
===================================================================================================  */

:root {
    --animate-duration: 1s;
    --animate-delay: 1s;
    --animate-repeat: 1;
}

.heading {
    /* padding-top: 20px; */
    box-sizing: border-box;
    display: block;
    padding-top: 8%;
    font-size: 60px;
    font-weight: 900;
    color: #13cece;
    margin-bottom: 1%;
}

@media screen and (min-width: 601px) {
    div.example {
        font-size: 80px;
    }
}

/* ===============================================================================================
                            DISCRIPTION
===================================================================================================  */

.description {
    box-sizing: border-box;
    -webkit-text-size-adjust: 100%;
    line-height: 1.42857143;

    display: block;
    color: white;
    font-size: 1rem;
    margin-bottom: 4%;
    font-weight: 600;
}

@media screen and (min-width: 601px) {
    div.example {
        -webkit-text-size-adjust: 100%;
        font-size: 80px;
    }
}

/* ===============================================================================================
                            BUTON
===================================================================================================  */
a.button3 {
    display: inline-block;
    padding: 0.3em 1.2em;
    margin: 0 0.3em 0.3em 0;
    border-radius: 2em;
    box-sizing: border-box;
    text-decoration: none;
    font-weight: 500;
    font-size: larger;
    color: #FFFFFF;
    background-color: #13cece;
    text-align: center;
    transition: all 0.2s;
}

a.button3:hover {
    background-color: #049ff8;
}

@media all and (max-width:30em) {
    a.button3 {
        display: block;
        margin: 0.2em auto;
    }
}


</style>

</head>





<body>


    <!--==================================================================================================
                                                CONTAINER
    ===================================================================================================== -->
    <div class="container">

        <!-- ===============================================================================================
                                                NAVBAR
  =================================================================================================== -->
        <div class="navbar">

            <nav>
                <div class="logo">
                    <img src="https://st2.depositphotos.com/1494134/5759/v/450/depositphotos_57597171-stock-illustration-child-health-vector-logo-design.jpg" alt="Logo Image">
                </div>
                <div class="hamburger">
                    <div class="line1"></div>
                    <div class="line2"></div>
                    <div class="line3"></div>
                </div>
                <ul class="nav-links">
                    <li><a href="index.jsp">Home</a></li>
                
                    <li><a href="Govresponse.jsp">Govt Response</a></li>
                    <li><a href="alist.jsp">Accepted list</a></li>
                  
                    <li><a href="rlist.jsp">Rejected list</a></li>
                   <li><a href="Tuser_Login.jsp">Logout</a></li>
                  
                   <!--  <li><button class="join-button" href="get_started.html">JOIN</button></li>
                    <li><button class="login-button" href="#">Hello</button></li> -->
                </ul>
            </nav>
            <script src="javascript/nav.js"></script>
        </div>


        <!-- ===============================================================================================
                                                BODY IMAGE
  =================================================================================================== -->

        <div class="body">
            <div class="image_side">
                <img src="https://images.unsplash.com/photo-1488521787991-ed7bbaae773c?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8Y2hhcml0aWVzfGVufDB8fDB8fHww" alt="Image" class="responsive">
            </div> 
            
            


            <!-- ===============================================================================================
                                                HEADING
  =================================================================================================== -->

            <div class="heading">
                Hello There


                <br>
                Or

                <br>
                Hii There



            </div>


            <!-- ===============================================================================================
                                                DISCRIPTION
  =================================================================================================== -->
            <div class="description ">

                As per your convenience <br>edit anything you want to edit.

            </div>


            <!-- ===============================================================================================
                                                BUTTON
  =================================================================================================== -->


            <div>
                <a href="tusers_forms.jsp" target="_blank" class="button3">Ask Help</a>
            </div>

        </div>
    </div>
    
    
<%--     <%


String id=request.getParameter("id");





String status="approve";
try{
	
	
	
	
	Connection con=dbcon.create();
	Statement st=con.createStatement();
	st.executeUpdate("UPDATE child_trust.details SET status='"+status+"' where id='"+id+"' ");
	
	response.sendRedirect("paymentdone.jsp?valid");
}
catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
}
%>
  --%>   
    
    

</body>


</html>