package com.app;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
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

@WebServlet("/add_Products")
@MultipartConfig
public class add_Products extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String IMAGE_UPLOAD_DIR = "C:/uploads/hotel_photos";
    Connection con = databaseConnction.getConnect();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String pname = request.getParameter("hname");
	    int pprice =Integer.parseInt(request.getParameter("hprice")) ;
	    String paddress = request.getParameter("hadds");
	   
	  
	    // File Upload Handling
	    Part filePart = request.getPart("hphoto");
	    
	    String fileName = filePart.getSubmittedFileName();
	    addProdyuctmodule pm=new addProdyuctmodule(pname, paddress, pprice,fileName);
	    
	    Connection con=databaseConnction.getConnect();
	    
	    String Query="insert into hotels(hname,haddress,hprice,hphoto) values(?,?,?,?)";
	    try {
			PreparedStatement pst=con.prepareStatement(Query);
			pst.setString(1, pm.getHname());
			pst.setString(2, pm.getHaddress());
			pst.setInt(3, pm.getHprice());
			pst.setString(4, pm.getHphoto());
			
			
			System.out.println(pm.getHname());
			System.out.println(pm.getHaddress());
			System.out.println(pm.getHprice());
			System.out.println(pm.getHphoto());
			

			int ex = pst.executeUpdate();
			String path=request.getServletContext().getRealPath("")+"img";
			 System.out.println(path);
			 File file=new File(path);
			 filePart.write(path+file.separator+fileName);
			System.out.println(ex);
			response.sendRedirect("admindash.jsp");
		} catch (Exception e) {
           e.printStackTrace();
		}
  }
}
