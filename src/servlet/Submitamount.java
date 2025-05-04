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

@WebServlet("/Submitamount")
public class Submitamount extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Submitamount() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String file = request.getParameter("file");
        String phone = request.getParameter("phone");
        String health = request.getParameter("health");
        String instructions = request.getParameter("instructions");
        String Govapprovalid = request.getParameter("Govid");
        String Medapprovalid = request.getParameter("Mvid");
        String totalamount = request.getParameter("amount");
        String cid = request.getParameter("cid");
        
        
        
        int a = Integer.parseInt(totalamount);

        Connection con = null;
        PreparedStatement psInsert = null;
        Statement stSelect = null;
        ResultSet rsSelect = null;

        try {
            con = dbcon.create(); // Establish database connection

            // Insert into childdetails table
            String insertQuery = "INSERT INTO child_trust.childdetails (name, email, file, phone, health, instructions, amount, Govapprovalid, Medapprovalid, status, cid) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, 'settled',?)";
            psInsert = con.prepareStatement(insertQuery);
            psInsert.setString(1, name);
            psInsert.setString(2, email);
            psInsert.setString(3, file);
            psInsert.setString(4, phone);
            psInsert.setString(5, health);
            psInsert.setString(6, instructions);
            psInsert.setInt(7, a);
            psInsert.setString(8, Govapprovalid);
            psInsert.setString(9, Medapprovalid);
            psInsert.setString(10, cid);
            psInsert.executeUpdate(); // Execute insert query

            // Retrieve existing total amount from totalamount table
            stSelect = con.createStatement();
            String selectQuery = "SELECT totalamounts FROM child_trust.totalamount WHERE status='total'";
            rsSelect = stSelect.executeQuery(selectQuery);

            int existingamount = 0;
            if (rsSelect.next()) {
                existingamount = rsSelect.getInt("totalamounts");
            }

            // Calculate final amount after deduction
            int finalamount = existingamount - a;

            // Update totalamount table with new total
            String updateQuery = "UPDATE child_trust.totalamount SET totalamounts=? WHERE status='total'";
            PreparedStatement psUpdate = con.prepareStatement(updateQuery);
            psUpdate.setInt(1, finalamount);
            psUpdate.executeUpdate();
            String updateQueryy = "UPDATE child_trust.fundform SET status=? WHERE cid= '"+cid+"' ";
            PreparedStatement psUpdatee = con.prepareStatement(updateQueryy);
            psUpdatee.setString(1, "settled");
            psUpdatee.executeUpdate();

            // Redirect to a success page or perform further actions
            response.sendRedirect("success.jsp");

        } catch (SQLException e) {
            e.printStackTrace(); // Handle any database errors
        } finally {
            // Close all resources
            try {
                if (rsSelect != null) {
                    rsSelect.close();
                }
                if (stSelect != null) {
                    stSelect.close();
                }
                if (psInsert != null) {
                    psInsert.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
