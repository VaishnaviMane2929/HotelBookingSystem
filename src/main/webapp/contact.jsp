<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Your Date</title>
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

        /* Form Styling */
        .card-box {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            border-radius: 10px;
            background: white;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
        }

        /* Responsive Button Sizing */
        .btn-outline-primary, .btn-outline-secondary {
            width: 48%;
        }

        /* Mobile Responsive */
        @media (max-width: 576px) {
            .nav-links {
                flex-direction: column;
                text-align: center;
            }

            .btn-outline-primary, .btn-outline-secondary {
                width: 100%;
                margin-bottom: 10px;
            }
        }
        
         iframe {
            width: 100%;
            height: 400px;
            border: none;
            margin-top: 40px;
            border-radius: 10px;
        }

        h2 {
            margin-top: 40px;
            text-align: center;
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
    
    <section class="py-12 px-4 text-center">
    <div class="max-w-3xl mx-auto">
     <div class="flex justify-center items-center space-x-2 my-6">
  <!-- Small stars -->
  <svg class="w-3 h-3 text-yellow-400" fill="currentColor" viewBox="0 0 24 24">
    <path d="M12 2l2.39 7.26H22l-6 4.38 2.29 7.09L12 16.9 5.71 20.73 8 13.64 2 9.26h7.61z" />
  </svg>
  <svg class="w-4 h-4 text-yellow-400" fill="currentColor" viewBox="0 0 24 24">
    <path d="M12 2l2.39 7.26H22l-6 4.38 2.29 7.09L12 16.9 5.71 20.73 8 13.64 2 9.26h7.61z" />
  </svg>
  <svg class="w-6 h-6 text-yellow-400" fill="currentColor" viewBox="0 0 24 24">
    <path d="M12 2l2.39 7.26H22l-6 4.38 2.29 7.09L12 16.9 5.71 20.73 8 13.64 2 9.26h7.61z" />
  </svg>
  <svg class="w-4 h-4 text-yellow-400" fill="currentColor" viewBox="0 0 24 24">
    <path d="M12 2l2.39 7.26H22l-6 4.38 2.29 7.09L12 16.9 5.71 20.73 8 13.64 2 9.26h7.61z" />
  </svg>
  <svg class="w-3 h-3 text-yellow-400" fill="currentColor" viewBox="0 0 24 24">
    <path d="M12 2l2.39 7.26H22l-6 4.38 2.29 7.09L12 16.9 5.71 20.73 8 13.64 2 9.26h7.61z" />
  </svg>
</div>

      <h2 class="text-4xl font-bold mb-4">Contact Us</h2>
      <p class="text-lg text-gray-600">
        Feel free to contact us directly if you have any inquiries regarding accommodation.
        We would love to have you stay with us!
      </p>
    </div>
  </section>

  <section class="py-10 bg-gray-50">
    <div class="max-w-6xl mx-auto grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8 px-4">
      
      <!-- Location -->
      <div>
        <h3 class="text-xl font-semibold mb-2">Our Location</h3>
        <div class="flex items-start space-x-2 text-gray-600">
          <svg class="w-5 h-5 mt-1 text-yellow-600" fill="currentColor" viewBox="0 0 20 20"><path d="M10 2a6 6 0 00-6 6c0 4.4 6 10 6 10s6-5.6 6-10a6 6 0 00-6-6zm0 8a2 2 0 110-4 2 2 0 010 4z"/></svg>
          <p>Bavaro, Punta Cana,<br>La Altagracia Province<br>
          <a href="#" class="text-yellow-600 underline text-sm mt-1 inline-block">view on map</a></p>
        </div>
      </div>

      <!-- Call Us -->
      <div>
        <h3 class="text-xl font-semibold mb-2">Call Us</h3>
        <div class="flex flex-col space-y-2 text-gray-600">
          <div class="flex items-center space-x-2">
            <svg class="w-5 h-5 text-yellow-600" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24"><path d="M22 16.92V21a2 2 0 01-2.18 2A19.87 19.87 0 013 5.18 2 2 0 015 3h4.09a1 1 0 011 .76l1.2 4.78a1 1 0 01-.29.94l-2.2 2.2a16 16 0 006.59 6.59l2.2-2.2a1 1 0 01.94-.29l4.78 1.2a1 1 0 01.76 1z"/></svg>
            <span>+1 (954) 156.67.23</span>
          </div>
          <span>+1 (954) 406.67.49</span>
          <span>+1 (954) 054.81.89</span>
        </div>
      </div>

      <!-- Working Hours -->
      <div>
        <h3 class="text-xl font-semibold mb-2">Working Hours</h3>
        <div class="flex flex-col text-gray-600 space-y-1">
          <div class="flex items-center space-x-2">
            <svg class="w-5 h-5 text-yellow-600" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24"><path d="M12 8v4l3 3M12 2a10 10 0 1010 10A10 10 0 0012 2z"/></svg>
            <span>Mon. – Fr. 7 am – 8 pm</span>
          </div>
          <span>Saturday 8 am – 8 pm</span>
          <span>Sunday 10 am – 6 pm</span>
        </div>
      </div>

      <!-- Email -->
      <div>
        <h3 class="text-xl font-semibold mb-2">Get in Touch</h3>
        <div class="flex items-start space-x-2 text-gray-600">
          <svg class="w-5 h-5 mt-1 text-yellow-600" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24"><path d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8m-18 8h18a2 2 0 002-2V6a2 2 0 00-2-2H3a2 2 0 00-2 2v8a2 2 0 002 2z"/></svg>
          <p>To contact our team, please mail<br>
            <a href="mailto:hello@luviana.com" class="text-yellow-600 underline">hello@luviana.com</a>
          </p>
        </div>
      </div>

    </div>
  </section>

    <!-- Search Your Date Form -->
    <div class="container mt-5">
        <div class="card-box shadow-lg">
            <h3 class="text-center mb-3">Fill Up Your Date</h3>
            <form action="searchData" method="GET">
                <div class="mb-3">
                    <label for="check_in" class="form-label">Check-in:</label>
                    <input type="date" id="check_in" name="check_in" class="form-control"
                        value="<%= request.getParameter("check_in") != null ? request.getParameter("check_in") : "" %>"
                        required>
                </div>

                <div class="mb-3">
                    <label for="check_out" class="form-label">Check-out:</label>
                    <input type="date" id="check_out" name="check_out" class="form-control"
                        value="<%= request.getParameter("check_out") != null ? request.getParameter("check_out") : "" %>"
                        required>
                </div>

                <div class="mb-3">
                    <label for="adult" class="form-label">Adults:</label>
                    <select id="adult" name="adult" class="form-select">
                        <option value="1" <%= "1".equals(request.getParameter("adult")) ? "selected" : "" %>>1</option>
                        <option value="2" <%= "2".equals(request.getParameter("adult")) ? "selected" : "" %>>2</option>
                        <option value="3" <%= "3".equals(request.getParameter("adult")) ? "selected" : "" %>>3</option>
                        <option value="4" <%= "4".equals(request.getParameter("adult")) ? "selected" : "" %>>4</option>
                        <option value="5" <%= "5".equals(request.getParameter("adult")) ? "selected" : "" %>>5</option>
                        <option value="6" <%= "6".equals(request.getParameter("adult")) ? "selected" : "" %>>6</option>
                        <option value="7" <%= "7".equals(request.getParameter("adult")) ? "selected" : "" %>>7</option>
                        <option value="8" <%= "8".equals(request.getParameter("adult")) ? "selected" : "" %>>8</option>
                        <option value="9" <%= "9".equals(request.getParameter("adult")) ? "selected" : "" %>>9</option>
                        <option value="10" <%= "10".equals(request.getParameter("adult")) ? "selected" : "" %>>10</option>
                    </select>
                </div>

                <div class="mb-3">
                    <label for="children" class="form-label">Children:</label>
                    <select id="children" name="children" class="form-select">
                        <option value="0" <%= "0".equals(request.getParameter("children")) ? "selected" : "" %>>0</option>
                        <option value="1" <%= "1".equals(request.getParameter("children")) ? "selected" : "" %>>1</option>
                        <option value="2" <%= "2".equals(request.getParameter("children")) ? "selected" : "" %>>2</option>
                        <option value="3" <%= "3".equals(request.getParameter("children")) ? "selected" : "" %>>3</option>
                        <option value="4" <%= "4".equals(request.getParameter("children")) ? "selected" : "" %>>4</option>
                        <option value="5" <%= "5".equals(request.getParameter("children")) ? "selected" : "" %>>5</option>
                       <option value="6" <%= "6".equals(request.getParameter("children")) ? "selected" : "" %>>6</option>
                        <option value="7" <%= "7".equals(request.getParameter("children")) ? "selected" : "" %>>7</option>
                        <option value="8" <%= "8".equals(request.getParameter("children")) ? "selected" : "" %>>8</option>
                        <option value="9" <%= "9".equals(request.getParameter("children")) ? "selected" : "" %>>9</option>
                        
                        <option value="10" <%= "10".equals(request.getParameter("children")) ? "selected" : "" %>>10</option>
                        
                        
                    </select>
                </div>

                <div class="text-center mt-4">
                    <button type="submit" class="btn btn-primary w-100">SEARCH</button>
                </div>
            </form>
            
            <a href="searchResults.jsp"></a>
            

            <!-- Login & Signup Buttons -->
            <div class="text-center mt-3 d-flex justify-content-between">
                <a href="login.jsp" class="btn btn-outline-primary">Login</a>
                <a href="register.jsp" class="btn btn-outline-secondary">Sign Up</a>
            </div>
        </div>
    </div>
    
    <!-- Embedded Google Map -->
<h2>Our Location</h2>
<iframe 
    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3153.084585014456!2d-122.42187508468115!3d37.77492977975843!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x808f7e3c3b46c5c1%3A0x123456789abcdef!2sSan%20Francisco%2C%20CA!5e0!3m2!1sen!2sus!4v1600000000000" 
    allowfullscreen="" 
    loading="lazy">
</iframe>

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


</body>
</html>
