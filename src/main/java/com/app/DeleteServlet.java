package com.app;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Load database connection
    Connection con = databaseConnction.getConnect();

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int hid = Integer.parseInt(request.getParameter("hid"));
        PreparedStatement pst = null;

        try {
            String query = "DELETE FROM hotels WHERE hid=?";
            pst = con.prepareStatement(query);
            pst.setInt(1, hid);

            int j = pst.executeUpdate();
            if (j == 1) {
                RequestDispatcher rqd = request.getRequestDispatcher("viewAllpage.jsp");
                rqd.include(request, response);
            } else {
                response.sendRedirect("error.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace(); // Log the error
            response.sendRedirect("error.jsp");
        } finally {
            try {
                if (pst != null) pst.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        System.out.println("Deleted hotel ID: " + hid);
    }
}
