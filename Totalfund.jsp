<%@ page import="dbcon.dbcon" %>
    <%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Bill</title>
<style>
body{ 

background-color: #f2e9e4;

background: linear-gradient(linear-gradient(to right, #ffc107 0%, #7955481f 100%));}
}



table,td,th {
  border: 2px solid black;
  
}
table {
  border-collapse: collapse;
  width: 90%;
}

td {
  text-align: center;
 height: 40px;
}
th{
 height: 30px;
 color: #081940;
}
.mydiv{
text-decoration:none;
float:right;
font-size:40px;

}
</style>
</head>

<body>
<%



try{
	int total=0;
	int sno=0;
	Connection con=dbcon.create();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("SELECT sum(amount) FROM child_trust.donaters where statuz='request' ");
	while(rs.next()){
		total=rs.getInt(1);
	}
	ResultSet rs2=st.executeQuery("SELECT * FROM child_trust.donaters where statuz='request'");
	while(rs2.next()){
		
	

%>
<div class="mydiv">

</div>
<br>



<%-- <div class="left-div"><h3>Card Type: <%=rs2.getString(11) %> </h3></div> --%>


<%break; } %>


<br>


<table id="customers">
<h3> Order Details</h3>
<tr>
<th>S.no</th>
<th>Name</th>
<th>company</th>
<th>Address</th>
<th>city</th>
<th>state</th>
<th>country</th>
<th>Amount</th>

<th>government</th>


<th>Email</th>







</tr>
<%
ResultSet rs1=st.executeQuery("SELECT * FROM child_trust.donaters where statuz='request' ");
while(rs1.next()){
	sno=sno+1;

%>

<tr>
<td><%out.println(sno); %></td>
<td><%=rs1.getString(2) %></td>
<td><%=rs1.getString(3) %></td>
<td><%=rs1.getString(4) %></td>
<td><%=rs1.getString(5) %></td>
<td><%=rs1.getString(6) %></td>
<td><%=rs1.getString(8) %></td>
<td><%=rs1.getString(9) %></td>
<td><%=rs1.getString(10) %></td>
<td><%=rs1.getString(12) %></td>
</tr>
<tr>
<%} %>
</table>
<h3>Total Amount: <%out.println(total); %></h3>

<a onclick="window.print();">  <button>Print</button></a>
<br><br><br><br>
<%
}

catch(Exception e)
{
	System.out.println(e);
}%>
</body>
</html>