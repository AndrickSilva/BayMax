<%

//  String usernamea = .toString();
  
    if (session.getAttribute("usernamea") == null) {
        response.sendRedirect("Login.html");
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

            <a href="index.jsp" class="logo"> <span> BayMax </span> HealthCare </a>

            <nav class="navbar">

                <a href="index.jsp">Home</a>
                <a href="ourservices.jsp">Our Service</a>
                <a href="contact-us.html">Contact Us</a>
                <a href="about.html">About Us</a>

            </nav>


            <div id="login-btn">
                <button class="btn"><a href="Logout.jsp"> logout</a></button>

            </div>

        </header>
        <!-- end of header -->

        <section class="icons-container">

            <div class="icons"> <a href="patient-connect.jsp">
                    <div class="content">
                        <h3>Consult a doctor</h3>
                        <p>Medicines Cure Disease, But Only Doctor Can Cure Patients</p>
                    </div>
                </a>
            </div>

            <div class="icons"> <a href="patient_history.jsp">
                    <div class="content">
                        <h3>Enter Your Medical History</h3>
                        <p>Input Your medical history Here</p>
                    </div>
                </a>
            </div>
            <div class="icons"> <a href="ViewPrescreption.jsp">
                    <div class="content">
                        <h3>Prescription</h3>
                        <p>View Your Prescription </p>
                    </div>
                </a>
            </div>
            <div class="icons"> <a href="patient_display.jsp">
                    <div class="content">
                        <h3>View Medical History</h3>
                        <p>View Your medical history Here</p>
                    </div>
                </a>
            </div>

            <div class="icons"> <a href="docinfo.html">
                    <div class="content">
                        <h3>Doctor Information</h3>
                        <p>Get Info About All Doctors</p>
                    </div>
                </a>
            </div>
        </section>

        <script src="js/script.js"></script>
    </body>
</html>