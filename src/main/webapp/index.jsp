<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Navbar</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    
        <style>
       .custom-navbar {
            background-color: #374151 !important;
           
        }
       .navbar-nav .nav-link {
    color: white !important; /* Ensures text is white */
}
 /* Ensure the carousel container is properly sized */
        .carousel-container {
            max-width: 100%;
            height: 500px;
        }
         
        .carousel-inner img {
            width: 100%;
            height: 500px;
            object-fit: cover;
        }
             .card-box {
            background-color: #f8f9fa; /* Light Gray */
            border-radius: 8px;
            padding: 20px;
            max-width: 600px;
            margin: auto;
        }
        button {
            background-color: #007bff;
            border: none;
            font-size: 18px;
            padding: 12px;
        }
        button:hover {
            background-color: #0056b3;
        }

        .hotel-image {
            height: 250px;
            object-fit: cover;
        }
         /* Ensure images fully cover the slider */
        .carousel-inner img {
            width: 100%;
            height: 500px;
            object-fit: cover; /* Prevents stretching */
        }
        
       
        .amenities-section {
            background: url('https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/gallery-2560x989.jpg') no-repeat center center;
            background-size: cover;
            position: relative;
            padding: 80px 0;
            min-height: 30vh;
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
        }
         .overlay {
            background: rgba(0, 0, 0, 0.6);
            padding: 2rem;
            color: white;
            border-radius: 12px;
            max-width: 800px;
            backdrop-filter: blur(8px);
        }
         .overlay h2 {
            font-size: 2rem;
            font-weight: bold;
            margin-bottom: 1rem;
        }
        .amenities-list  {
            list-style: none;
            padding: 0;
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 10px;
        }
        .amenities-list ul li {
             display: flex;
            align-items: center;
            gap: 10px;
            font-size: 1.2rem;
            transition: transform 0.2s ease-in-out;
        }
        .amenities-list i {
            margin-right: 10px;
            font-size: 22px;
        }
        .amenities-list li {
         transform: translateX(8px);
        }
         @media (max-width: 768px) {
            .overlay {
                max-width: 95%;
                padding: 1.5rem;
            }
            .amenities-list  {
                grid-template-columns: repeat(1, 1fr);
            }
        }
        .gallery-header {
    text-align: center;
    margin-bottom: 20px;
}
        .gallery-header h5 {
    font-size: 14px;
    letter-spacing: 2px;
    color: #666;
    font-weight: bold;
    text-transform: uppercase;
    position: relative;
    display: inline-block;
}

.gallery-header h5::before {
    content: "";
    width: 50px;
    height: 3px;
    background-color: #c4ad83;
    position: absolute;
    top: -8px;
    left: 50%;
    transform: translateX(-50%);
}

