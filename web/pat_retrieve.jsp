<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient - History</title>
    <link rel="stylesheet" href="css/PatientHist.css">

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>



<%

try{
    
    String speciality=request.getParameter("q");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/newhealth_caredb?autoReconnect=true&useSSL=false", "root", "Spcc@1031");
    PreparedStatement pstmt=con.prepareStatement("select * from details where email=?");
    pstmt.setString(1,speciality);
    ResultSet rs=pstmt.executeQuery();
    if(!rs.next()){
        out.println("Please select a type");
    }
       else{
        %>
       
<section class="patientInfo">


        <form action="pat_retrieve.jsp" method="" class="PatientForm">
            <div class="allergiesInput">
                
                 <label for="allergies"><b>Prescription ID</b></label><br>
                 <input type="text" id="no" name="alerg" class="InputStyle" value="<%=rs.getString(1)%>"> <br>
                <label for="allergies"><b>Do you have Allergies ?</b></label><br>
                
                <br>
                <input type="text" id="no" name="alerg" class="InputStyle" value="<%=rs.getString(2)%>">
                <input type="text" class="TextareaStyle" name="alergies" value="<%=rs.getString(3)%>"> <br><br>

            </div>
            <br>
            <div class="bloodGrpInput">
                <label for="bloodGrp"><b>Blood group</b></label> <br><br>
                
                <input type="text" class="InputStyle" name="alergies" value="<%=rs.getString(4)%>">
            </div>
            <br>
            <div class="BpInput">
                <label for="BpInput"><b>Do you have blood Pressure?</b></label><br><br>
                <input type="text" id="no" name="alerg" class="InputStyle" value="<%=rs.getString(5)%>">
            </div>
            <br>
            <div class="DiabetesInput">
                <label for="DiabetesInput"><b>Do you have Diabetes?</b></label><br><br>
                <input type="text" id="no" name="alerg" class="InputStyle" value="<%=rs.getString(6)%>">
             

            </div>
            <br>
            <div class="SurgeriesInput">
                <label for="SurgeriesInput"><b>Any Previous Surgeries?</b></label><br><br>
                <input type="text" id="no" name="alerg" class="InputStyle" value="<%=rs.getString(7)%>">

                <textarea class="TextareaStyle" name="surgeries" value="<%=rs.getString(8)%>"></textarea>
            </div>
            <br>
            <div class="AdditionalInput">
                <label for="SurgeriesInput"><b>If You Want To Give Any Additional Details You can enter here.</b></label><br>
                
                <input type="text" class="TextareaStyle" name="adddetails" value="<%=rs.getString(9)%>"></textarea>
            </div>
            
            

        </form>
    </section>
       
       
       <%
       }
    
}catch(Exception e){
    
    
}

%>
