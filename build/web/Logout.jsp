<%-- 
    Document   : Logout
    Created on : 26 Jun, 2022, 3:14:28 PM
    Author     : AERAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.invalidate();
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            
            response.sendRedirect("index.jsp");
        %>
    </body>
</html>
