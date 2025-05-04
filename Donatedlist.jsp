
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dbcon.dbcon" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="javax.servlet.http.HttpSession" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Donaters</title>

<link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@400;600;700&display=swap" rel="stylesheet">
<style type="text/css">
  *, *:before, *:after {
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
  }

  body {
    font-family: 'Nunito', sans-serif;
    color: #384047;
    background-color: #28B463;
  }

  table {
    max-width: 930px;
    margin: 10px auto;
    width: 100%;
  }

  caption {
    font-size: 1.6em;
    font-weight: 400;
    padding: 10px 0;
  }

  thead th {
    font-weight: 400;
    background: #8a97a0;
    color: #FFF;
  }

  tr {
    background: #f4f7f8;
    border-bottom: 1px solid #FFF;
    margin-bottom: 5px;
  }

  tr:nth-child(even) {
    background: #e8eeef;
  }

  th, td {
    text-align: left;
    padding: 20px;
    font-weight: 300;
  }

  tfoot tr {
    background: none;
  }

  tfoot td {
    padding: 10px 2px;
    font-size: 0.8em;
    font-style: italic;
    color: #8a97a0;
  }
</style>
</head>
<body>


<!-- This is Admin approve or deny page -->

<table>
  <caption><h1>Received</h1></caption>
  <thead>
    <tr class="thead">
      <th scope="col">Name</th>  
       <th scope="col">Email</th> 
      <th scope="col">Address</th>
      <th scope="col">Organization</th>
      <th scope="col">Amount</th> 
       <th scope="col">City</th> 
      <th scope="col">State</th>
      
      
  </thead>

  <tbody>
  
  <%
 
  Connection con;
  con = dbcon.create();
  PreparedStatement ps = con.prepareStatement("SELECT * FROM `child_trust`.`donaters` ");

  ResultSet rs = ps.executeQuery();
  while (rs.next()) {
%>
  
    <tr>
     <td data-label="Name"><%= rs.getString(2) %></td>
     <td data-label="Name"><%= rs.getString(12) %></td>
      <td data-label="Family Count"><%= rs.getString(4) %></td>
       <td data-label="Family Count"><%= rs.getString(3) %></td>
       <td data-label="Family Count"><%= rs.getString(9) %></td>
         <td data-label="Family Count"><%= rs.getString(5) %></td>
       
        <td data-label="Family Count"><%= rs.getString(10) %></td>
        
      

    
    </tr>
  </tbody>
<%
  }
%>
</table>

</body>
</html>
