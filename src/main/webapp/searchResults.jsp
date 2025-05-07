<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Your Date</title>

    <!-- FontAwesome, Bootstrap & Tailwind -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        /* Custom Navbar */
        .navbar {
            background-color: #333;
        }
        .navbar-brand, .navbar-nav .nav-link {
            color: white !important;
        }
        .login-btn {
            background-color: #f04e30;
            color: white !important;
            border-radius: 5px;
        }
        .login-btn:hover {
            background-color: #d43b1e;
        }

        /* Footer Styling */
        .footer {
            background: #f9f8f6;
            color: #3a3a3a;
            padding: 40px 0;
            font-size: 14px;
        }
        .footer-logo {
            max-width: 120px;
            margin-bottom: 10px;
        }
        .footer h4 {
            font-size: 16px;
            margin-bottom: 15px;
            font-weight: bold;
            text-transform: uppercase;
        }
        .footer ul {
            list-style: none;
            padding: 0;
        }
        .footer ul li {
            margin-bottom: 8px;
        }
        .footer ul li a {
            color: #3a3a3a;
            text-decoration: none;
        }
        .footer ul li a:hover {
            color: #b5985a;
        }
        .payment-icons i {
            font-size: 24px;
            margin-right: 10px;
            color: #b5985a;
        }
        .footer-bottom {
            text-align: center;
            font-size: 12px;
            padding-top: 15px;
            border-top: 1px solid #eaeaea;
            margin-top: 20px;
        }
        .footer p i {
            margin-right: 8px;
            color: #b5985a;
        }
        .note {
            font-size: 12px;
            color: #777;
        }
        
        @keyframes fadeIn {
  from { opacity: 0; transform: translateY(20px); }
  to { opacity: 1; transform: translateY(0); }
}
.animate-fadeIn {
  animation: fadeIn 0.8s ease-out;
}
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand" href="#">My Website</a>
            <button class="navbar-toggler bg-light" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="about.jsp">About</a></li>
                    <li class="nav-item"><a class="nav-link" href="amenities.jsp">Amenities</a></li>
                    <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
                    <li class="nav-item"><a class="nav-link login-btn" href="login.jsp">Login</a></li>
                </ul>
            </div>
        </div>
    </nav>
    
   <div class="text-center mt-10 sm:mt-16 md:mt-20 px-4 sm:px-6 lg:px-8 animate-fadeIn">
  <!-- Star Design -->
  <div class="flex justify-center space-x-1 sm:space-x-2 md:space-x-3 mb-3 text-[#c9ab6f]">
    <span class="text-[10px] sm:text-xs md:text-sm">★</span>
    <span class="text-xs sm:text-sm md:text-base">★</span>
    <span class="text-sm sm:text-base md:text-lg font-bold text-[#b5985a]">★</span>
    <span class="text-xs sm:text-sm md:text-base">★</span>
    <span class="text-[10px] sm:text-xs md:text-sm">★</span>
  </div>

  <!-- Heading -->
  <h1 class="text-2xl sm:text-3xl md:text-4xl lg:text-5xl font-serif font-bold text-gray-800 drop-shadow-md">
    Search Results
  </h1>

  <!-- Optional Subtitle -->
  <p class="mt-2 text-sm sm:text-base text-gray-500">
    Browse through your best stay options
  </p>
