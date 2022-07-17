<%-- 
    Document   : user_login
    Created on : 25 Jun, 2022, 5:16:15 PM
    Author     : joy20
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="data.DBhandler"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
         <%

                String userName = request.getParameter("username");
                String password = request.getParameter("pass");

                session.setAttribute("usernamea", userName);
                DBhandler db = new DBhandler();

                if (db.checkUser(userName, password)) {
                    response.sendRedirect("ourservices.jsp");
                } else {
                    out.println("<h1>Hi! " + userName + "<br> Entered username or password is incorrect</h1>");
                }

            %>
        
        
    </body>
</html>
