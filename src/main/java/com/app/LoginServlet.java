package com.app;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    Connection con = databaseConnction.getConnect();


	
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	String un = request.getParameter("username");
		String pass = request.getParameter("password");
		
		
		try {
			 Connection con= databaseConnction.getConnect();
          String Query1="select * from user where ugmail=? and upassword=? ";
		    
			PreparedStatement pst=con.prepareStatement(Query1);
		     pst.setString(1, un);
		     pst.setString(2,pass);
		   
		     
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				 String role=rs.getString("role");
				 if(role.equals("admin")) {
				RequestDispatcher rd=request.getRequestDispatcher("admindash.jsp");
				rd.forward(request, response);
				 }else {
						RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
						rd.forward(request, response);
				 }
				
			}else {
           		System.out.println("your data is wrong:");	
				request.setAttribute("msg", "your data is wrong");
				RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
				rd.forward(request, response);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
    	
    
}
