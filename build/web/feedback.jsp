<%-- 
    Document   : feedback
    Created on : 10 May, 2021, 4:21:45 PM
    Author     : AERAL
--%>
<%@page import="java.util.Date"%>
<%@page import="data.DBhandler"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            Date date= new Date();
            java.sql.Date sqldate= new java.sql.Date(date.getTime());
            
            String name = request.getParameter("name");
            //String date = request.getParameter("date");
            String feedback = request.getParameter("msg");

            DBhandler db = new DBhandler();
            db.SubmitFeedback(name, sqldate, feedback);

        %>  `   
        <h1 style="text-align: center; color: green; " ><br/>Thank you for getting in touch!<br/>

            We appreciate you contacting us.<br/><br/>Have a great day!</h1>
    </body>
</html>
