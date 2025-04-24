


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-size: cover;
        background-position: center;
       /* background-image: url("backg1.png");*/
       background: linear-gradient(135deg, rgba(65, 105, 225, 0.9), rgba(255, 105, 180, 0.9));
        background-repeat: no-repeat;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

.container {
    background: linear-gradient(135deg, rgba(65, 105, 225, 0.9), rgba(255, 105, 180, 0.9)); /* Royal Blue to Hot Pink */
    padding: 40px;
    border-radius: 10px;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
    width: 350px;
    text-align: center;
    color: white; /* Make text readable on the gradient */
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

    input {
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
        color: white;
        font-size: 16px;
        cursor: pointer;
        transition: 0.3s;
        margin-top: 10px;
    }

    button:hover {
        background: linear-gradient(45deg, #ff6a4d, #fd9f67);
    }

    p {
        margin-top: 15px;
        text-decoration: 
    }
    
     p:hover {
        margin-top: 15px;
        text-decoration:underline;
        color: #ff7e5f;
    }

    a {
        text-decoration: none;
        color: #ff7e5f;
        font-weight: bold;
    }

    .error-message {
        color: red;
        margin-top: 10px;
    }

    .success-message {
        color: green;
        margin-top: 10px;
    }
</style>
</head>
<body>

<div class="container">

    <h1>Login</h1>
    <c:if test="${ not empty failmsg }">
    <p class="alert alert-danger">${failmsg } </p>
    <c:remove var="failmsg"/>
    
    </c:if>
  
    <form action="LoginServlet" method="post">
        <label for="username">Usergmail</label>
        <input type="text" id="username" name="username" required>

        <label for="password">Password</label>
        <input type="password" id="password" name="password" required>
           <h1>${msg}</h1>
        <button type="submit">Login</button>
    </form>

    <p><a href="contact.jsp">Back to Home</a></p>

    <%-- Display error message if login fails --%>
    <% String error = request.getParameter("error");
        if (error != null && error.equals("1")) { %>
        <p class="error-message">Invalid username or password.</p>
    <% } %>

    <%-- Display success message after registration --%>
    <% String rs = request.getParameter("registration");
        if (rs != null && rs.equals("success")) { %>
        <p class="success-message">Your Registration is Successful. Please Login.</p>
    <% } %>
</div>

</body>
</html>

