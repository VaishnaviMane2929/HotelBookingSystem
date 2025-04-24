package com.app;

import java.io.IOException;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class signUp
 */
@WebServlet("/signUp")
@MultipartConfig
public class signUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public signUp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 Connection con= databaseConnction.getConnect();
		
		 String username = request.getParameter("usm");
	        String email = request.getParameter("email");
	        String password = request.getParameter("pass");
	        Part photoPart = request.getPart("photo");
	        String fileName = Paths.get(photoPart.getSubmittedFileName()).getFileName().toString();
	        String role = "user";
		
		System.out.println(username+" "+email + " "+password);
		 
		Model cm=new Model(username, email, password,fileName,role);
		
		String Query1 ="select * from user where ugmail=?";
		try {
			PreparedStatement pt=con.prepareStatement(Query1);
			pt.setString(1, cm.getEmail());
			ResultSet rs = pt.executeQuery();
        if(rs.next()) {
				String Password = rs.getString("upassword");
				System.out.println("your account Already exist..!");
				
				request.setAttribute("msg", "your account Already exist..!");
				RequestDispatcher rd= request.getRequestDispatcher("SignUp.jsp");
				rd.forward(request, response);
//				response.sendRedirect("SignUp.jsp");
				
			}else {
				String Query="insert into user(username,ugmail,upassword,uphoto,role) values(?,?,?,?,?)";
				try {
					PreparedStatement pst=con.prepareStatement(Query);
					pst.setString(1, cm.getUsm());
					pst.setString(2, cm.getEmail());
					pst.setString(3, cm.getPass());
					pst.setString(4, cm.getPhoto());
					pst.setString(5, "User");
					int ex = pst.executeUpdate();
					System.out.println(ex);
					response.sendRedirect("login.jsp");
					
					
				} catch (Exception e) {
					
					e.printStackTrace();
				}
				
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		
		
		
		
	}

}