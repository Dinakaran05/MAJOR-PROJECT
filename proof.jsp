<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dbcon.dbcon" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Proof</title>
</head>
<body>
<%
String id = request.getParameter("id");
  
  Connection con;
  con = dbcon.create();
  PreparedStatement ps = con.prepareStatement("SELECT * FROM `child_trust`.`details` WHERE id='"+id+"'");

  ResultSet rs = ps.executeQuery();
  while (rs.next()) {
%>

  <embed src="local/<%= rs.getString(4) %>" width="600" height="800"></embed>

<%
  }
%>

</body>
</html>