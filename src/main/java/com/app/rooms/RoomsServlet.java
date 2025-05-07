package com.app.rooms;

import java.io.IOException;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.app.databaseConnction;

@WebServlet("/AddRoomServlet")
public class RoomsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String roomNumber = request.getParameter("roomNumber");
        String roomType = request.getParameter("roomType");
        double price = Double.parseDouble(request.getParameter("price"));
        String status = request.getParameter("status");
        String description = request.getParameter("description");

        try (Connection con = databaseConnction.getConnect();
             PreparedStatement pst = con.prepareStatement(
                "INSERT INTO rooms (room_number, room_type, price, status, description) VALUES (?, ?, ?, ?, ?)")) {

            pst.setString(1, roomNumber);
            pst.setString(2, roomType);
            pst.setDouble(3, price);
            pst.setString(4, status);
            pst.setString(5, description);

            int rowsInserted = pst.executeUpdate();

            if (rowsInserted > 0) {
                response.sendRedirect("rooms.jsp"); // or show confirmation
            } else {
                response.getWriter().println("Room insertion failed.");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Database error: " + e.getMessage());
        }
    }
}
