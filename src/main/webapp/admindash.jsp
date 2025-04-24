<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, rgba(65, 105, 225, 0.9), rgba(255, 105, 180, 0.9));
        }
        .navbar {
            background-color: blue;
            color: white;
            padding: 15px;
            text-align: center;
            font-size: 20px;
        }
        .sidebar {
            width: 20%;
            background: linear-gradient(135deg, rgba(65, 105, 225, 0.9), rgba(255, 105, 180, 0.9));
            padding: 15px;
            position: fixed;
            height: 100%;
            overflow: auto;
        }
        .sidebar ul {
            list-style-type: none;
            padding: 0;
        }
        .sidebar ul li {
            padding: 10px;
            margin-bottom: 8px;
            background: #fff7f1;
            text-align: center;
            cursor: pointer;
            font-weight: bold;
        }
        .sidebar ul li:hover {
            background: #ffb6c1;
        }
        .main-content {
            margin-left: 22%;
            padding: 20px;
        }
        .card {
            background: white;
            padding: 20px;
            margin: 10px;
            text-align: center;
            display: inline-block;
            width: 28%;
            cursor: pointer;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        .card:hover {
            background: #ffb6c1;
        }
    </style>

    <script>
        function addProduct() {
            window.location.href = "add_product.jsp";
        }

        function viewProducts() {
            window.location.href = "viewAllpage.jsp";
        }

        function deleteProduct() {
            if (confirm("Redirect to delete product page?")) {
                window.location.href = "viewAllpage.jsp"; // or a specific delete page
            }
        }

        function editProduct() {
            window.location.href = "editProduct.jsp";
        }

        function userOrders() {
            alert("User Orders functionality coming soon!");
        }

        function adminProfile() {
            alert("Admin Profile functionality coming soon!");
        }

        function logout() {
            if (confirm("Are you sure you want to log out?")) {
                window.location.href = "index.jsp";
            }
        }
    </script> 
</head>
<body>

    <div class="navbar">
        Hotel Management - <span>Admin</span>
    </div>

    <div class="sidebar">
        <ul>
            <li onclick="addProduct()">Add Products</li>
            <li onclick="viewProducts()">View All Products</li>
            <li onclick="deleteProduct()">Delete Products</li>
            <li onclick="editProduct()">Edit Products</li>
            <li onclick="userOrders()">Orders</li>
            <li onclick="adminProfile()">Admin Profile</li>
            <li onclick="logout()">Logout</li>
        </ul>
    </div>

    <div class="main-content">
        <div class="card" onclick="addProduct()">
            <h5>Add New Products</h5>
        </div>
        <div class="card" onclick="deleteProduct()">
            <h5>Delete Products</h5>
        </div>
        <div class="card" onclick="editProduct()">
            <h5>Edit Products</h5>
        </div>
    </div>

</body>
</html>
