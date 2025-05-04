
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
<title>Admin here</title>

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
      <th scope="col">name</th>
      
      <th scope="col">Address</th>
      <th scope="col">email</th>
      <th scope="col">contact</th>
      <th scope="col">proof</th>
      

     <!-- <th scope="col">Accept</th>
      <th scope="col">Reject</th> --> 
    </tr>
  </thead>

  <tbody>
  
  <%
  
 
/* 
 String email = request.getParameter("email");
/* HttpSession session = request.getSession(); */
/* session.setAttribute("email", email);
String password = request.getParameter("password"); */
  
  
  Connection con;
  con = dbcon.create();
  PreparedStatement ps = con.prepareStatement("SELECT * FROM `child_trust`.`details` WHERE status='rejected' ");

  ResultSet rs = ps.executeQuery();
  while (rs.next()) {
%>
  
    <tr>
     <td data-label="Name"><%= rs.getString(2) %></td>
        
     
      <td data-label="Family Count"><%= rs.getString(5) %></td>
       <td data-label="Family Count"><%= rs.getString(6) %></td>
       <td data-label="Family Count"><%= rs.getString(7) %></td>
       <td>
        <a href="proof.jsp?id=<%= rs.getString(1) %>">
          <button class="btn btn-Dark">view</button>
        </a>
      </td>
     <%--  <td>
        <a href="accept.jsp?id=<%= rs.getString(1) %>">
          <button class="btn btn-Dark">Accept</button>
        </a>
      </td>
      <td>
        <a href="reject.jsp?id=<%= rs.getString(1) %>">
          <button class="btn btn-Dark">Reject</button>
        </a>
      </td>
       --%>
     
    
    </tr>
  </tbody>
<%
  }
%>
</table>

</body>
</html>
