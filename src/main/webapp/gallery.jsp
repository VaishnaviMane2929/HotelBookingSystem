<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Our Gallery</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@600&family=Roboto&display=swap" rel="stylesheet">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
   
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Roboto', sans-serif;
            background-color: #f4f4f4;
            color: #333;
        }

        /* Navbar Styling */
        .navbar {
            background-color: #333;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap;
        }

        .navbar .logo {
            color: white;
            font-size: 22px;
            font-weight: bold;
        }

        .nav-toggle {
            display: none;
            font-size: 24px;
            color: white;
            background: none;
            border: none;
            cursor: pointer;
        }

        .nav-links {
            list-style: none;
            display: flex;
            gap: 15px;
        }

        .nav-links li a {
            color: white;
            text-decoration: none;
            font-size: 16px;
            padding: 8px 12px;
            transition: background 0.3s ease;
        }

        .nav-links li a:hover {
            background-color: rgba(255, 255, 255, 0.2);
            border-radius: 5px;
        }

        .login-btn {
            background-color: #f04e30;
            color: white;
            padding: 8px 15px;
            border-radius: 5px;
        }

        .login-btn:hover {
            background-color: #d43b1e;
        }

        /* Responsive Nav */
        @media (max-width: 768px) {
            .nav-toggle {
                display: block;
            }

            .nav-links {
                display: none;
                flex-direction: column;
                width: 100%;
                margin-top: 10px;
                background-color: #333;
            }

            .nav-links.active {
                display: flex;
            }

            .nav-links li {
                text-align: center;
                padding: 10px 0;
            }
        }

        .hero-section {
            position: relative;
            width: 100%;
            height: 90vh;
            background: url('https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/gallery-2560x989.jpg') no-repeat center center/cover;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            color: #fff;
        }

        .overlay-box {
            background-color: rgba(0, 10, 50, 0.3);
            padding: 40px 20px;
            border-radius: 12px;
            max-width: 800px;
            margin: 20px;
        }

          .curved-stars {
        display: flex;
        justify-content: center;
        align-items: flex-end;
        gap: 8px;
        margin-top: 20px;
    }

    .curved-stars i {
        color: gold;
    }

    .star1 { font-size: 10px; transform: translateY(8px); }
    .star2 { font-size: 14px; transform: translateY(4px); }
    .star3 { font-size: 18px; transform: translateY(2px); }
    .star4 { font-size: 24px; } /* center star */
    .star5 { font-size: 18px; transform: translateY(2px); }
    .star6 { font-size: 14px; transform: translateY(4px); }
    .star7 { font-size: 10px; transform: translateY(8px); }

        h1 {
            font-family: 'Playfair Display', serif;
            font-size: 3rem;
            margin: 10px 0;
        }

        p {
            font-size: 1.1rem;
            line-height: 1.6;
            margin-top: 15px;
        }

        .about-container {
      max-width: 1200px;
      margin: 60px auto;
      padding: 0 20px;
      display: flex;
      gap: 40px;
      align-items: flex-start;
    }

    .about-left {
      flex: 1;
    }

    .about-left .subtitle {
      text-transform: uppercase;
      font-size: 14px;
      color: #a68a58;
      font-weight: bold;
      position: relative;
      padding-left: 30px;
    }

    .about-left .subtitle::before {
      content: "";
      position: absolute;
      left: 0;
      top: 50%;
      transform: translateY(-50%);
      width: 20px;
      height: 3px;
      background-color: #a68a58;
    }

    .about-left h1 {
      font-family: 'Playfair Display', serif;
      font-size: 2.8rem;
      margin-top: 10px;
      color: #1a1a1a;
    }

    .about-right {
      flex: 2;
      font-size: 1.1rem;
      line-height: 1.8;
      color: #555;
    }

    @media (max-width: 768px) {
      .about-container {
        flex-direction: column;
        text-align: center;
      }

      .about-left .subtitle {
        justify-content: center;
        padding-left: 0;
      }

      .about-left .subtitle::before {
        display: none;
      }
    }
     .container {
      display: flex;
      justify-content: center;
      flex-wrap: wrap;
      gap: 30px;
      max-width: 1200px;
      margin: 40px;
    }

    .image-box1 {
      flex: 1 1 45%;
      overflow: hidden;
      border-radius: 16px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .image-box1:hover {
      transform: scale(1.02);
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
    }

    .image-box1 img {
      width: 100%;
      height: auto;
      display: block;
      border-radius: 16px;
    }

    /* Responsive tweak */
    @media (max-width: 768px) {
      .image-box {
        flex: 1 1 100%;
      }
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
    
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
    integrity="sha512-Fo3rlrZj/kTcXnLq6k6BVz8AwlE6kEwGLQF/b4Vp1J+nDeFS3tA1n3yyFdUKSJEYr+cBDJAfFqefzMLQaMdT9A=="
    crossorigin="anonymous"
    referrerpolicy="no-referrer"
  />

</head>
<body>

<!-- Navbar -->
<nav class="navbar">
    <div class="logo">Luviana</div>
    <button class="nav-toggle" onclick="toggleMenu()">☰</button>
    <ul class="nav-links" id="navLinks">
        <li><a href="index.jsp">Home</a></li>
        <li><a href="about.jsp">About</a></li>
        <li><a href="amenities.jsp">Amenities</a></li>
        <li><a href="contact.jsp">Contact</a></li>
        <li><a href="login.jsp" class="login-btn">Login</a></li>
    </ul>
</nav>

<!-- Hero Section -->
<div class="hero-section">
    <div class="overlay-box">
        <div class="curved-stars">
    <i class="fas fa-star star1"></i>
    <i class="fas fa-star star2"></i>
    <i class="fas fa-star star3"></i>
    <i class="fas fa-star star4"></i>
    <i class="fas fa-star star5"></i>
    <i class="fas fa-star star6"></i>
    <i class="fas fa-star star7"></i>
</div>
        <h1>Our Gallery</h1>
        <p>We have gathered spectacular pictures of our hotel and location to showcase pure beauty of nature and perfected style & design of our accommodations to inspire you.</p>
    </div>
</div>


  
   <div class="container">
    <div class="image-box1">
      <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/gallery-9.jpg" alt="Balcony with lake view">
    </div>
    <div class="image-box1">
      <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/gallery-8.jpg" alt="Elegant restaurant interior">
    </div>
     <div class="image-box1">
      <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/welcome-1-1.jpg" alt="Elegant restaurant interior">
    </div>
     <div class="image-box1">
      <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/welcome-2-1.jpg" alt="Elegant restaurant interior">
    </div>
     <div class="image-box1">
      <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/gallery-7.jpg" alt="Elegant restaurant interior">
    </div>
     <div class="image-box1">
      <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/gallery-6-1.jpg" alt="Elegant restaurant interior">
    </div>
     <div class="image-box1">
      <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/gallery-5-1.jpg" alt="Elegant restaurant interior">
    </div>
     <div class="image-box1">
      <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/gallery-4-1.jpg" alt="Elegant restaurant interior">
    </div>
     <div class="image-box1">
      <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/gallery-3-1.jpg" alt="Elegant restaurant interior">
    </div>
     <div class="image-box1">
      <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/gallery-2-1.jpg" alt="Elegant restaurant interior">
    </div>
     <div class="image-box1">
      <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/blog-6.jpg" alt="Elegant restaurant interior">
    </div>
     <div class="image-box1">
      <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/06/single-room-3-1.jpg" alt="Elegant restaurant interior">
    </div>
     <div class="image-box1">
      <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/06/single-room-2.jpg" alt="Elegant restaurant interior">
    </div>
     <div class="image-box1">
      <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/welcome-2.jpg" alt="Elegant restaurant interior">
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

<!-- Script to toggle menu -->
<script>
    function toggleMenu() {
        const nav = document.getElementById('navLinks');
        nav.classList.toggle('active');
    }
</script>

</body>
</html>
