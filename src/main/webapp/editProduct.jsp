<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Product</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fff7f1;
            padding: 30px;
        }
        form {
            background-color: white;
            padding: 20px;
            max-width: 500px;
            margin: auto;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        input[type="text"], input[type="number"], input[type="file"], input[type="date"] {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            margin-bottom: 20px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        input[type="submit"] {
            background-color: #ff4081;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #e0356d;
        }
        a {
            text-decoration: none;
            display: inline-block;
            margin-bottom: 20px;
            color: #ff4081;
        }
    </style>
</head>
<body>

<a href="viewAllpage.jsp">← Back to List</a>

<h2 style="text-align:center;">Edit Product</h2>

<c:forEach var="i" items="${list}">

<form action="UpdateDataAdmin" method="post" enctype="multipart/form-data">
    <input type="hidden" name="pid" value="${i.hid}"/>

            <label for="hname">Hotel Name:</label>
            <input type="text" id="hname" name="hname" value ="${i.hname}" required>
            
            <label for="hadds">Hotel Address:</label>
            <input type="text" id="hadds" name="hadds" value = "${i.haddress}" required>

            <label for="hprice">Hotel Price:</label>
            <input type="number" id="hprice" name="hprice" value="${i.hprice }" min="1" step="0.01" required>

            <label for="hphoto">Hotel Photo:</label>
            <input type="file" id="hphoto" name="hphoto" accept="image/jpg, image/png" onchange="previewImage()" required>
            <img id="imagePreview" src="./img/${i.hphoto}" alt="Hotel Image Preview">

            <button type="submit" class="btn" style="color: black;">Update Record</button>
        </form>
</c:forEach>
</body>
</html>
