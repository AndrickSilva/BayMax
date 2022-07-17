<%-- 
    Document   : ViewPrescreption
    Created on : 27 Jun, 2022, 4:16:56 PM
    Author     : joy20
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                xmlhttp.open("GET", "retrievePrescription.jsp?q=" + str, true);
                xmlhttp.send();
            }
        </script>

    </head>
    <body>
        <div style="padding: 25px; border: 1px #3498db ridge; background-color: azure">
            <p>prescription Details</p>
                        <div style="margin: 10px;">  
                            <select style="padding: 5px" name="prescription" onchange="showCustomer(this.value)">
                            <option>-Click here to view prescription-</option>
                            <option value="<%out.println(session.getAttribute("usernamea"));%>"><%out.println(session.getAttribute("usernamea"));%></option>
                                
                        </select>
                        </div>

            <div style="margin: 10px;">              
                <div id="D_Info1" style="width: 100%; height: 100vh; "></div>
            </div> 
    </body>
</html>
