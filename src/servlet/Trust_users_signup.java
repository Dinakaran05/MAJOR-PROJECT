package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Statement;

import dbcon.dbcon;


@WebServlet("/Trust_users_signup")
public class Trust_users_signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Trust_users_signup() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    Connection con;
    
    String mail = request.getParameter("email");
    String pwd = request.getParameter("password");
  
    HttpSession session = request.getSession();
    
    try {
    	con = dbcon.create();
    	 
    	 
        PreparedStatement ps=con.prepareStatement( "SELECT * FROM child_trust.details WHERE email=? AND password=? AND status='approve'");
        
        ps.setString(1, mail);
        ps.setString(2, pwd);
        ResultSet rs = ps.executeQuery();
  	  while (rs.next()) {

		
		session.setAttribute("trustemail", mail);
        
        
            response.sendRedirect("Tsuccess.jsp");
        
    } }catch (SQLException e) {
        e.printStackTrace();
        // Handle database errors
    } 
}}
