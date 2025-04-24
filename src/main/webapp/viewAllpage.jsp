
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
 <%@page import="com.app.databaseConnction"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Hotel List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
             background: linear-gradient(135deg, rgba(65, 105, 225, 0.9), rgba(255, 105, 180, 0.9));
              padding: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background-color:white;
             box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        th, td {
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }
        th {
          background: linear-gradient(135deg, rgba(65, 105, 225, 0.9), rgba(255, 105, 180, 0.9));
          border:1px solid black;


            color: #f2f5f5;
        }
        td a {
            background: linear-gradient(135deg, rgba(65, 105, 225, 0.9), rgba(255, 105, 180, 0.9));

            padding: 8px 12px;
            text-decoration: none;
            color: white;
            border-radius: 5px;
        }
        td a:hover {
            background-color: #e0356d;
        }
        img {
            height: 50px;
            width: 50px;
            border-radius: 5px;
        }
    </style>
</head>
<body>

<a href="admindash.jsp">← Back</a>
<h2>Hotel List</h2>

<table>
    <tr>
        <th>Photo</th>
        <th>ID</th>
        <th>Name</th>
        <th>Address</th>
        <th>Price</th>
        <th>Actions</th>
    </tr>

<%
    try {
        Connection con = databaseConnction.getConnect();
        String query = "SELECT * FROM hotels";
        PreparedStatement pst = con.prepareStatement(query);
        ResultSet rs = pst.executeQuery();

        while (rs.next()) {
%>
    <tr>
        <td><img src="./img/<%= rs.getString("hphoto") %>" alt="Hotel Photo"></td>
        <td><%= rs.getInt("hid") %></td>
        <td><%= rs.getString("hname") %></td>
        <td><%= rs.getString("haddress") %></td>
        <td><%= rs.getString("hprice") %></td>
        <td>
            <a href="EditServlet?hid=<%= rs.getInt("hid") %>">Edit</a>
            <a href="DeleteServlet?hid=<%= rs.getInt("hid") %>">Delete</a>
        </td>
    </tr>
<%
        }

        rs.close();
        pst.close();
        con.close();
    } catch (Exception e) {
        out.println("<tr><td colspan='6'>Error: " + e.getMessage() + "</td></tr>");
    }
%>

</table>
</body>
</html>
