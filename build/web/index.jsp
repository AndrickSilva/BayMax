<%-- 
    Document   : index
    Created on : 26 Jun, 2022, 2:37:03 PM
    Author     : AERAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home - page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

        <!-- custom css file link  -->
        <link rel="stylesheet" href="css/index.css">
        

        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    </head>

<header class="header">

  <div id="menu-btn" class="fas fa-bars"></div>

  <a href="index.jsp" class="logo"> <span> BayMax </span> HealthCare </a>

  <nav class="navbar">

    <a href="index.jsp">Home</a>
    <a href="ourservices.jsp">Our Service</a>
    <a href="contact-us.html">Contact Us</a>
    <a href="about.html">About Us</a>

  </nav>

 

  <div id="login-btn">
      <button class="btn"><a href="Login.html"> login</a></button>
    
  </div>
  

</header>
    <!-- end of header -->

    <section class="home" id="home">

        <h3 data-speed="-2" class="home-parallax">Our Best Doctors Online</h3>

        <div class="container">
            <img src="images/homedoc.png" class="media" />
        </div>

    </section>


    <h1 class="heading"> <span>Our Stats Show That We've Happy Patients</span> </h1>



    <section class="icons-container">

        <div class="icons">
            <div class="content">
                <h3>25,356</h3>
                <p>Patients Served</p>
            </div>
        </div>

        <div class="icons">
            <div class="content">
                <h3>6,050</h3>
                <p>Consultation This Week</p>
            </div>
        </div>

        <div class="icons">
            <div class="content">
                <h3>21</h3>
                <p>Locations</p>
            </div>
        </div>

        <div class="icons">
            <div class="content">
                <h3>95%</h3>
                <p>Success Rate</p>
            </div>
        </div>

    </section>
    <!-- <a data-speed="7" href="#" class="btn home-parallax">Schedule Appointment</a>
      <a data-speed="7" href="#" class="btn home-parallax">Learn More</a> -->

    <section class="newsletter">

        <h3> subscribe for latest updates</h3>
        <p>LIFE IS TOO SHORT LIVE IT WISELY</p>

        <form action="">
            <input type="email" placeholder="Enter your email">
            <input type="submit" value="Subscribe">
        </form>

    </section>

    <section class="reviews" id="reviews">

        <h1 class="heading"> Patients's <span>Review</span> </h1>

        <div class="swiper review-slider">

            <div class="swiper-wrapper">

                <div class="swiper-slide box">
                    <img src="images/pic-1.png" alt="">
                    <div class="content">
                        <p>All that you needs</p>
                        <h3>Jotham Cabrea</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <img src="images/pic-2.png" alt="">
                    <div class="content">
                        <p>Would like some few changes to be done, Rest everything is just brilliant </p>
                        <h3>Staney Leo</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <img src="images/pic-3.png" alt="">
                    <div class="content">
                        <p>Very well organised ui</p>
                        <h3>Lee Dmello</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <img src="images/pic-4.png" alt="">
                    <div class="content">
                        <p>Easy to use</p>
                        <h3>Dianna Martins</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <img src="images/pic-5.png" alt="">
                    <div class="content">
                        <p>Trustworthy </p>
                        <h3>Rahul Kumavat</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>
                </div>

                <div class="swiper-slide box">
                    <img src="images/pic-6.png" alt="">
                    <div class="content">
                        <p>Really Loved The Service Provided </p>
                        <h3>Kun Synada</h3>
                        <div class="stars">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star-half-alt"></i>
                        </div>
                    </div>
                </div>

            </div>

            <div class="swiper-pagination"></div>

        </div>

    </section>

    <div class="loader-wrapper">
        <span class="loader"><span class="loader-inner"></span></span>
    </div>


    <section class="footer" id="footer">

        <div class="box-container">

            <div class="box">
                <h3>our branches</h3>
                <a href="#"> <i class="fas fa-map-marker-alt"></i> india </a>
                <a href="#"> <i class="fas fa-map-marker-alt"></i> japan </a>
                <a href="#"> <i class="fas fa-map-marker-alt"></i> france </a>
                <a href="#"> <i class="fas fa-map-marker-alt"></i> russia </a>
                <a href="#"> <i class="fas fa-map-marker-alt"></i> USA </a>
            </div>

            <div class="box">
                <h3>quick links</h3>
                <a href="index.jsp.html"> <i class="fas fa-arrow-right"></i> Our Service </a>

                <a href="Contact%20US.html"> <i class="fas fa-arrow-right"></i> contact Us </a>
                <a href="about.html"> <i class="fas fa-arrow-right"></i> About Us </a>
            </div>

            <div class="box">
                <h3>contact info</h3>
                <a href="#"> <i class="fas fa-phone"></i> +91 9922929668 </a>
                <a href="#"> <i class="fas fa-phone"></i> +91 9764132481 </a>
                <a href="https://mail.google.com/mail/u/0/#inbox"> <i class="fas fa-envelope"></i> joy2000jh@gmail.com </a>
                <a href="https://goo.gl/maps/RAXkgG7Z4eYJx3Y38"> <i class="fas fa-map-marker-alt"></i> South-Goa, india - 403602
                </a>
            </div>

            <div class="box">
                <h3>contact info</h3>
                <a href="https://www.facebook.com/"> <i class="fab fa-facebook-f"></i> facebook </a>
                <a href="https://twitter.com/?lang=en"> <i class="fab fa-twitter"></i> twitter </a>
                <a href="https://www.linkedin.com/login"> <i class="fab fa-linkedin"></i> linkedin </a>

            </div>

            <div class="copyright">
                <p class="foot">&copy 2013 - Organisation</p>
            </div>

        </div>


    </section>

    <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

    <script src="js/script.js"></script>

</body>

</html>