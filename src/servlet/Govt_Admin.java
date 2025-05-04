package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Govt_Admin")
public class Govt_Admin extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
	  private static final String ADMIN_EMAIL = "admin@gmail.com";
	  private static final String ADMIN_PASSWORD = "admin";
	
    
    public Govt_Admin() {
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
		
		String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        if(email != null && password != null && email.equals(ADMIN_EMAIL) && password.equals(ADMIN_PASSWORD)) {
        	
        	response.sendRedirect("Govt_Admin_Home.jsp");
        }
        
        else {
        	response.sendRedirect("GovtAdmin_RegLogin.jsp");
        }
		
		
		
	}

}
