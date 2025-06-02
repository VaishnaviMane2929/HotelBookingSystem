<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reservation Successful</title>

<!-- Bootstrap CDN for styling -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style>
    body {
        background: linear-gradient(to right, #74ebd5, #ACB6E5);
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    .success-box {
        background-color: white;
        padding: 40px;
        border-radius: 15px;
        box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        text-align: center;
    }
    .success-box h2 {
        color: #28a745;
        margin-bottom: 15px;
    }
    .success-box p {
        font-size: 18px;
    }
</style>
</head>
<body>

<div class="success-box">
    <i class="bi bi-check-circle-fill" style="font-size: 60px; color: #28a745;"></i>
    <h2>Reservation Successful!</h2>
    <p>Your booking has been confirmed. Thank you!</p>
    <a href="index.jsp" class="btn btn-success mt-3">Go to Home</a>
</div>


</body>
</html>
