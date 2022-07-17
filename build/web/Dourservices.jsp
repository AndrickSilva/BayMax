

<%

//  String usernamea = .toString();
  
        
     if (session.getAttribute("usernameb") == null) {
        response.sendRedirect("DLogin.html");
    }
    
    
    
//out.println(username);

%> 

<!DOCTYPE html>
<html lang="en">
   
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Our services</title>

  <link rel="stylesheet" href="css/ourservices.css">
    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  </head>

<body>
  <header class="header">

    <div id="menu-btn" class="fas fa-bars"></div>

    <a href="Dindex.jsp" class="logo"> <span> BayMax </span> HealthCare </a>

    <nav class="navbar">

      <a href="Dindex.jsp">Home</a>
      <a href="Dourservices.jsp">Our Service</a>
      <a href="Dcontact-us.html">Contact Us</a>
      <a href="Dabout.html">About Us</a>

    </nav>

    <div id="login-btn">
      <button class="btn"> <a href="Logout.jsp">Logout</a></button>

      <i class="far fa-user"></i>
    </div>

  </header>
  <!-- end of header -->

  <section class="icons-container">

    <div class="icons"> <a href="search1.jsp">
        <div class="content">
          <h3>Connect To Patient</h3>
          <p>Click Here To Connect With The Patient</p>
        </div>
      </a>
    </div>

    <div class="icons"> <a href="Dpatient_display.jsp">
        <div class="content">
          <h3>Patient History</h3>
          <p>View Your patients medical history Here</p>
        </div>
      </a>
    </div>

    <div class="icons"> <a href="prescription.jsp">
        <div class="content">
          <h3>Prescription</h3>
          <p>Write Prescription for your patient</p>
        </div>
      </a>
    </div>
  </section>

  <script src="js/script.js"></script>
</body>
</html>