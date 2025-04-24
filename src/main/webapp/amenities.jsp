<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Luviana Hotel</title>

<!-- Google Fonts and Font Awesome (placed correctly outside <style>) -->
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@600&family=Roboto&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<style type="text/css">
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
            background: url('https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/amenities-1-2560x989.jpg') no-repeat center center/cover;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            color: #fff;
        }

        .overlay-box {
           background-color: rgba(0, 10, 50, 0.4);

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
        
         .amenities-section {
      display: flex;
      justify-content: center;
      gap: 60px;
      padding: 60px 20px;
      text-align: center;
    }

    .amenity-box {
      max-width: 300px;
    }

    .amenity-box i {
      font-size: 40px;
      color: #c3a871;
      margin-bottom: 20px;
    }

    .amenity-box h3 {
      font-family: 'Playfair Display', serif;
      font-size: 22px;
      color: #111;
      margin-bottom: 15px;
    }

    .amenity-box p {
      font-size: 16px;
      line-height: 1.6;
      margin-bottom: 20px;
    }

    .amenity-box a {
      text-decoration: none;
      color: #c3a871;
      font-weight: bold;
      font-size: 14px;
      letter-spacing: 1px;
    }

    /* Responsive Design */
    @media (max-width: 900px) {
      .amenities-section {
        flex-direction: column;
        align-items: center;
      }
    }
    
     .container {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      gap: 20px;
      padding: 40px 20px;
    }

    .card {
      position: relative;
      width: 100%;
      max-width: 600px;
      height: 450px;
      background-size: cover;
      background-position: center;
      border-radius: 12px;
      overflow: hidden;
      display: flex;
      align-items: center;
      justify-content: center;
      color: white;
    }
      .card:hover {
    transform: scale(1.05);
     transition: transform 0.6s ease-in-out;
  z-index: 0;
  }

    .overlay {
      background-color: rgba(0, 0, 0, 0.0);
      padding: 30px;
      text-align: center;
      border-radius: 12px;
    }

    .overlay h2 {
      font-size: 2.5em;
      font-weight: bold;
      margin-bottom: 20px;
    }

    .overlay p {
      font-size: 1.2em;
      line-height: 1.6;
    }

    @media (max-width: 768px) {
      .card {
        height: 350px;
      }

      .overlay h2 {
        font-size: 2em;
      }

      .overlay p {
        font-size: 1em;
      }
    }

    @media (max-width: 480px) {
      .overlay {
        padding: 20px;
      }

      .overlay h2 {
        font-size: 1.6em;
      }

      .overlay p {
        font-size: 0.95em;
      }
    }
    
    
     .container1 {
      max-width: 1200px;
      margin: auto;
      padding: 40px 20px;
      display: flex;
      flex-wrap: wrap;
      gap: 40px;
    }

    .text-content {
      flex: 1 1 450px;
    }

    .text-content h5 {
      color: #8d7c57;
      font-size: 14px;
      letter-spacing: 2px;
      text-transform: uppercase;
      margin-bottom: 10px;
    }

    .text-content h1 {
      font-size: 42px;
      margin-bottom: 20px;
    }

    .text-content p {
      margin-bottom: 20px;
      font-size: 18px;
      color: #555;
    }

    .btn {
      display: inline-block;
      background-color: #c4b181;
      color: #fff;
      padding: 15px 30px;
      border: none;
      border-radius: 40px;
      text-decoration: none;
      font-weight: bold;
      transition: background-color 0.3s;
    }

    .btn:hover {
      background-color: #b29d6f;
    }

    .image-wrapper {
  position: relative;
  flex: 1 1 500px;
  min-height: 500px;
}

.image-wrapper img {
  position: absolute;
  border-radius: 12px;
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
  transition: transform 0.3s ease;
}

.image-wrapper img:hover {
  transform: scale(1.03);
}
 .image-wrapper img:hover {
      transform: scale(1.05) rotate(1deg);
    }

    @keyframes float {
      0%, 100% {
        transform: translateY(0);
      }
      50% {
        transform: translateY(-10px);
      }
    }

    .image1 {
      top: 0;
      left: 0;
      width: 60%;
      z-index: 3;
      animation-delay: 0s;
    }

    .image2 {
      top: 20px;
      right: 0;
      width: 40%;
      z-index: 2;
      animation-delay: 1s;
    }

    .image3 {
      bottom: 0;
      left: 25%;
      width: 65%;
      z-index: 1;
      animation-delay: 2s;
    }


/* Image positions */
.image1 {
  top: 0;
  left: 0;
  width: 60%;
  z-index: 1;
}

.image2 {
  top: 20px;
  right: 0;
  width: 30%;
  z-index: 2;
}

.image3 {
  bottom: 0;
  left: 25%;
  width: 65%;
  z-index: 2;
}
    @media (max-width: 768px) {
      .container1 {
        flex-direction: column;
        padding: 20px 10px;
      }

      .text-content h1 {
        font-size: 32px;
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

        <h1>Luviana Hotel Amenities</h1>
        <p>The hotel is arranged on three floors at the seaside. On the ground floor, apart from the reception, there is a comfortable lounge where you can sit and drink tea.</p>
    </div>
</div>

<section class="amenities-section">
    <!-- Swimming Pool -->
    <div class="amenity-box">
      <i class="fas fa-person-swimming"></i>
      <h3>Swimming Pool</h3>
      <p>You can spend time actively by swimming in the pool that we provide. Towels, robes, and slippers you receive at the entrance.</p>
      <a href="#">READ MORE</a>
    </div>

    <!-- WiFi -->
    <div class="amenity-box">
      <i class="fas fa-wifi"></i>
      <h3>WiFi Areas</h3>
      <p>In our hotel you become a free WiFi to stay in touch with your relatives and friend while resting.</p>
      <a href="#">READ MORE</a>
    </div>

    <!-- Private Beach -->
    <div class="amenity-box">
      <i class="fas fa-umbrella-beach"></i>
      <h3>Private Beach</h3>
      <p>We also have a private beach where you can swim at clean sea water, suntan and have a refreshing drink.</p>
      <a href="#">READ MORE</a>
    </div>
  </section>
  
 <div class="container">
    <!-- Surfing Card -->
    <div class="card" style="background-image: url('https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/surfing-lessons.jpg');">
      <div class="overlay">
        <h2>Surfing Lessons</h2>
        <p>Master a new activity and conquer effusive waves at our seaside with professional coach.</p>
      </div>
    </div>

    <!-- Diving Card -->
    <div class="card" style="background-image: url('https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/divingsnorkling.jpg');">
      <div class="overlay">
        <h2>Diving & Snorkling</h2>
        <p>Discover the underwater world of marine creatures and unexplored locations with us.</p>
      </div>
    </div>
  </div>

 <section class="container1">
    <div class="text-content">
      <h5>Our Amenities</h5>
      <h1>Boat Tours</h1>
      <p>A huge variety of yachts for you to choose and to participate in splendid boat tour through the most beautiful bays with breath-taking landscapes – all these you can get at our hotel. We provide the most unique activities to diversify your vacation.</p>
      <p>To have such a tour all you need is to call receptionist and to inform about your longings. The rest we will organize ourselves for your unforgettable trip!</p>
      <a href="#" class="btn">READ MORE</a>
    </div>
   <div class="image-wrapper">
  <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/blog-11.jpg" alt="Island 1" class="image1" />
  <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/gallery-5-1.jpg" alt="Island 2" class="image2" />
  <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/blog-8.jpg" alt="Island 3" class="image3" />
</div>

  </section>
  
  
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