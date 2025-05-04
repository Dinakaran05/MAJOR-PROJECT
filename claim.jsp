<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dbcon.dbcon" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%

String id=request.getParameter("id");





String status="claimrequest";
try{
	
	
	
	
	Connection con=dbcon.create();
	Statement st=con.createStatement();
	st.executeUpdate("UPDATE child_trust.childdetails SET status='"+status+"' where id='"+id+"' ");
	
	response.sendRedirect("Govresponse.jsp?valid");
}
catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
}
%>



</body>
</html>