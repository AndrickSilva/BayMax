<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Patient - History</title>
        <link rel="stylesheet" href="css/PatientHist.css">

        <!-- font awesome cdn link  -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    </head>

</head>

<body>

    <header class="header">

        <div id="menu-btn" class="fas fa-bars"></div>

        <a href="index.html" class="logo"> <span> BayMax </span> HealthCare </a>

        <nav class="navbar">

            <a href="index.html">Home</a>
            <a href="ourservices.html">Our Service</a>
            <a href="contact-us.html">Contact Us</a>
            <a href="about.html">About Us</a>

        </nav>

        <div id="login-btn">
            <button class="btn"> <a href="Login.html"> login</a></button>

            <i class="far fa-user"></i>
        </div>

    </header>
    <!-- end of header -->
    <section class="patientInfo">

        <form action="pres_details.jsp" method="post" class="PatientForm">
            
            <div class="SurgeriesInput">
                <label for="SurgeriesInput"><b>Patient Email</b></label><br>
                <br>
                <input placeholder="Enter Patients email" class="TextareaStyle" name="Pemail" style="height: 70px;">
            </div>
            <br>
            <div class="SurgeriesInput">
                <label for="SurgeriesInput"><b>Remark</b></label><br>
                <br>
                <textarea placeholder="Enter Remark" class="TextareaStyle" name="remark"></textarea>
            </div>

            <br>

            <div class="SurgeriesInput">
                <label for="SurgeriesInput"><b>Medicine</b></label><br>

                <br>
                <textarea placeholder="Enter Medicine" class="TextareaStyle" name="med"></textarea>
            </div>

            <br>

            <div class="AdditionalInput">
                <label for="SurgeriesInput"><b>Diagnosis</b></label><br>
                <br>
                <textarea placeholder="Enter Diagnosis" class="TextareaStyle" name="diag"></textarea>
            </div>

            <div class="btncontainer">
                <input class="btn bdr" type="submit" value="submit">
            </div>

        </form>
    </section>
</body>

</html>