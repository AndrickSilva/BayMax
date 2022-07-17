<%-- 
    Document   : patient-connect
    Created on : 28 Jun, 2022, 1:48:54 PM
    Author     : joy20
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consult - Doctor</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;300;400;500;600&display=swap');

            :root {
                --primary: #2fc9f0;
                --light-blue: #D0f4fa;
                --black: #130f40;
                --light-color: #666;
                --box-shadow: 0 .5rem 1rem rgba(0, 0, 0, .1);
                --border: .1rem solid rgba(0, 0, 0, .1);
            }

            * {
                font-family: 'Poppins', sans-serif;
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                outline: none;
                border: none;
                text-decoration: none;
                text-transform: capitalize;
                transition: .2s linear;
            }


            html {
                font-size: 62.5%;
                overflow-x: hidden;
                scroll-padding-top: 7rem;
                scroll-behavior: smooth;
            }

            section {
                padding: 2rem 9%;
            }

            .btn {
                display: inline-block;
                margin-top: 1rem;
                padding: .8rem 3rem;
                background: var(--light-blue);
                color: var(--black);
                cursor: pointer;
                font-size: 1.7rem;
                border-radius: .5rem;
                font-weight: 500;
                text-align: center;
            }

            .btn:hover {
                background: var(--primary);
            }


            .heading {
                padding-bottom: 2rem;
                text-align: center;
                font-size: 4.5rem;
                color: var(--black);
            }

            .heading span {
                position: relative;
                z-index: 0;
            }

            .heading span::before {
                content: '';
                position: absolute;
                bottom: 1rem;
                left: 0;
                height: 100%;
                width: 100%;
                background: var(--light-blue);
                z-index: -1;
                clip-path: polygon(0 90%, 100% 80%, 100% 100%, 0% 100%);
            }

            .btn {
                display: inline-block;
                margin-top: 1rem;
                padding: .8rem 3rem;
                background: var(--light-blue);
                color: var(--black);
                cursor: pointer;
                font-size: 1.7rem;
                border-radius: .5rem;
                font-weight: 500;
                text-align: center;
                box-shadow: var(--box-shadow);
                border: var(--border);
            }

            .btn:hover {
                background: var(--primary);
            }

            .header {
                display: flex;
                align-items: center;
                justify-content: space-between;
                position: fixed;
                top: 0;
                left: 0;
                right: 0;
                padding: 3rem 9%;
                z-index: 1000;
                background: #fff;
            }

            .header .logo {
                font-size: 2.5rem;
                color: var(--black);
                font-weight: bold;
            }

            .header .logo span {
                color: var(--primary);
            }

            .header .navbar a {
                margin: 0 1rem;
                font-size: 1.7rem;
                color: var(--black);
            }

            .header .navbar a:hover {
                color: var(--primary);
            }

            #login-btn .btn {
                margin-top: 0;
            }

            #login-btn i {
                display: none;
                font-size: 2.5rem;
                color: var(--light-color);
            }

            .header.active {
                padding: 2rem 9%;
                box-shadow: var(--box-shadow);
            }

            #menu-btn{
                font-size: 2.5rem;
                color:var(--light-color);
                display: none;
            }

            /* End of Nav */



            @media (max-width:991px){

                html{
                    font-size: 55%;
                }

                .header{
                    padding:2rem;
                }

                .header.active{
                    padding:2rem;
                }

                /* section{
                    padding:2rem;
                } */

            }
            @media (max-width:768px){

                #menu-btn{
                    display: block;
                }

                #menu-btn.fa-times{
                    transform:rotate(180deg);
                }

                #login-btn .btn{
                    display: none;
                }

                #login-btn i{
                    display: block;
                }

                .header .navbar{
                    position: absolute;
                    top:99%; left:0; right:0;
                    background: #fff;
                    border-top: var(--border);
                    clip-path: polygon(0 0, 100% 0, 100% 0, 0 0);
                }

                .header .navbar.active{
                    clip-path: polygon(0 0, 100% 0, 100% 100%, 0% 100%);
                }

                .header .navbar a{
                    margin:2rem;
                    display: block;
                    font-size: 2rem;
                }

            }

            @media (max-width:450px){

                html{
                    font-size: 50%;
                }

                .heading{
                    font-size: 3rem;
                }

            }

            .MeetCont{
                width: 100%;
                height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
            }


            h1{
                margin-top: 100px;
                margin-left: 100px;
                font-size: 45px;
                color: #130f40;
            }
            p{
                /*margin-top: 100px;*/
                margin-left: 100px;
                /*font-size: 45px;*/
                color: #130f40;
            }
        </style>

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
                <button class="btn"><a href="Logout.jsp"> Logout</a></button>

                <i class="far fa-user"></i>
            </div>

        </header>
        <h1 style="margin-top: 100px;">loading.....</h1> <br>
        <p>(If not connecting please try again later)</p>
        <br>
        <div class="MeetCont">
            <button class="btn "><a href="" id="link" target="_blank">Click To Connect To Doctor</a></button> 
        </div>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" ></script>
        <script>
            getLink()

            function getLink()
            {
                flag = true
                // while(flag){
                var xmlhttp;
                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp = new XMLHttpRequest();
                } else
                {// code for IE6, IE5
                    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange = function ()
                {
                    if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                    {
                        if (xmlhttp.responseText != null) {

                            document.getElementById("link").href = xmlhttp.responseText;//gets response data as string
                            flag = false
                        }
                    }
                }
                xmlhttp.open("GET", "get-active-doctor.jsp", true);
                xmlhttp.send();
                //}
            }
        </script>
    </body>
</html>
