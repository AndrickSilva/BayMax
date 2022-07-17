<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Doctor Info</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script>
            function showCustomer(str)
            {
                var xmlhttp;
                if (str == "")
                {
                    document.getElementById("txtHint").innerHTML = "";
                    return;
                }
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
                        document.getElementById("D_Info1").innerHTML = xmlhttp.responseText;//gets response data as string
                    }
                }
                xmlhttp.open("GET", "pat_retrieve.jsp?q=" + str, true);
                xmlhttp.send();
            }
        </script>

    </head>
    <body>
        <div style="padding: 25px; border: 1px #3498db ridge; background-color: azure">
            <p>Doctor Information:</p>
            <div ">  
                <select style="padding: 5px" name="email" onchange="showCustomer(this.value)">
                    <option>-Click Here To View Your medical history-</option>
                    <option value="and009@chowgules.ac.in">and009@chowgules.ac.in</option>
                    <option value="and082@chowgules.ac.in">and082@chowgules.ac.in</option>  

                </select>
            </div>
            <br>
        </div> 
        <div id="D_Info1" "></div>
    </body>
</html>
