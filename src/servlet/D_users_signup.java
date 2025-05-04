package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbcon.dbcon;

/**
 * Servlet implementation class D_users_signup
 */
@WebServlet("/D_users_signup")
public class D_users_signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public D_users_signup() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		 Connection con = null;
		    PreparedStatement ps = null;
		    java.sql.ResultSet rs = null;
		    
		    String mail = request.getParameter("email");
		    String pwd = request.getParameter("password");
		    
		    try {
		        con = dbcon.create();
		        String query = "SELECT * FROM child_trust.donated_users WHERE email=? AND password=?";
		        ps = con.prepareStatement(query);
		        ps.setString(1, mail);
		        ps.setString(2, pwd);
		        rs =  ps.executeQuery();
		        
		        if (rs.next()) {
		            // Login successful, user found in the database
		            // Redirect to a success page or perform further actions
		            response.sendRedirect("Dsuccess.jsp");
		        } else {
		            // Login failed, user not found or incorrect credentials
		            // Redirect back to the login page with an error message
		            response.sendRedirect("Duser_Login.jsp?error=invalidCredentials");
		        }
		    } catch (SQLException e) {
		        e.printStackTrace();
		        // Handle database errors
		    } finally {
		        // Close resources
		        try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
		        try { if (ps != null) ps.close(); } catch (SQLException e) { e.printStackTrace(); }
		        try { if (con != null) con.close(); } catch (SQLException e) { e.printStackTrace(); }
		    }
		
	}

}
