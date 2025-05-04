/*package servlet;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.multipart.FilePart;
import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.ParamPart;
import com.oreilly.servlet.multipart.Part;

import dbcon.dbcon;

@WebServlet("/Duser_login")
public class Duser_login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    *//**
     * @see HttpServlet#HttpServlet()
     *//*
    public Duser_login() {
        super();
        // TODO Auto-generated constructor stub
    }

	*//**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 *//*
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	*//**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 *//*
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		 Connection con;
		  

		
			System.out.println("hello");
			
			
	
		int reg=0;
			
		String name = request.getParameter("firstname");
		String company = request.getParameter("company");
		String address = request.getParameter("address-line");
		String city = request.getParameter("city");
		String region = request.getParameter("region");
		String pincode = request.getParameter("postal-code");
		String country = request.getParameter("country");
		String amount = request.getParameter("Amount");
		String donater_state = request.getParameter("donateType");
		
		
		System.out.println(name);
	
		
		
			try {
				con=dbcon.create();
				

				PreparedStatement ps=con.prepareStatement("INSERT INTO child_trust.donaters VALUES(id,?,?,?,?,?,?,?,?,?,?)");
				ps.setString(1, name);
				ps.setString(2, company);
				ps.setString(3, address);
				ps.setString(4, city);
				ps.setString(5, region);
				ps.setString(6, pincode);
				ps.setString(7, country);
				ps.setString(8, amount);
				ps.setString(9, donater_state);
				ps.setString(10, "request");
			
				
				
				ps.executeUpdate();

				
			response.sendRedirect("registered.jsp");
				
} catch (SQLException e) {

e.printStackTrace();
}
		
}
     
	   
	}
					
					
					

		
		
	*/


package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import dbcon.dbcon;

@WebServlet("/Duser_login")
public class Duser_login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Duser_login() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection con = null;
        PreparedStatement ps = null;
        int existingamount = 0;
        try {
            // Get form parameters
            String name = request.getParameter("firstname");
            String mail = request.getParameter("email");
            String company = request.getParameter("company");
            String address = request.getParameter("address-line");
            String city = request.getParameter("city");
            String region = request.getParameter("region");
            String pincode = request.getParameter("postal-code");
            String country = request.getParameter("country");
            String amount = request.getParameter("Amount");
            String donater_state = request.getParameter("donateType");
          
            int a = Integer.parseInt(amount);
            
            // Debugging prints to check received values
            System.out.println("Received data:");
            System.out.println("Name: " + name);
            System.out.println("Company: " + company);
            System.out.println("mail: " + mail);
            System.out.println("Address: " + address);
            System.out.println("City: " + city);
            System.out.println("Region: " + region);
            System.out.println("Pincode: " + pincode);
            System.out.println("Country: " + country);
            System.out.println("Amount: " + amount);
            System.out.println("Donater State: " + donater_state);
            


            // Establish database connection
            con = dbcon.create();

            // Prepare SQL statement
            String sql = "INSERT INTO child_trust.donaters (name, company, address, city, state, postalcode, country, amount, govt, statuz, email) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)";
            ps = con.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(11, mail);
            ps.setString(2, company);
            ps.setString(3, address);
            ps.setString(4, city);
            ps.setString(5, region);
            ps.setString(6, pincode);
            ps.setString(7, country);
            ps.setInt(8, a);
            ps.setString(9, donater_state);
            ps.setString(10, "request");
          
            ps.executeUpdate();
            
            
          /*  con=dbcon.create();*/

         
            
            
            
        
			Statement st = con.createStatement();
			ResultSet rs= st.executeQuery("SELECT * FROM child_trust.totalamount where status='total' ");
		
		
			while(rs.next())
			{	
			
		existingamount = rs.getInt(2);
		
		
			
			
			
			}
            
            
            
            
            
            int finalamount = existingamount+a;
            
            
            
            PreparedStatement ps4=con.prepareStatement ("UPDATE child_trust.totalamount t SET totalamounts='"+finalamount+"' where status='total' ");
            
           
           
            ps4.executeUpdate();
            
            
            // Execute update
      
            // Store email in session
            HttpSession session = request.getSession();
            session.setAttribute("email", mail);

            // Redirect to a success page
            response.sendRedirect("Donatedlist.jsp");
        } catch (SQLException e) {
            // Handle SQL exceptions
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database error");
        } finally {
            // Close resources
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
