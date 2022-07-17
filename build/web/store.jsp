<%-- 
    Document   : store
    Created on : 7 May, 2021, 1:14:59 PM
    Author     : Iranna K. Hanganalli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.Date" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>     
        
        <%  
            String email = request.getParameter("email");
            String user_name = request.getParameter("user_name");
            String password = request.getParameter("password");

            try {
                Class Driver = Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/user_data?autoReconnect=true&useSSL=false", "root", "Egy4u6es!");
                PreparedStatement ps = conn.prepareStatement("insert into user values(?,?,?)");
                ps.setString(1, email);
                ps.setString(2, user_name);
                ps.setString(3, password);
                int x = ps.executeUpdate();
                if (x != 0) {
                    out.println("<jsp:text> Registered Successfully! At: </jsp:text>");
                } else {
                    out.println("Something went wrong...");
                }
            } catch (Exception e) {
                out.println(e);
            }
        %>

        
        
    </body>
</html>