.gallery-header h1 {
    font-size: 36px;
    font-weight: bold;
    color: #222;
    margin-top: 10px;
}
        
         .gallery-section {
            text-align: center;
            padding: 50px 0;
        }
        .gallery-title {
            font-size: 2rem;
            font-weight: bold;
            margin-bottom: 20px;
        }
        .view-gallery-btn {
            background-color: #c5b191;
            color: white;
            border-radius: 20px;
            padding: 10px 20px;
            text-decoration: none;
        }
        .view-gallery-btn:hover {
            background-color: #a39173;
        }
         .card img {
            object-fit: cover;
            height: 200px;
            width: 100%;
        }
          /* Testimonial section styling */
        .container-fluid {
        margin-top: 50px;
        }
          .testimonial-text {
            max-width: 600px;
            background: rgba(0, 0, 0, 0.6);
            padding: 20px;
            border-radius: 10px;
        }
         .testimonial-section {
            display: flex;
            align-items: center;
            justify-content: center;
            flex-wrap: wrap;
            background: url('https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/gallery-2-1170x1149.jpg') no-repeat center center/cover;
            padding: 50px 20px;
            text-align: center;
            color: white;
        }
         .testimonial-img {
            width: 60px;
            height: 60px;
            border-radius: 50%;
            object-fit: cover;
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

        
        
        
         /* Responsive adjustments */
        @media (max-width: 768px) {
            .testimonial-section {
                flex-direction: column;
                padding: 30px;
            }
        }

        @media (max-width: 768px) {
            .testimonial-section {
                flex-direction: column;
            }
            .testimonial-image {
                width: 100%;
                height: 300px;
            }
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light custom-navbar">
        <div class="container-fluid">
            <a class="navbar-brand" href="#" style="color: white;">Hotel Booking</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link <%=(request.getRequestURI().endsWith("index.jsp") ? "active" : "")%>" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <%=(request.getRequestURI().endsWith("about.jsp") ? "active" : "")%>" href="about.jsp">About</a>
                    </li>
                  <li class="nav-item">
                        <a class="nav-link <%=(request.getRequestURI().endsWith("amenities.jsp") ? "active" : "")%>" href="amenities.jsp ">Amenities</a>
                    </li>                    <li class="nav-item">
                        <a class="nav-link <%=(request.getRequestURI().endsWith("contact.jsp") ? "active" : "")%>" href="contact.jsp">Contact Us</a>
                    </li>
                    <% if (session.getAttribute("user") == null) { %>
                        <li class="nav-item">
                            <a class="btn btn-primary ms-3" href="login.jsp">Login</a>
                        </li>
                    <% } else { %>
                        <li class="nav-item">
                            <a class="btn btn-danger ms-3" href="logout.jsp">Logout</a>
                        </li>
                    <% } %>
                </ul>
            </div>
        </div>
    </nav>
    
    
      <div class="container-fluid mt-4">
        <div id="hotelCarousel" class="carousel slide carousel-container" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/slide-3-2560x1268.jpg" 
                        class="d-block w-100" alt="Luxury Hotel">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Luxury Hotel</h5>
                        <p>Experience the best luxury stay with us.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/Slide-4-2560x1268.jpg" 
                        class="d-block w-100" alt="Beachside Resort">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Beachside Resort</h5>
                        <p>Relax by the ocean in our premium suites.</p>
                    </div>
                </div>
     <div class="carousel-item">
                    <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/slide-2-new-2560x1268.jpg" 
                        class="d-block w-100" alt="Island Retreat">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Island Retreat</h5>
                        <p>Your private paradise awaits.</p>
                    </div>
                </div>
            </div>
     <!-- Carousel Controls -->
            <button class="carousel-control-prev" type="button" data-bs-target="#hotelCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#hotelCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
    
    <!-- search your date -->
 <div class="container mt-5">
        <div class="card-box shadow-lg">
            <h3 class="text-center mb-3">Fillup Your Date</h3>
            <form action="searchResults.jsp" method="GET">
                <div class="mb-3">
                    <label for="checkin" class="form-label">Check-in:</label>
                    <input type="date" id="checkin" name="checkin" class="form-control"
                        value="<%= request.getParameter("checkin") != null ? request.getParameter("checkin") : "" %>"
                        required>
                </div>

                <div class="mb-3">
                    <label for="checkout" class="form-label">Check-out:</label>
                    <input type="date" id="checkout" name="checkout" class="form-control"
                        value="<%= request.getParameter("checkout") != null ? request.getParameter("checkout") : "" %>"
                        required>
                </div>

                <div class="mb-3">
                    <label for="adults" class="form-label">Adults:</label>
                    <select id="adults" name="adults" class="form-select">
                        <option value="1" <%= "1".equals(request.getParameter("adults")) ? "selected" : "" %>>1</option>
                         <option value="2" <%= "2".equals(request.getParameter("adults")) ? "selected" : "" %>>2</option>
                        <option value="3" <%= "3".equals(request.getParameter("adults")) ? "selected" : "" %>>3</option>
                        <option value="4" <%= "4".equals(request.getParameter("adults")) ? "selected" : "" %>>4</option>
                    </select>
                </div>

                <div class="mb-3">
                    <label for="children" class="form-label">Children:</label>
                    <select id="children" name="children" class="form-select">
                        <option value="0" <%= "0".equals(request.getParameter("children")) ? "selected" : "" %>>0</option>
                        <option value="1" <%= "1".equals(request.getParameter("children")) ? "selected" : "" %>>1</option>
                        <option value="2" <%= "2".equals(request.getParameter("children")) ? "selected" : "" %>>2</option>
                        <option value="3" <%= "3".equals(request.getParameter("children")) ? "selected" : "" %>>3</option>
                    </select>
                </div>

                <div class="text-center mt-4">
                    <button type="submit" class="btn btn-primary w-100">SEARCH</button>
                </div>
      </form>
        </div>
    </div>
      <!-- JavaScript for Date Restrictions -->
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            let today = new Date().toISOString().split("T")[0];
            let checkin = document.getElementById("checkin");
            let checkout = document.getElementById("checkout");

            checkin.setAttribute("min", today);
            checkout.setAttribute("min", today);

            checkin.addEventListener("change", function () {
                checkout.setAttribute("min", this.value);
            });
        });
    </script>

    <style>
    /* Ensures images fill their container with consistent height */
    .hotel-image {
        height: 250px; /* Adjust height as needed */
        object-fit: cover;
    }
