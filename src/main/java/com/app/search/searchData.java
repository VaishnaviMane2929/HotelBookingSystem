package com.app.search;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.databaseConnction;

@WebServlet("/searchData")
public class searchData extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public searchData() {
        super();
    }

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String check_in = request.getParameter("check_in");
        String check_out = request.getParameter("check_out");
        String adult = request.getParameter("adult");
        String children = request.getParameter("children");

        if (check_in == null || check_out == null || adult == null || children == null ||
            check_in.trim().isEmpty() || check_out.trim().isEmpty() ||
            adult.trim().isEmpty() || children.trim().isEmpty()) {
            
            request.setAttribute("error", "All fields are required.");
            request.getRequestDispatcher("contact.jsp").forward(request, response);
            return;
        }

        try (Connection con = databaseConnction.getConnect();
             PreparedStatement pst = con.prepareStatement(
                 "INSERT INTO searchData(check_in, check_out, adult, children) VALUES (?, ?, ?, ?)")) {

            pst.setString(1, check_in);
            pst.setString(2, check_out);
            pst.setString(3, adult);
            pst.setString(4, children);

            int rowsInserted = pst.executeUpdate();

            if (rowsInserted > 0) {
                // Query back from DB to show results
                String query = "SELECT * FROM searchData WHERE check_in = ? AND check_out = ?";
                try (PreparedStatement pst1 = con.prepareStatement(query)) {
                    pst1.setString(1, check_in);
                    pst1.setString(2, check_out);
                    ResultSet rs = pst1.executeQuery();

                    List<Map<String, String>> resultList = new ArrayList<>();

                    while (rs.next()) {
                        Map<String, String> record = new HashMap<>();
                        record.put("check_in", rs.getString("check_in"));
                        record.put("check_out", rs.getString("check_out"));
                        record.put("adult", rs.getString("adult"));
                        record.put("children", rs.getString("children"));
                        resultList.add(record);
                    }

                    rs.close();
                    request.setAttribute("results", resultList);
                    RequestDispatcher dispatcher = request.getRequestDispatcher("searchResults.jsp");
                    dispatcher.forward(request, response);
                }
            } else {
                request.setAttribute("error", "Data insertion failed.");
                request.getRequestDispatcher("contact.jsp").forward(request, response);
            }

        } catch (SQLException e) {
            request.setAttribute("error", "Database error: " + e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}