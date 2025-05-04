
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hospital Information</title>
    <style>
        /* General styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            /* background-color: #f2f2f2; */
   background: url("https://pbs.twimg.com/media/Cmx-MIPUEAAsPhr.jpg");
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -ms-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  background-attachment: fixed;
  background-repeat: no-repeat;
  background-position: top center;
  -webkit-touch-callout: none;
  -webkit-tap-highlight-color: transparent;
      
      
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            border-radius: 5px;
        }
        .hospital-image {
            max-width: 100%;
            height: auto;
            margin-bottom: 20px;
        }
        .hospital-details {
            text-align: center;
            margin-bottom: 20px;
        }
        .hospital-name {
            font-size: 24px;
            color: #333;
            margin-bottom: 10px;
        }
        .hospital-address {
            font-size: 16px;
            color: #666;
        }
        
        /* Navbar styles */
        .navbar {
            background-color: #333;
            overflow: hidden;
        }
        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            font-size: 18px;
        }
        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
        .navbar a.active {
            background-color: #4CAF50;
            color: white;
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <div class="navbar">
        <a href="ghospital.jsp" class="active">Home</a>
        <a href="Grequest.jsp">Request</a>
        <a href="alist.jsp">Accepted list</a>
        <a href="rlist.jsp">Rejected list</a>
         <a href="glogin.jsp">Logout</a>
    </div>

        
        <!-- Other hospital information or functionalities can be added here -->
        
    </div>
</body>
</html>
 