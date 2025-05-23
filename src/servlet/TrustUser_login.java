package servlet;

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

/**
 * Servlet implementation class TrustUser_login
 */
@WebServlet("/TrustUser_login")
public class TrustUser_login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TrustUser_login() {
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
		
		
		MultipartParser mp =new MultipartParser(request, 999999999);
		
		Part part = null;
		ArrayList paramValues = new ArrayList();

		FilePart filepart = null;
		ParamPart param=null;
		File file1 = null;
		String filepath1 = null;
		String filetype=null;
		String filepath2 = null;
		String filename = null;
		
		long size=0;
		String path=getServletContext().getRealPath("");
		
		System.out.println("path=="+path);
		
		
		String editpath=path.substring(0, path.indexOf("."));
		
		System.out.println("edithpath=="+editpath);
		
		String fullpath=editpath+"NS02-Orphanage\\WebContent\\local\\";
		
		
		System.out.println("fullpath=="+fullpath);
		
		while((part=mp.readNextPart())!=null)
		{
			
			if(part.isFile())
			{
				
				filepart=(FilePart)part;
		
			    filename=filepart.getFileName();
				System.out.println("filename=="+filename);
				
			    fullpath=fullpath+filename;
		        System.out.println("fullpath=="+fullpath);
				
				
				File file=new File(fullpath);
			    size=filepart.writeTo(file);
				System.out.println("size=="+size);
				
		         filetype=filepart.getContentType();
				System.out.println("filetype---"+filetype);
				
			}
			else if(part.isParam())
			{
				param = (ParamPart) part;
				String tagName =param.getName();
				System.out.println("tagName ============= " + tagName);
				String tagValue = param.getStringValue();
				System.out.println("tagValue ************ " + tagValue);
				 
				paramValues.add(tagValue);
				paramValues.add(tagName);
				
			}
		}
		
		

		Connection con;
		int reg=0;
			
		
		
			try {
				con=dbcon.create();
				
					PreparedStatement ps=con.prepareStatement("INSERT INTO child_trust.details VALUES(id,?,?,?,?,?,?,?,?)");
					ps.setString(1, paramValues.get(0).toString());
					ps.setString(2, paramValues.get(2).toString());
					ps.setString(3, filename);
					ps.setString(4, paramValues.get(6).toString());
					ps.setString(5, paramValues.get(8).toString());
					ps.setString(6, paramValues.get(10).toString());
					ps.setString(7, "request");
					ps.setString(8, "-");
				
					
					
					ps.executeUpdate();

					
					response.sendRedirect("Tuser_Login.jsp");
					
	} catch (SQLException e) {
	
	e.printStackTrace();
	}		
	
		
		    
		}

		}

		
		
		

	
