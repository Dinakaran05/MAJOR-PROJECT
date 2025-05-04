<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dbcon.dbcon" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="javax.servlet.http.HttpSession" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donaters</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style type="text/css">
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f4f7f6;
            margin: 0;
            padding: 0;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px auto;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid #ddd;
            font-weight: 400;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #e9ecef;
        }

        caption {
            font-size: 1.6em;
            font-weight: bold;
            padding: 10px 0;
            text-align: center;
            margin-bottom: 20px;
        }

        .btn {
            display: inline-block;
            background-color: green;
            color: white;
            border: none;
            padding: 8px 16px;
            text-align: center;
            text-decoration: none;
            font-size: 14px;
            border-radius: 4px;
            transition: background-color 0.3s;
            cursor: pointer;
        }

 .btn-danger {
            display: inline-block;
            background-color: red;
            color: white;
            border: none;
            padding: 8px 16px;
            text-align: center;
            text-decoration: none;
            font-size: 14px;
            border-radius: 4px;
            transition: background-color 0.3s;
            cursor: pointer;
        }


        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<table>
    <caption>Received Fund Requests</caption>
    <thead>
        <tr>
            <th>Child ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Child Proof</th>
       
            <th>Mobile no</th>
            <th>instructions</th>
       <th>Amount</th>
       <th>Goverment Approval id</th>
     
       <th>Medical Approval id</th>
     
       <th>accept</th>
       <th>reject</th>
     
     
        </tr>
    </thead>
    <tbody>
    <% 
        Connection con = dbcon.create();
        PreparedStatement ps = con.prepareStatement("SELECT * FROM `child_trust`.`childdetails` WHERE status='claimrequest' ");
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
    %>
        <tr>
            <td><%= rs.getString(12) %></td>
            <td><%= rs.getString(2) %></td>
            <td><%= rs.getString(3) %></td>
          
             <td><a href="childprooffs.jsp?id=<%= rs.getString(4) %>"><button class="btn">View</button></a></td>
          
            <td><%= rs.getString(5) %></td>
            <td><%= rs.getString(7) %></td>
         
          <td><%= rs.getString(8) %></td>
         
          <td><%= rs.getString(9) %></td>
          <td><%= rs.getString(10) %></td>
         
            <td><a href="gaccept.jsp?id=<%=rs.getString(1)%>&&phone=<%=rs.getString(3)%>"><button class="btn">Accept</button></a></td>
           <td><a href="greject.jsp?id=<%=rs.getString(1)%>&&name=<%=rs.getString(2)%>"><button class="btn-danger">Reject</button></a></td>
       
       
        </tr>
    <% 
        }
        rs.close();
        ps.close();
        con.close();
    %>
    </tbody>
</table>

</body>
</html>
