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

        <a href="index.jsp" class="logo"> <span> BayMax </span> HealthCare </a>

        <nav class="navbar">

            <a href="index.jsp">Home</a>
            <a href="ourservices.jsp">Our Service</a>
            <a href="contact-us.jsp">Contact Us</a>
            <a href="about.html">About Us</a>

        </nav>

        <div id="login-btn">
            <button class="btn"> <a href="Login.html"> login</a></button>

            <i class="far fa-user"></i>
        </div>

    </header>
    <!-- end of header -->
    <section class="patientInfo">

        <form action="patienthistory_conn.jsp" method="post" class="PatientForm">

            <div class="allergiesInput">
                <label for="allergies"><b>Do you have Allergies ?</b></label><br>

                <input type="radio" id="yes" name="alerg" value="yes">
                <label for="yes">Yes</label><br>

                <input type="radio" id="no" name="alerg" value="no">
                <label for="no">No</label><br>
                <br>
                <textarea placeholder="If yes enter the type of Allergies..." class="TextareaStyle" name="alergies"></textarea>
            </div>
            <br>
            <div class="bloodGrpInput">
                <label for="bloodGrp"><b>Select your blood group</b></label> <br>
                <select class="form-select" required name="bloodgrp">
                    <option selected>--None--</option>
                    <option>A+</option>
                    <option>A-</option>
                    <option>B+</option>
                    <option>B-</option>
                    <option>O+</option>
                    <option>O-</option>
                    <option>AB+</option>
                    <option>AB-</option>
                </select>
            </div>
            <br>
            <div class="BpInput">
                <label for="BpInput"><b>Do you have blood Pressure?</b></label><br>
                <input type="radio" id="yes" name="bp" value="yes">
                <label for="yes">Yes</label><br>
                <input type="radio" id="no" name="bp" value="no">
                <label for="no">No</label><br>
            </div>
            <br>
            <div class="DiabetesInput">
                <label for="DiabetesInput"><b>Do you have Diabetes?</b></label><br>
                <input type="radio" id="yes" name="sugar" value="yes">
                <label for="yes">Yes</label><br>
                <input type="radio" id="no" name="sugar" value="no">
                <label for="no">No</label><br>
            </div>
            <br>
            <div class="SurgeriesInput">
                <label for="SurgeriesInput"><b>Any Previous Surgeries?</b></label><br>
                <input type="radio" id="yes" name="surg" value="yes">
                <label for="yes">Yes</label><br>
                <input type="radio" id="no" name="surg" value="no">
                <label for="no">No</label><br>
                <br>
                <textarea placeholder="If yes enter in detail..." class="TextareaStyle" name="surgeries"></textarea>
            </div>
            <br>
            <div class="AdditionalInput">
                <label for="SurgeriesInput"><b>If You Want To Give Any Additional Details You can enter here.</b></label><br>
                <br>
                <textarea placeholder="If yes enter the details..." class="TextareaStyle" name="adddetails"></textarea>
            </div>
            <div class="btncontainer">
                <input class="btn bdr" type="submit" value="submit">
            </div>

        </form>
    </section>
</body>

</html>