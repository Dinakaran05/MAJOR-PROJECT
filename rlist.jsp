
 
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
    <title>Rejected Page</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style type="text/css">
        body {
            font-family: 'Roboto', sans-serif;
            color: #384047;
            background-color: white;
            margin: 0;
            padding: 0;
        }

        table {
            max-width: 930px;
            margin: 20px auto;
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
        }

        caption {
            font-size: 1.6em;
            font-weight: bold;
            padding: 10px 0;
            text-align: center;
            margin-bottom: 20px;
            background-color: black;
            color: white;
            border-radius: 8px 8px 0 0;
        }

        thead th {
            font-weight: bold;
            background-color: #4CAF50;
            color: white;
            padding: 12px;
            text-align: center;
        }

        tbody tr {
            transition: background-color 0.3s;
        }

        tbody tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tbody tr:hover {
            background-color: #e9ecef;
        }

        td {
            padding: 12px;
            text-align: center;
        }
    </style>
</head>
<body>

<table>
    <caption>Rejected List</caption>
    <thead>
        <tr>
            <th scope="col">Child ID</th>
            <th scope="col">Government Approval ID</th>
            <th scope="col">Medical Approval ID</th>
            <th scope="col">Amount Allocated</th>
             <th scope="col">Trust name</th>
            <th scope="col">Email</th>
        </tr>
    </thead>
    <tbody>
        <% 
            Connection con = dbcon.create();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM `child_trust`.`childdetails` WHERE status='rejected' ");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getString(12) %></td>
            <td><%= rs.getString(9) %></td>
            <td><%= rs.getString(10) %></td>
            <td><%= rs.getString(8) %></td>
             <td><%= rs.getString(2) %></td>
            <td><%= rs.getString(3) %></td>
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
 