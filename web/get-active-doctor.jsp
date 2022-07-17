<%-- 
    Document   : get-active-doctor
    Created on : 28 Jun, 2022, 1:58:45 PM
    Author     : joy20
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="data.DBhandler"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>

        <%           
String Demail = (String) session.getAttribute("usernameb");
String Link = "aa";
//        DBhandler db = new DBhandler();
try {
           
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/newhealth_caredb?autoReconnect=true&useSSL=false", "root", "Spcc@1031");
//db.creatUser(userName, gender, age, mobile, email, password);
PreparedStatement statment = conn.prepareStatement("select Link from new_table where status = ?");
statment.setString(1, "ACTIVE");
ResultSet set = statment.executeQuery();
if (set.next()){
Link = set.getString(1);
    out.println(Link);
}else{
     out.println("null");       
}
//response.sendRedirect("search1.jsp");
} catch (Exception e) {
out.println(e);
}
        %>

