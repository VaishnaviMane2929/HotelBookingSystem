<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotel List</title>
</head>
<body>

<h2>Hotel List</h2>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Address</th>
        <th>Price</th>
        <th>Photo</th>
        <th>Action</th>
    </tr>
    
    <c:forEach var="h" items="${ProductList}">
        <tr>
            <td><c:out value="${h.hid}" /></td>
            <td><c:out value="${h.hname}" /></td>
            <td><c:out value="${h.haddress}" /></td>
            <td><c:out value="${h.hprice}" /></td>
            <td><c:out value="${h.hphoto}" /></td>
            <td>
                <a href="DeleteServlet?hid=${h.hid}" onclick="return confirm('Are you sure you want to delete this hotel?');">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
