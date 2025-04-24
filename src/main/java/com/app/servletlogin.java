package com.app;


import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




/**
 * Servlet implementation class ServletLogin
 */
@WebServlet("/servletlogin")
public class servletlogin extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    Connection con = databaseConnction.getConnect();
    
    private static final Logger LOGGER = Logger.getLogger(servletlogin.class.getName());

    /**
     * @see HttpServlet#HttpServlet()
     */
    public servletlogin() {
        super();
    }

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        HttpSession session = request.getSession();

        try {
        	String q = "select ugmail ,upassword from user where ugmail = ? and upassword = ? " ;
        	PreparedStatement pst = con.prepareStatement(q);
        	pst.setString(1, username);
        	pst.setString(2, password);
        	ResultSet rs= pst.executeQuery();
        	
        	
        	if(rs.next()) {
        		if(rs.getString("role").equals("user")) {
        			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
        			rd.forward(request, response);
        		}
        		else if(rs.getString("role").equals("admin")) {
        			session.setAttribute("adname", rs.getString("username"));
        			RequestDispatcher rd = request.getRequestDispatcher("admindash.jsp");
        			rd.forward(request, response);
        		}
        	} else {
        		session.setAttribute("failmsg", "Login fail... please try again");
        		RequestDispatcher rd = request.getRequestDispatcher("admindash.jsp");
        		rd.forward(request, response);
        	}
           
    } catch (Exception e) {
    	e.printStackTrace();
    }
}
}
