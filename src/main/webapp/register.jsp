<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.app.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-size: cover;
        background: linear-gradient(135deg, rgba(65, 105, 225, 0.9), rgba(255, 105, 180, 0.9));
        background-position: center;
        background-repeat: no-repeat;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .container {
        background: linear-gradient(135deg, rgba(65, 105, 225, 0.9), rgba(255, 105, 180, 0.9));
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        width: 350px;
        text-align: center;
    }

    h1 {
        margin-bottom: 20px;
        color: #333;
        font-size: 24px;
    }

    label {
        display: block;
        margin: 10px 0 5px;
        font-weight: bold;
        text-align: left;
    }

    input, select {
        width: 100%;
        padding: 12px;
        border: none;
        outline: none;
        background: #f4f4f4;
        border-radius: 5px;
        font-size: 14px;
        margin-bottom: 15px;
    }

    button {
        width: 100%;
        padding: 12px;
        border: none;
        border-radius: 5px;
        background: linear-gradient(45deg, #ff7e5f, #feb47b);
        color: black;
        font-size: 16px;
        cursor: pointer;
        transition: 0.3s;
        margin-top: 10px;
    }

    button:hover {
        background: white;
    }

    p {
        margin-top: 15px;
    }

    p:hover {
        text-decoration: underline;
        color: #ff7e5f;
    }

    a {
        text-decoration: none;
        color: #ff7e5f;
        font-weight: bold;
    }
</style>
</head>
<body>

<div class="container">
    <h1>Register</h1>
    <form action="signUp" method="post" enctype="multipart/form-data">
        <label for="username">Username</label>
        <input type="text" id="username" name="usm" required>

        <label for="ugmail">Email</label>
        <input type="text" id="ugmail" name="email" required>

        <label for="upassword">Password</label>
        <input type="password" id="upassword" name="pass" required>

        <label for="uphoto">Upload Photo</label>
       <input type="file" name="photo" />

        <label for="role">Select Role</label>
        <select id="role" name="role" required>
            <option value="user">User</option>
            <option value="admin">Admin</option>
        </select>

        <button type="submit">Register</button>
    </form>

    <p><a href="index.jsp">Back to Home</a></p>
</div>

</body>
</html>
