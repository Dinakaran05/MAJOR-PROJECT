<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dbcon.dbcon" %>
<%-- <%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %> --%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reject</title>
</head>
<body>

<%


String id=request.getParameter("id");





String status="rejected";
try{
	
	
	
	
	Connection con=dbcon.create();
	Statement st=con.createStatement();
	st.executeUpdate("UPDATE child_trust.details SET status='"+status+"' where id='"+id+"' ");
	
	response.sendRedirect("Govt_Admin_Entry.jsp?valid");
}
catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
}
%>


</body>
</html>