</style>
    <div class="container mt-5">
    <div class="row">
        <!-- Left Side: Two Stacked Images -->
        <div class="col-md-6 d-flex flex-column align-items-center gap-3">
            <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/welcome-1.jpg" 
                class="img-fluid rounded shadow w-100 hotel-image" alt="Luxury Hotel">
            
            <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/welcome-2.jpg" 
                class="img-fluid rounded shadow w-100 hotel-image" alt="Beachside Resort">
        </div>
      <!-- Right Side: Content Information -->
        <div class="col-md-6 d-flex align-items-center">
            <div class="text-center text-md-start">
                <p class="text-uppercase text-primary fw-bold">Raising Comfort to the Highest Level</p>
                <h2 class="fw-bold">Welcome to Luviana Hotel Resort</h2>
                <p class="text-muted">
                    Experience world-class luxury and comfort at our exclusive hotel. 
                    Nestled in a serene environment, our premium suites and excellent service 
                    ensure an unforgettable stay. Whether you're here for relaxation, business, 
                    or adventure, we offer top-tier hospitality to make your visit remarkable.
                </p>
                <p>The Hotel Luviana is the right choice for visitors who are searching for a combination of charm and a convenient position from where to explore surroundings.</p>
                <button class="btn btn-primary">Explore More</button>
            </div>
        </div>
    </div>
</div>
    
    <div class="container mt-5">
        <h3 class="text-center">Per Day Charges</h3>
        <table class="table table-bordered text-center">
            <thead>
                <tr>
                    <th>Room Type</th>
                    <th>Price (per night)</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Standard Room</td>
                    <td>$100</td>
                </tr>
                <tr>
                    <td>Deluxe Room</td>
                    <td>$150</td>
                </tr>
                <tr>
                    <td>Suite</td>
                    <td>$250</td>
                </tr>
            </tbody>
        </table>
    </div>
    
      <div class="container mt-5">
    <h3 class="text-center">Our Premium Rooms</h3>
    <div class="row">
        <div class="col-12 col-md-4 mb-4">
            <div class="card shadow">
                <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/06/superior-double-room-992x992.jpg" 
                     class="card-img-top hotel-image" alt="Hotel Room 1">
                <div class="card-body text-center">
                    <h5 class="card-title">Superior Double Room</h5>
                   <p>$<span style="font-size: 25px">129</span> / per night</p>
                    <p class="card-text">Enjoy a luxurious stay in our superior double room.</p>
                </div>
            </div>
        </div>
        <div class="col-12 col-md-4 mb-4">
            <div class="card shadow">
                <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/06/classic-double-room-992x992.jpg" 
                     class="card-img-top hotel-image" alt="Hotel Room 2">
                <div class="card-body text-center">
                    <h5 class="card-title">Classic Double Room</h5>
                    <p>$<span style="font-size: 25px">159</span> / per night</p>
                    <p class="card-text">A cozy and elegant room for a relaxing experience.</p>
       </div>
            </div>
        </div>
        <div class="col-12 col-md-4 mb-4">
            <div class="card shadow">
                <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/06/comfort-triple-room-992x992.jpg" 
                     class="card-img-top hotel-image" alt="Hotel Room 3">
                <div class="card-body text-center">
                    <h5 class="card-title">Comfort Triple Room</h5>
                   <p>$<span style="font-size: 25px">179</span> / per night</p>
                    <p class="card-text">Spacious and comfortable for a  your family stay...</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Additional Image in a Card Below Content -->
<div class="container mt-5">
    <div class="card shadow text-center">
        <img src="https://images.unsplash.com/photo-1542314831-068cd1dbfeeb?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" 
             class="card-img-top hotel-image" alt="Hotel Lobby">
        <div class="card-body">
            <h5 class="card-title">Enjoy Your Stay With Us</h5>
            <p class="card-text">Relax in our beautifully designed hotel lobby with top-tier amenities.</p>
        </div>
    </div>
</div>

