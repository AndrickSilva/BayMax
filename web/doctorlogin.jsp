<%-- 
    Document   : doctorlogin
    Created on : 26 Jun, 2022, 4:49:24 PM
    Author     : joy20
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="data.DBhandler"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%

                String userNameb = request.getParameter("username");
                String password = request.getParameter("pass");
                
                session.setAttribute("usernameb", userNameb);
                
                DBhandler db = new DBhandler();

                if (db.checkDoctor(userNameb, password)) {
                    response.sendRedirect("Dindex.jsp");
                } else {
                    out.println("<h1>Hi! " + userNameb + "<br> Entered username or password is incorrect</h1>");
                }

            %>
        
    </body>
</html>
