<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<link rel="stylesheet" type="text/css" href="login.css">

</head>
<body >

<%

// Retrieve the session object
HttpSession session1 = request.getSession(false);

// Check if the session is not null and the username attribute is set
if (session != null && session1.getAttribute("username") != null) {
    // Get the username from the session
    String username = (String) session.getAttribute("username");
%>

 <div class="container">
        <h1>Welcome, <%= username %>!</h1>
<p>We're delighted to have you on our platform.<p/>
<h3>Explore, learn, and connect with our vibrant commend</h3>
<p>Feel free to stay as long as you like, and when you're ready<p/>
<p>you can <a href="logout.jsp">LOGOUT</a>securly<p/>

</div>

  <%
        } else {
            // Redirect to the login page if the session is not valid
            response.sendRedirect("login.jsp");
        }
    %>

</body>
</html>