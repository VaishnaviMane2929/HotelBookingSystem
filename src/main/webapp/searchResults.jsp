<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Your Date</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
      <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    
    <style>
        /* Navbar Styling */
        .navbar {
            background-color: #333;
            padding: 15px;
        }

        .navbar .logo {
            color: white;
            font-size: 20px;
            font-weight: bold;
        }

        .nav-links {
            list-style: none;
            display: flex;
            align-items: center;
            margin: 0;
            padding: 0;
        }

        .nav-links li {
            margin: 0 10px;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            font-size: 16px;
            padding: 8px 12px;
        }

        .login-btn {
            background-color: #f04e30;
            color: white;
            padding: 8px 15px;
            border-radius: 5px;
            text-decoration: none;
        }

        .login-btn:hover {
            background-color: #d43b1e;
        }

      
        
         .price-box {
      background: #f9f9f9;
      padding: 30px;
      border-radius: 20px;
    }
    .btn-book {
      background-color: #c5b185;
      color: white;
      border-radius: 50px;
      padding: 10px 30px;
      font-weight: 600;
    }
    .btn-book:hover {
      background-color: #b39e6f;
    }
         /* Footer Styles */
.footer {
    background: #f9f8f6;
    color: #3a3a3a;
    padding: 40px 0;
    font-size: 14px;
    margin: 20px;
}

.footer .container {
    width: 85%;
    margin: auto;
}

.row {
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
}

.footer-col {
    flex: 1;
    margin: 15px;
    min-width: 220px;
}

.footer-logo {
    max-width: 120px;
    margin-bottom: 10px;
}

.footer-col h4 {
    font-size: 16px;
    margin-bottom: 15px;
    font-weight: bold;
    text-transform: uppercase;
}

.footer-col ul {
    list-style: none;
    padding: 0;
}

.footer-col ul li {
    margin-bottom: 8px;
}

.footer-col ul li a {
    color: #3a3a3a;
    text-decoration: none;
    transition: 0.3s;
}

.footer-col ul li a:hover {
    color: #b5985a;
}

.payment-icons i {
    font-size: 24px;
    margin-right: 10px;
    color: #b5985a;
}

.footer-bottom {
    text-align: center;
    padding-top: 15px;
    font-size: 12px;
    border-top: 1px solid #eaeaea;
    margin-top: 20px;
}

.footer-col p i {
    margin-right: 8px;
    color: #b5985a;
}
hr {
  border: none;
  border-top: 1px solid #444;
  margin: 40px 0 20px;
}


.note {
    font-size: 12px;
    color: #777;
}
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <div class="logo">My Website</div>
            <ul class="nav-links">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="amenities.jsp">Amenities</a></li>
                <li><a href="contact.jsp">Contact</a></li>
                <li><a href="login.jsp" class="login-btn">Login</a></li>
            </ul>
        </div>
    </nav>


 <div class="text-center mt-20">
    <!-- Star Design -->
    <div class="flex justify-center space-x-3 mb-2 text-[#c9ab6f]">
      <span class="text-xs">★</span>
      <span class="text-sm">★</span>
      <span class="text-base">★</span>
      <span class="text-sm">★</span>
      <span class="text-xs">★</span>
    </div>

    <!-- Heading -->
    <h1 class="text-3xl md:text-4xl font-serif font-semibold text-gray-800">
      Search Results
    </h1>
  </div>


 <c:choose>
    <c:when test="${not empty results}">

        <%-- Summary Message --%>
        <c:set var="firstCheckIn" value="${results[0].check_in}" />
        <c:set var="lastCheckOut" value="${results[fn:length(results) - 1].check_out}" />

        <p class="text-center fw-semibold text-primary my-3">
            🔎 ${fn:length(results)} accommodations found from 
            <fmt:formatDate value="${record.check_in}" /> – 
            till 
            <fmt:formatDate value="${record.check_out}"  />
        </p>

        <%-- Results Table --%>
        <table class="table table-bordered text-center align-middle">
            <thead class="table-light">
                <tr>
                    <th>Check-in Date</th>
                    <th>Check-out Date</th>
                    <th>Adults</th>
                    <th>Children</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="record" items="${results}">
                    <tr>
                        <td>   ${record.check_in}</td>
                        <td>${record.check_out}</td>
                        <td>${record.adult}</td>
                        <td>${record.children}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

    </c:when>
    <c:otherwise>
        <tr>
            <td colspan="4" class="text-center text-muted fw-semibold py-3 bg-light">
                No search results found.
            </td>
        </tr>
    </c:otherwise>
</c:choose>


