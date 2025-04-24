package com.app;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class EditServlet
 */
@WebServlet("/EditServlet")
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int hid = Integer.parseInt(request.getParameter("hid"));
//          Connection con=mysqlConnect.getConnect();
          
          try {
        	  
        	  ArrayList<addProdyuctmodule> list=new ArrayList<addProdyuctmodule>();
              Connection con = databaseConnction.getConnect();
              String query = "SELECT * FROM hotels WHERE hid=?";
              PreparedStatement pst = con.prepareStatement(query);
              pst.setInt(1, hid);
              ResultSet rs = pst.executeQuery();

              if (rs.next()) {
                   int hid1= rs.getInt("hid");
                  String hname= rs.getString("hname");
                  String haddress= rs.getString("haddress");
                  int  hprice= rs.getInt("hprice");
                  String hphoto= rs.getString("hphoto");
                  
                  System.out.println(hid);
                  System.out.println(hname);
                  System.out.println(haddress);
                  System.out.println(hprice);
                  System.out.println(hphoto);
                  addProdyuctmodule EM= new addProdyuctmodule(hid1,hname,haddress,hprice,hphoto);
                  list.add(EM);
                    
              }

              rs.close();
              pst.close();
              con.close();
                   request.setAttribute("list", list);
              RequestDispatcher dispatcher = request.getRequestDispatcher("editProduct.jsp");
              dispatcher.forward(request, response);

          } catch (Exception e) {
              e.printStackTrace();
          }
	}

}