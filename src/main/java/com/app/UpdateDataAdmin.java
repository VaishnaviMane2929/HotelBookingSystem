package com.app;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class UpdateDataAdmin
 */
@WebServlet("/UpdateDataAdmin")
@MultipartConfig
public class UpdateDataAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateDataAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    Connection con=databaseConnction.getConnect();
	    
       String  hid=request.getParameter("pid");
		 String hnm =request.getParameter("hname");
		 String  hadds=request.getParameter("hadds");
		 String hprice =request.getParameter("hprice"); 
		 Part filePart = request.getPart("hphoto");
		 String fp = null;

		 if (filePart != null && filePart.getSize() > 0) {
		     fp = filePart.getSubmittedFileName();
		 } else {
		     System.out.println("FilePart is null or empty.");
		     fp = request.getParameter("existingPhoto");
		 }

		
		 
		 
		 System.out.println(hid);
		 System.out.println(hnm);
		 System.out.println(hadds);
		 System.out.println(hprice);
		 System.out.println(fp);
		 
		  String query = "UPDATE hotels SET hname=?, haddress=?, hprice=?, hphoto=? WHERE hid=?";
	        try {
	            PreparedStatement pst = con.prepareStatement(query);
	            pst.setString(1, hnm);
	            pst.setString(2, hadds);
	            pst.setInt(3, Integer.parseInt(hprice));
	            pst.setString(4, fp);
	            pst.setString(5, hid);

	            int rows = pst.executeUpdate();
	            if (rows > 0) {
	                System.out.println("Update successful");
	                response.sendRedirect("viewAllpage.jsp"); // Redirect to view page
	            } else {
	                response.sendRedirect("error.jsp");
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	            response.sendRedirect("error.jsp");
	        }
	    }
	}