</div>
    <div class="container my-5">
        <c:choose>
            <c:when test="${not empty results}">

                <!-- Summary Message -->
                <c:set var="firstCheckIn" value="${results[0].check_in}" />
                <c:set var="lastCheckOut" value="${results[fn:length(results) - 1].check_out}" />

                <p class="text-center fw-semibold text-primary my-3 px-2">
                    🔎 ${fn:length(results)} accommodations found from 
                    <fmt:formatDate value="${record.check_in}" /> – 
                    till 
                    <fmt:formatDate value="${record.check_out}" />
                </p>

                <!-- Responsive Table -->
                <div class="table-responsive">
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
                                    <td>${record.check_in}</td>
                                    <td>${record.check_out}</td>
                                    <td>${record.adult}</td>
                                    <td>${record.children}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>

            </c:when>
            <c:otherwise>
                <div class="text-center text-muted fw-semibold py-3 bg-light rounded">
                    No search results found.
                </div>
            </c:otherwise>
        </c:choose>
    </div>
    
    
      <!-- room single start -->
      <div class="container my-5">
  <div class="row g-4 align-items-start">
    <!-- Room Information -->
    <div class="col-lg-7 col-md-12">
      <h2 class="fw-bold">Standard Single Room</h2>
      <p class="text-muted">
        Standard Single Rooms are designed in open-concept living area and have many facilities.
      </p>

      <!-- Image Carousel -->
      <div id="roomCarousel" class="carousel slide rounded shadow-sm" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/06/standart-single-room-992x992.jpg"
              class="d-block w-100 rounded" alt="Room Image">
          </div>
          <!-- Add more carousel-item blocks if needed -->
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#roomCarousel" data-bs-slide="prev">
          <span class="carousel-control-prev-icon"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#roomCarousel" data-bs-slide="next">
          <span class="carousel-control-next-icon"></span>
        </button>
      </div>
    </div>

    <!-- Booking Section -->
    <div class="col-lg-5 col-md-12" style="margin-top: 125px">
      <div class="p-4 border rounded bg-light shadow-sm">
        <p class="mb-1 text-muted">Prices start at:</p>
        <h3 class="fw-bold">$357 <small class="fs-6 text-muted">/ for 3 nights</small></h3>

        <label for="accommodationCount" class="form-label mt-3">Select quantity:</label>
        <select class="form-select" id="accommodationCount">
          <option selected>1</option>
          <option>2</option>
          <option>3</option>
          <option>4</option>
          <option>5</option>
        </select>
        <p class="mt-2 text-muted">of 5 accommodations available.</p>

        <a href="rooms.jsp" class="btn btn-warning w-100 mt-3 fw-semibold">BOOK</a>

        <!-- Features -->
        <div class="row mt-4 text-muted">
          <div class="col-6">
            <p><i class="bi bi-person"></i> 2 Guests</p>
            <p><i class="bi bi-eye"></i> Beach View</p>
            <p><i class="bi bi-aspect-ratio"></i> 20m²</p>
            <p><i class="bi bi-bed"></i> Queen Bed</p>
          </div>
          <div class="col-6">
            <p><i class="bi bi-bookmark-fill text-warning"></i> Single Room</p>
            <p><i class="bi bi-star-fill text-warning"></i> Amenities:</p>
            <ul class="ps-3 small">
              <li>Air-conditioning</li>
              <li>Free Wi-Fi</li>
              <li>Hairdryer</li>
              <li>In-room safety</li>
              <li>Laundry</li>
              <li>Minibar</li>
              <li>Telephone</li>
            </ul>
          </div>
        </div>

      </div>
    </div>
  </div>
</div>
      
        <!-- room single end -->
        
         <!-- room double start -->
      <div class="container my-5">
  <div class="row g-4 align-items-start">
    <!-- Room Information -->
    <div class="col-lg-7 col-md-12">
      <h2 class="fw-bold">Superior Double Room</h2>
      <p class="text-muted">
       Superior Double Rooms are perfectly equipped for traveling couples or friends.
      </p>

      <!-- Image Carousel -->
      <div id="roomCarousel" class="carousel slide rounded shadow-sm" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/06/superior-double-room-992x992.jpg"
              class="d-block w-100 rounded" alt="Room Image">
          </div>
          <!-- Add more carousel-item blocks if needed -->
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#roomCarousel" data-bs-slide="prev">
          <span class="carousel-control-prev-icon"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#roomCarousel" data-bs-slide="next">
          <span class="carousel-control-next-icon"></span>
        </button>
      </div>
    </div>

    <!-- Booking Section -->
    <div class="col-lg-5 col-md-12" style="margin-top: 125px">
      <div class="p-4 border rounded bg-light shadow-sm">
        <p class="mb-1 text-muted">Prices start at:</p>
        <h3 class="fw-bold">$477 <small class="fs-6 text-muted">/ for 3 nights</small></h3>

        <label for="accommodationCount" class="form-label mt-3">Select quantity:</label>
        <select class="form-select" id="accommodationCount">
          <option selected>1</option>
          <option>2</option>
          <option>3</option>
          <option>4</option>
          <option>5</option>
        </select>
        <p class="mt-2 text-muted">of 5 accommodations available.</p>

        <a href="rooms.jsp" class="btn btn-warning w-100 mt-3 fw-semibold">BOOK</a>

        <!-- Features -->
        <div class="row mt-4 text-muted">
          <div class="col-6">
            <p><i class="bi bi-person"></i> 2 Guests</p>
            <p><i class="bi bi-eye"></i> Beach View</p>
            <p><i class="bi bi-aspect-ratio"></i> 25m²</p>
            <p><i class="bi bi-bed"></i> Queen Bed</p>
          </div>
          <div class="col-6">
            <p><i class="bi bi-bookmark-fill text-warning"></i> Double Room</p>
            <p><i class="bi bi-star-fill text-warning"></i> Amenities:</p>
            <ul class="ps-3 small">
              <li>Air-conditioning</li>
              <li>Free Wi-Fi</li>
              <li>Hairdryer</li>
              <li>In-room safety</li>
              <li>Laundry</li>
              <li>Minibar</li>
              <li>Telephone</li>
            </ul>
          </div>
        </div>

      </div>
    </div>
  </div>
