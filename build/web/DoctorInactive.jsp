<%-- 
    Document   : DoctorActive
    Created on : 27 Jun, 2022, 6:21:10 PM
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
            
        String Demail = (String) session.getAttribute("usernameb");
        
//        DBhandler db = new DBhandler();
        try {
           
           Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/newhealth_caredb?autoReconnect=true&useSSL=false", "root", "Spcc@1031");
           //db.creatUser(userName, gender, age, mobile, email, password);
        PreparedStatement statment = conn.prepareStatement("update new_table set status = ? where demail = ?");
        statment.setString(1, "INACTIVE");
        statment.setString(2, Demail);
        
        statment.executeUpdate();
           response.sendRedirect("search1.jsp");
        } catch (Exception e) {
                out.println(e);
            }
        %>
    </body>
</html>
