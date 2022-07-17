<%-- 
    Document   : user_signup
    Created on : 25 Jun, 2022, 5:38:58 PM
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
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>


  <%
                   
        String userName = request.getParameter("userName");
        String gender = request.getParameter("gender");
        int age = Integer.parseInt(request.getParameter("age"));
        String mobile = request.getParameter("mob");
        String email = request.getParameter("email");
        String password = request.getParameter("pass");
                
        DBhandler db = new DBhandler();
        try {
           
           Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/newhealth_caredb?autoReconnect=true&useSSL=false", "root", "Spcc@1031");
           //db.creatUser(userName, gender, age, mobile, email, password);
           PreparedStatement statment = conn.prepareStatement("insert into user(userName, gender, Age, mobile, email, password) values(?,?,?,?,?,?)");
        statment.setString(1, userName);
        statment.setString(2, gender);
        statment.setInt(3, age);
        statment.setString(4, mobile);
        statment.setString(5, email);
        statment.setString(6, password);
       
        statment.executeUpdate();
           response.sendRedirect("index.jsp");
        } catch (Exception e) {
                out.println(e);
            }
        
        /*    String userName = request.getParameter("userName");
            String password = request.getParameter("pass");
            String age = request.getParameter("age");
            String gender = request.getParameter("gender");
            String mobile = request.getParameter("mobile");
            String _email = (String)session.getAttribute("email");

            
           try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/newhealth_caredb?autoReconnect=true&useSSL=false", "root", "Spcc@1031");    
                PreparedStatement ps = conn.prepareStatement("insert into user values(?,?,?,?,?,?)");
                ps.setString(1, userName);
                ps.setString(2, password);
                ps.setString(3, age);
                ps.setString(4, gender);
                ps.setString(5, mobile);
                ps.setString(6, _email);
                int x = ps.executeUpdate();
                if (x != 0) {
                    out.println("<jsp:text> Registered Successfully! At: </jsp:text>");
                } else {
                    out.println("Something went wrong...");
                }
            } catch (Exception e) {
                out.println(e);
            }
          */  
        %>

    </body>
</html>
