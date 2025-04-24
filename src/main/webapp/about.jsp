<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>About Luviana</title>
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
            background: url('https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/slide-2-new-2560x1268.jpg') no-repeat center center/cover;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            color: #fff;
        }

        .overlay-box {
            background-color: rgba(0, 0, 0, 0.5);
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
      margin: auto;
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
    .content-container {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      align-items: flex-start;
      gap: 40px;
      max-width: 1200px;
      margin: auto;
    }

    .left-section {
      flex: 1;
      min-width: 260px;
       margin: 70px;
    }

    .left-section h6 {
      color: #5f4e2f;
      font-size: 12px;
      letter-spacing: 2px;
      margin-bottom: 10px;
      text-transform: uppercase;
      font-weight: 500;
      position: relative;
    }

    .left-section h6::before {
      content: "";
      display: block;
      width: 40px;
      height: 4px;
      background-color: #d2c29d;
      margin-bottom: 8px;
    }

    .left-section h1 {
      font-size: 36px;
      margin: 0;
      color: #1d1d1d;
      font-weight: 600;
    }

    .right-section {
      flex: 2;
      min-width: 280px;
    }

    .right-section p {
      font-size: 18px;
      line-height: 1.7;
      color: #5a5a5a;
      margin: 70px;
    }

    /* Responsive adjustments */
    @media (max-width: 768px) {
      .content-container {
        flex-direction: column;
        text-align: center;
      }

      .left-section h1 {
        font-size: 30px;
      }
       .right-section p {
      font-size: 17px;
      line-height: 1.8;
      margin-bottom: 20px;
      color: #555;
    }

      .right-section p {
        font-size: 16px;
      }

      .left-section h6::before {
        margin: 0 auto 8px;
      }
    }
    
   .gallery {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      gap: 20px;
      max-width: 1000px;
      margin: auto;
    }

    .image-box {
      width: 200px;
      border-radius: 12px;
      overflow: hidden;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
      transition: transform 0.3s ease;
    }

    .image-box:nth-child(even) {
      margin-top: 40px; /* Zig-zag offset */
    }

    .image-box:hover {
      transform: translateY(-5px);
    }

    .image-box img {
      width: 100%;
      height: 200px;
      object-fit: cover;
      display: block;
      border-radius: 12px;
    }

    @media (max-width: 768px) {
      .gallery {
        flex-direction: column;
        align-items: center;
      }

      .image-box,
      .image-box:nth-child(even) {
        width: 90%;
        margin-top: 0;
      }

      .image-box img {
        height: auto;
      }
    }
    
    
     .team-container {
      max-width: 1200px;
      margin: auto;
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      gap: 30px;
    }

    .team-card {
      background: #fff;
      border-radius: 10px;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.05);
      overflow: hidden;
      text-align: center;
      transition: transform 0.3s ease;
    }

    .team-card:hover {
      transform: translateY(-5px);
    }

    .team-card img {
      width: 100%;
      height: 250px;
      object-fit: cover;
    }

    .team-info {
      padding: 20px;
    }

    .team-info h3 {
      font-size: 20px;
      margin-bottom: 5px;
    }

    .team-info span {
      font-size: 14px;
      color: #888;
      font-weight: bold;
    }

    .team-info p {
      font-size: 14px;
      margin: 15px 0;
      color: #666;
    }

    .social-icons {
      display: flex;
      justify-content: center;
      gap: 15px;
      padding-bottom: 20px;
    }

    .social-icons a {
      text-decoration: none;
      font-size: 18px;
      color: #666;
      transition: color 0.3s ease;
    }

    .social-icons a:hover {
      color: #007BFF;
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
        <h1>About Luviana</h1>
        <p>The Hotel Luviana is the right choice for visitors who are searching for a combination of charm, peace, quiet, and a convenient position from where to explore the surroundings.</p>
    </div>
</div>

<!-- Info Section -->
 <section class="about-container">
    <div class="about-left">
      <div class="subtitle">Raising comfort to the highest level</div>
      <h1>Welcome to Luviana Hotel</h1>
    </div>
    <div class="about-right">
      <p>It is a small comfortable hotel. Our staff offers an attentive high-quality service and is always ready to offer any help to guests.</p>
      <p>The hotel is arranged on three floors. On the ground floor, apart from the reception, there is a comfortable lounge where you can sit and drink tea or just read. There is also a splendid terrace, where you can relax and immerse yourself into upcoming morning of a new wonderful day in the atmosphere of Venetian daily life, watch the city fuss & people who are gathering together and whose conversations fill all the streets and alleys. There is an amazing fusion of calm and tranquility at hotel with hectic outside.</p>
    </div>
  </section>
  
   <div class="container">
    <div class="image-box1">
      <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/welcome-1-1.jpg" alt="Balcony with lake view">
    </div>
    <div class="image-box1">
      <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/welcome-2-1.jpg" alt="Elegant restaurant interior">
    </div>
  </div>
   <div class="content-container">
    <div class="left-section">
      <h6>DISCOVER THE CHARM OF THE LUVIANA</h6>
      <h1>Rooms & Luxury Suites</h1>
    </div>
    <div class="right-section">
      <p>
        The rooms are arranged on the first, second and third floors. On the top floor, there is also a charming terrace or solarium available for the use of guests, from where you can enjoy the wonderful view. A cup of tee or coffee, favorite book on the table and breath-taking view in front – this is all you need to relax and to feel delightful emotions of your vacation.
      </p>
    </div>
  </div>
  
   <div class="gallery">
    <div class="image-box">
      <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/about-rooms-3.jpg" alt="Room 1">
    </div>
    <div class="image-box">
      <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/about-rooms-1-1170x1732.jpg" alt="Room 2">
    </div>
    <div class="image-box">
      <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/about-rooms-6-1170x1733.jpg" alt="Room 3">
    </div>
    <div class="image-box">
      <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/about-rooms-2.jpg" alt="Room 4">
    </div>
    <div class="image-box">
      <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/about-rooms-5-1170x1733.jpg" alt="Room 5">
    </div>
    <div class="image-box">
      <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/about-rooms-4-1170x1733.jpg" alt="Room 6">
    </div>
  </div>
  
   <div class="content-container">
    <div class="left-section">
      <h6>A rich heritage in the heart of luviana</h6>
      <h1>History of the Luviana</h1>
       <p class="italic-intro">
        Luviana’s history begins in 1809 when a rich man named John Douglas bought a huge piece of land to fulfilled his father’s will…
      </p>
      <a href="#" class="read-more">Continue reading</a>
    </div>
    <div class="right-section">
      <p>
        The rooms are arranged on the first, second and third floors. On the top floor, there is also a charming terrace or solarium available for the use of guests, from where you can enjoy the wonderful view. A cup of tee or coffee, favorite book on the table and breath-taking 
      <br><br>
        Luviana’s history begins in 1809 when a rich man named John Douglas bought a huge piece of land to fulfill his father’s will –
        to build the place where people can relax and forget about their problems. From 1852 the active works on this area took place
       
     <br>
     <br>
        Since that time, the hotel never lost its popularity and only developed and increased in size. It is renovated annually and
        the current owners care about the building conditions as well as timely renewal. 
        
      </p>
    </div>
  </div>
  
  <div class="left-section">
      <h6>Meet the professionals</h6>
      <h1>Our Executive Team</h1>
    </div>


 <div class="team-container">
    <div class="team-card">
      <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/team-1.jpg" alt="Brandon Montgomery">
      <div class="team-info">
        <h3>Brandon Montgomery</h3>
        <span>GENERAL MANAGER</span>
        <p>While working I do my best to meet all the requirements people have and maintain order in staff.</p>
      </div>
      <div class="social-icons">
        <a href="#"><i class="fab fa-facebook-f"></i></a>
        <a href="#"><i class="fab fa-twitter"></i></a>
        <a href="#"><i class="fab fa-instagram"></i></a>
        <a href="#"><i class="fab fa-youtube"></i></a>
      </div>
    </div>

    <div class="team-card">
      <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/team-2.jpg" alt="Denis Schultz">
      <div class="team-info">
        <h3>Denis Schultz</h3>
        <span>FINANCIAL CONTROLLER</span>
        <p>All our guests are satisfied with our services and reasonable prices at Luviana.</p>
      </div>
      <div class="social-icons">
        <a href="#"><i class="fab fa-facebook-f"></i></a>
        <a href="#"><i class="fab fa-twitter"></i></a>
        <a href="#"><i class="fab fa-instagram"></i></a>
        <a href="#"><i class="fab fa-youtube"></i></a>
      </div>
    </div>

    <div class="team-card">
      <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/team-3.jpg" alt="Ronald Hawkins">
      <div class="team-info">
        <h3>Ronald Hawkins</h3>
        <span>DESIGNER</span>
        <p>Design was developed by a team of outstanding designers who made it modern and unique.</p>
      </div>
      <div class="social-icons">
        <a href="#"><i class="fab fa-facebook-f"></i></a>
        <a href="#"><i class="fab fa-twitter"></i></a>
        <a href="#"><i class="fab fa-instagram"></i></a>
        <a href="#"><i class="fab fa-youtube"></i></a>
      </div>
    </div>

    <div class="team-card">
      <img src="https://themes.getmotopress.com/luviana/wp-content/uploads/sites/27/2019/07/team-4.jpg" alt="Kathleen Chapman">
      <div class="team-info">
        <h3>Kathleen Chapman</h3>
        <span>DESIGNER</span>
        <p>While designing we took into account all needs people might have and implemented them.</p>
      </div>
      <div class="social-icons">
        <a href="#"><i class="fab fa-facebook-f"></i></a>
        <a href="#"><i class="fab fa-twitter"></i></a>
        <a href="#"><i class="fab fa-instagram"></i></a>
        <a href="#"><i class="fab fa-youtube"></i></a>
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

<!-- Script to toggle menu -->
<script>
    function toggleMenu() {
        const nav = document.getElementById('navLinks');
        nav.classList.toggle('active');
    }
</script>

</body>
</html>