<!-- Our Amenities -->
 <div class="container-fluid amenities-section d-flex justify-content-end">
 
        <div class="overlay">
             <h2 class="text-3xl md:text-4xl font-bold mb-4">Our Amenities</h2>
            <p class="text-lg mb-6">The hotel is arranged on three floors without a lift. On the ground floor, apart from the reception, there is a comfortable lounge where you can sit and drink tea.</p>
            
            <ul class="grid grid-cols-1 md:grid-cols-2 gap-4 text-lg">
                <li class="flex items-center gap-2"><i class="fas fa-swimming-pool text-blue-300"></i> Swimming Pool</li>
                <li class="flex items-center gap-2"><i class="fas fa-dumbbell text-yellow-300"></i> Gym & Yoga</li>
                <li class="flex items-center gap-2"><i class="fas fa-spa text-pink-300"></i> Spa & Massage</li>
                <li class="flex items-center gap-2"><i class="fas fa-ship text-blue-400"></i> Boat Tours</li>
                <li class="flex items-center gap-2"><i class="fas fa-water text-indigo-400"></i> Surfing Lessons</li>
                <li class="flex items-center gap-2"><i class="fas fa-microphone text-red-400"></i> Conference Room</li>
                <li class="flex items-center gap-2"><i class="fas fa-water text-teal-300"></i> Diving & Snorkeling</li>
                <li class="flex items-center gap-2"><i class="fas fa-umbrella-beach text-orange-300"></i> Private Beach</li>
  </ul>
        </div>
    </div>

      <!-- people say-->
    
    
<!-- Responsive Card-Based Image Gallery -->
<div class="container text-center mt-4">
    <div class="gallery-header">
        <h5 class="uppercase tracking-wide">WELCOME TO OUR PHOTO GALLERY</h5>
        <h1>Photo Gallery of Our Hotel</h1>
    </div>
</div>

 <!-- View Gallery Button -->
    <div class="d-flex justify-content-center mt-4">
        <a href="gallery.jsp" class="btn btn-primary">View Gallery</a>
    </div>
</div>

<div class="container mt-4">
    <div class="row g-3">
        <div class="col-lg-3 col-md-4 col-sm-6">
            <div class="card">
                <a href="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/welcome-1-1.jpg" target="_blank">
                    <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/welcome-1-1.jpg" class="card-img-top" alt="Hotel Image 1">
                </a>
    </div>
        </div>
        <div class="col-lg-3 col-md-4 col-sm-6">
            <div class="card">
                <a href="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/welcome-2-1.jpg" target="_blank">
                    <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/welcome-2-1.jpg" class="card-img-top" alt="Hotel Image 2">
                </a>
            </div>
        </div>
        <div class="col-lg-3 col-md-4 col-sm-6">
            <div class="card">
                <a href="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/06/single-room-2.jpg" target="_blank">
                    <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/06/single-room-2.jpg" class="card-img-top" alt="Hotel Image 3">
                </a>
            </div>
        </div>
        <div class="col-lg-3 col-md-4 col-sm-6">
            <div class="card">
     <a href="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/gallery-2-1170x1149.jpg" target="_blank">
                    <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/gallery-2-1170x1149.jpg" class="card-img-top" alt="Hotel Image 4">
                </a>
            </div>
        </div>
    </div>

  <div class="container-fluid testimonial-section">
        <div class="testimonial-text">
            <h5 class="text-uppercase">AT THE HEART OF COMMUNITIES</h5>
            <h2>People Say</h2>

            <!-- Bootstrap Carousel for Multiple Testimonials -->
            <div id="testimonialCarousel" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <p>“We stayed here with our family and are fully satisfied with our vacation. Rooms are very modern, have all needed amenities, the kitchen is very delicious and service is just perfect. We will for sure come back.”</p>
                        <p><strong>- Emily Smith</strong></p>
                    </div>
                    <div class="carousel-item">
                        <p>“The hotel was amazing, and the staff was very welcoming. The view from our room was breathtaking, and we enjoyed every moment of our stay.”</p>
                        <p><strong>- John Doe</strong></p>
                    </div>
                    <div class="carousel-item">
                        <p>“Great location, excellent service, and cozy rooms! Would highly recommend this place for a relaxing getaway.”</p>
                        <p><strong>- Sarah Johnson</strong></p>
                    </div>
                </div>
    
                <!-- Carousel Controls -->
                <button class="carousel-control-prev" type="button" data-bs-target="#testimonialCarousel" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#testimonialCarousel" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
    </div>
    
   <%-- Footer Section --%>
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



    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>