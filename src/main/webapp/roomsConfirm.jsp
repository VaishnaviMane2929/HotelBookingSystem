<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Confirm Booking</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(135deg, #e0f7fa, #ffffff);
            min-height: 100vh;
        }
        .booking-card {
            max-width: 500px;
            margin: auto;
            margin-top: 80px;
            border-radius: 15px;
        }
        h2 {
            font-weight: bold;
            color: #00796b;
        }
        .form-label {
            font-weight: 500;
        }
        .btn-success {
            background-color: #00796b;
            border: none;
        }
        .btn-success:hover {
            background-color: #004d40;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="card shadow-lg p-4 booking-card">
        <h2 class="text-center mb-4">Confirm Your Booking</h2>

        <form action="bookingSuccess.jsp" method="post">
            <!-- Full Name Input -->
            <div class="mb-3">
                <label for="fullName" class="form-label">Full Name:</label>
                <input type="text" class="form-control" id="fullName" name="fullName" required>
            </div>

            <!-- Gmail Input -->
            <div class="mb-3">
                <label for="gmail" class="form-label">Gmail:</label>
                <input type="email" class="form-control" id="gmail" name="gmail" placeholder="example@gmail.com" required>
            </div>

            <!-- Contact Number Input -->
            <div class="mb-3">
                <label for="contact" class="form-label">Contact Number:</label>
                <input type="tel" class="form-control" id="contact" name="contact" placeholder="e.g. 9876543210" pattern="[0-9]{10}" required>
            </div>

            <div class="d-grid">
                <button type="submit" class="btn btn-success">Confirm Booking</button>
            </div>
        </form>
    </div>
</div>

<!-- Bootstrap JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
