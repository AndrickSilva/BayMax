<%-- 
    Document   : patienthistory_conn
    Created on : 27 Jun, 2022, 2:45:12 PM
    Author     : joy20
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
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
                   
        String allergies = request.getParameter("alerg");
        String allergies_1 = request.getParameter("alergies");
        String bloodgrp = request.getParameter("bloodgrp");
        String BP = request.getParameter("bp");
        String diabities = request.getParameter("sugar");
        String surgeries = request.getParameter("surg");
        String surgeries_1 = request.getParameter("surgeries");
        String addetails = request.getParameter("adddetails");
        String email = (String) session.getAttribute("usernamea");    
                
        DBhandler db = new DBhandler();
        try {
           
           Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/newhealth_caredb?autoReconnect=true&useSSL=false", "root", "Spcc@1031");
           //db.creatUser(userName, gender, age, mobile, email, password);
           PreparedStatement statment = conn.prepareStatement("insert into details(allergies, allergies_1, blood_grp, blood_pressure, diabetes, surgeries, additional_dtl, additional_dtl_1, email) values(?,?,?,?,?,?,?,?,?)");
        statment.setString(1, allergies);
        statment.setString(2, allergies_1);
        statment.setString(3, bloodgrp);
        statment.setString(4, BP);
        statment.setString(5, diabities);
        statment.setString(6, surgeries);
        statment.setString(7, surgeries_1);
        statment.setString(8, addetails);
        statment.setString(9, email);
       
        statment.executeUpdate();
        response.sendRedirect("index.jsp");
        } catch (Exception e) {
                out.println(e);
            }
        %>
    </body>
</html>
