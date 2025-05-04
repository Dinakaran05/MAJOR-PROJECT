 <%@ page import="dbcon.dbcon" %>
    <%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Amount</title>
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


    body {
        background-color: #f2e9e4;
        background: linear-gradient(to right, #ffc107 0%, #7955481f 100%);
    }
    table, td, th {
        border: 2px solid black;
    }
    table {
        border-collapse: collapse;
        width: 90%;
        margin-top: 20px; /* Add margin-top for spacing */
    }
    td, th {
        text-align: center;
        height: 40px;
    }
    th {
        height: 30px;
        color: #081940;
    }
    .mydiv {
        text-decoration: none;
        float: right;
        font-size: 40px;
    }
    /* Center align contents of amount-input */
    .amount-input {
        margin-top: 20px;
        text-align: center; /* Center align contents */
    }
    .amount-input form {
        display: inline-block; /* Ensure form elements stay in line */
    }
    .amount-input label {
        display: block; /* Ensure label occupies full width */
        margin-bottom: 10px; /* Add space below label */
    }
    .amount-input input[type="number"] {
        padding: 10px;
        font-size: 16px;
        width: 200px;
        margin-right: 10px; /* Add spacing between input and button */
    }
    .amount-input button {
        padding: 10px 20px;
        font-size: 16px;
        background-color: #4CAF50;
        color: white;
        border: none;
        cursor: pointer;
    }
	/* 
	/* Button-like link styling */
        .button-link {
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border: none;
            cursor: pointer;
            font-size: 16px;
            border-radius: 5px;
        }
        .button-link:hover {
            background-color: #45a049;
        } */


</style>
</head>

<body>
<%
	
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String file = request.getParameter("file");
		String phone = request.getParameter("phone");
		String health = request.getParameter("health");
		String instructions = request.getParameter("instructions");
		String childid = request.getParameter("cid");
	


try{
	int total=0;
	int sno=0;
	Connection con=dbcon.create();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("SELECT sum(amount) FROM child_trust.donaters where statuz='request' ");
	while(rs.next()){
		total=rs.getInt(1);
	
	ResultSet rs2=st.executeQuery("SELECT * FROM child_trust.donaters where statuz='request'");
	while(rs2.next()){
		
		

%>
<div class="mydiv">

</div>
<br>



<%break; } %>


<br>


<table id="customers">
<h3> Details</h3>
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

<!-- Input field and submit button -->
<div class="amount-input">

  <form action="Submitamount" method="post">          
      <input type="hidden" value="<%=name %>" id="enterAmount" name="name" required>
      <input type="hidden" value="<%=email %>" id="enterAmount" name="email" required>
      <input type="hidden" value="<%=file %>" id="enterAmount" name="file" required>
      <input type="hidden" value="<%=phone %>" id="enterAmount" name="phone" required>
      <input type="hidden" value="<%=health %>" id="enterAmount" name="health" required>
      <input type="hidden" value="<%=instructions %>" id="enterAmount" name="instructions" required><br>
         <input type="hidden" value="<%=childid %>" id="enterAmount" name="cid" required>
      <label for="enterAmount">Enter Amount:</label>
        <input type="number" id="enterAmount" name="amount" required>
      
       <label for="Govid">Govt approval id:</label>
        <input type="number" id="Govid" name="Govid" required><br>
        
         <label for="Mvid">Medical approval id:</label>
        <input type="number" id="Mvid" name="Mvid" required><br>
        
        
        	<button type="submit">Submit</button>
       
   </form>
</div>

<%
}}
catch(Exception e)
{
	System.out.println(e);
}%>



</body>
</html> 