<%-- room search Section start --%>
<div class="container my-5">
  <div class="row g-5">
    
    <!-- Left: Room Info -->
   <div class="col-md-7 text-center text-md-20px">
      <h1 class="fw-bold" style="font-size: larger;">Comfort Triple Room</h1>
      <p class="text-muted fs-5">Perfectly suitable for family vacation or for big companies.</p>
      <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/06/classic-double-room-992x992.jpg" alt="Comfort Triple Room" class="img-fluid rounded mx-auto d-block d-md-inline" style="max-width: 900px; height: 50%;">
    </div>

    <!-- Right: Price & Booking -->
    <div class="col-md-5">
      <div class="price-box shadow-sm">
        <p class="text-muted mb-1">Prices start at:</p>
        <h2 class="fw-bold">$716 <span class="fs-5 text-muted">/ for 4 nights</span></h2>

        <div class="my-3">
          <select class="form-select" aria-label="Select number of rooms">
            <option selected>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
          </select>
        </div>

        <p class="text-muted mb-4">of 5 accommodations available.</p>

        <button class="btn btn-book w-100">BOOK</button>
      </div>
      
      <div class="container my-4">
  <div class="row row-cols-1 row-cols-md-2 g-4 text-muted fs-6">

    <div class="col d-flex align-items-center">
      <i class="fas fa-user me-2 text-warning"></i> 3
    </div>

    <div class="col d-flex align-items-center">
      <i class="fas fa-bookmark me-2 text-warning"></i> Triple
    </div>

    <div class="col d-flex align-items-center">
      <i class="fas fa-eye me-2 text-warning"></i>ocean, beach
    </div>

    <div class="col d-flex align-items-center">
      <i class="fas fa-star me-2 text-warning"></i>
      air-conditioning, free wi-fi, hairdryer,<br>
      in-room safety, laundry, minibar, telephone
    </div>

    <div class="col d-flex align-items-center">
      <i class="fas fa-expand me-2 text-warning"></i> 25m²
    </div>
<div class="col d-flex align-items-center">
      <i class="fas fa-bed me-2 text-warning"></i> queen bed
    </div>
</div>
</div>
    </div>
</div>
  </div>

<%-- room search Section end --%>

<%-- Footer Section --%>
<footer class="footer">
    <div class="container">
        <div class="row">
            <!-- Company Info -->
            <div class="footer-col">
                <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/06/logo-footer.svg" alt="Luxury Hotels Network" class="footer-logo">
                <h4>LUXURY HOTELS NETWORK</h4>
                <p>All hotels and vacation rental properties listed on this website are independently owned and operated.</p>
                <p><strong>Accepted payment methods:</strong></p>
                <div class="payment-icons">
                    <i class="fa-brands fa-cc-paypal"></i>
                    <i class="fa-brands fa-cc-visa"></i>
                    <i class="fa-brands fa-cc-stripe"></i>
                    <i class="fa-brands fa-cc-mastercard"></i>
                    <i class="fa-brands fa-cc-discover"></i>
                </div>
                <p class="note">Note: multi-currency is performed via addon, which is NOT included into the theme.</p>
            </div>

            <!-- Customer Links -->
            <div class="footer-col">
                <h4>For Customers</h4>
                <ul>
                    <li><a href="#"><i class="fa-solid fa-angle-right"></i> About Luviana</a></li>
                    <li><a href="#"><i class="fa-solid fa-angle-right"></i> Customer Care/Help</a></li>
                    <li><a href="#"><i class="fa-solid fa-angle-right"></i> Corporate Accounts</a></li>
                    <li><a href="#"><i class="fa-solid fa-angle-right"></i> Financial Information</a></li>
                    <li><a href="#"><i class="fa-solid fa-angle-right"></i> Terms & Conditions</a></li>
                </ul>
            </div>

            <!-- Recent News -->
            <div class="footer-col">
                <h4>Recent News</h4>
                <ul>
                    <li><a href="#"><i class="fa-solid fa-leaf"></i> Our Secret Island Boat Tour Is Just for You</a></li>
                    <li><a href="#"><i class="fa-solid fa-leaf"></i> Chill and Escape in Our Natural Shelters</a></li>
                    <li><a href="#"><i class="fa-solid fa-leaf"></i> September in Luviana Hotel</a></li>
                    <li><a href="#"><i class="fa-solid fa-leaf"></i> Live Music Concerts at Luviana</a></li>
                </ul>
            </div>

            <!-- Contact Info -->
            <div class="footer-col">
                <h4>Contact Us</h4>
                <p><i class="fa-solid fa-location-dot"></i> 3015 Grand Ave, Coconut Grove, Merrick Way, FL 12345</p>
                <p><i class="fa-solid fa-envelope"></i> hello@luviana.com</p>
                <p><i class="fa-solid fa-phone"></i> 1.954.456.6789</p>
                <p><i class="fa-solid fa-fax"></i> 1.954.456.6788</p>
                <p><i class="fa-solid fa-headset"></i> 24/7 Customer Service</p>
            </div>
        </div>
        <hr>
        <div class="footer-bottom">
            <p>Luviana © 2025 All Rights Reserved</p>
        </div>
    </div>
</footer>
<%-- End Footer Section --%>


</body>
</html>
