<%-- 
    Document   : pres_details
    Created on : 27 Jun, 2022, 4:00:39 PM
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
                   
        String remark = request.getParameter("remark");
        String medicine = request.getParameter("med");
        String diag = request.getParameter("diag");
        String Demail = (String) session.getAttribute("usernameb");
        String UserEmail = request.getParameter("Pemail");
        
        
                
        DBhandler db = new DBhandler();
        try {
           
           Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/newhealth_caredb?autoReconnect=true&useSSL=false", "root", "Spcc@1031");
           //db.creatUser(userName, gender, age, mobile, email, password);
        PreparedStatement statment = conn.prepareStatement("insert into prescription(medicine, remark, diagnosis, Demail, email) values(?,?,?,?,?)");
        statment.setString(1, medicine);
        statment.setString(2, remark);
        statment.setString(3, diag);
        statment.setString(4, Demail);
        statment.setString(5, UserEmail);
       
        statment.executeUpdate();
           response.sendRedirect("Dourservices.jsp");
        } catch (Exception e) {
                out.println(e);
            }
        %>
    </body>
</html>