</div>
      
        <!-- room double end -->
         <!-- room triple start -->
      <div class="container my-5">
  <div class="row g-4 align-items-start">
    <!-- Room Information -->
    <div class="col-lg-7 col-md-12">
      <h2 class="fw-bold">Comfort Triple Room</h2>
      <p class="text-muted">
    Perfectly suitable for family vacation or for big companies.
      </p>

      <!-- Image Carousel -->
      <div id="roomCarousel" class="carousel slide rounded shadow-sm" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/06/classic-double-room-992x992.jpg"
              class="d-block w-100 rounded" alt="Room Image">
          </div>
          <!-- Add more carousel-item blocks if needed -->
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#roomCarousel" data-bs-slide="prev">
          <span class="carousel-control-prev-icon"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#roomCarousel" data-bs-slide="next">
          <span class="carousel-control-next-icon"></span>
        </button>
      </div>
    </div>

    <!-- Booking Section -->
    <div class="col-lg-5 col-md-12" style="margin-top: 125px">
      <div class="p-4 border rounded bg-light shadow-sm">
        <p class="mb-1 text-muted">Prices start at:</p>
        <h3 class="fw-bold">$537 <small class="fs-6 text-muted">/ for 3 nights</small></h3>

        <label for="accommodationCount" class="form-label mt-3">Select quantity:</label>
        <select class="form-select" id="accommodationCount">
          <option selected>1</option>
          <option>2</option>
          <option>3</option>
          <option>4</option>
          <option>5</option>
        </select>
        <p class="mt-2 text-muted">of 5 accommodations available.</p>

        <a href="rooms.jsp" class="btn btn-warning w-100 mt-3 fw-semibold">BOOK</a>

        <!-- Features -->
        <div class="row mt-4 text-muted">
          <div class="col-6">
            <p><i class="bi bi-person"></i> 2 Guests</p>
            <p><i class="bi bi-eye"></i> Beach View</p>
            <p><i class="bi bi-aspect-ratio"></i> 40m²</p>
            <p><i class="bi bi-bed"></i> Queen Bed, sofa bed</p>
          </div>
          <div class="col-6">
            <p><i class="bi bi-bookmark-fill text-warning"></i> Triple Room</p>
            <p><i class="bi bi-star-fill text-warning"></i> Amenities:</p>
            <ul class="ps-3 small">
              <li>Air-conditioning</li>
              <li>Free Wi-Fi</li>
              <li>Hairdryer</li>
              <li>In-room safety</li>
              <li>Laundry</li>
              <li>Minibar</li>
              <li>Telephone</li>
            </ul>
          </div>
        </div>

      </div>
    </div>
  </div>
</div>
      
        <!-- room triple end -->

    <!-- Footer -->
    <footer class="footer mt-5">
        <div class="container">
            <div class="row">
                <!-- Column 1 -->
                <div class="col-md-3">
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

                <!-- Column 2 -->
                <div class="col-md-3">
                    <h4>For Customers</h4>
                    <ul>
                        <li><a href="#"><i class="fa-solid fa-angle-right"></i> About Luviana</a></li>
                        <li><a href="#"><i class="fa-solid fa-angle-right"></i> Customer Care</a></li>
                        <li><a href="#"><i class="fa-solid fa-angle-right"></i> Corporate Accounts</a></li>
                        <li><a href="#"><i class="fa-solid fa-angle-right"></i> Financial Info</a></li>
                        <li><a href="#"><i class="fa-solid fa-angle-right"></i> Terms & Conditions</a></li>
                    </ul>
                </div>

                <!-- Column 3 -->
                <div class="col-md-3">
                    <h4>Recent News</h4>
                    <ul>
                        <li><a href="#"><i class="fa-solid fa-leaf"></i> Our Secret Island Boat Tour</a></li>
                        <li><a href="#"><i class="fa-solid fa-leaf"></i> Chill in Our Natural Shelters</a></li>
                        <li><a href="#"><i class="fa-solid fa-leaf"></i> September in Luviana</a></li>
                        <li><a href="#"><i class="fa-solid fa-leaf"></i> Live Music Concerts</a></li>
                    </ul>
                </div>

                <!-- Column 4 -->
                <div class="col-md-3">
                    <h4>Contact Us</h4>
                    <p><i class="fa-solid fa-location-dot"></i> 3015 Grand Ave, Coconut Grove, FL 12345</p>
                    <p><i class="fa-solid fa-envelope"></i> hello@luviana.com</p>
                    <p><i class="fa-solid fa-phone"></i> 1.954.456.6789</p>
                    <p><i class="fa-solid fa-fax"></i> 1.954.456.6788</p>
                    <p><i class="fa-solid fa-headset"></i> 24/7 Customer Service</p>
                </div>
            </div>

            <div class="footer-bottom">
                <p>Luviana © 2025 All Rights Reserved</p>
            </div>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
