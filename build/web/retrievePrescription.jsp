<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%

try{
    
    String speciality=request.getParameter("q");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/newhealth_caredb?autoReconnect=true&useSSL=false", "root", "Spcc@1031");
    PreparedStatement pstmt=con.prepareStatement("select * from prescription where email=?");
    pstmt.setString(1,speciality);
    ResultSet rs=pstmt.executeQuery();
    if(!rs.next()){
        out.println("Please select a type");
    }
       else{
        %>
       
        <TABLE>
            <tr>
                <th>Prescription_ID:</th>
                <th>Medicine</th>
                <th>Remark</th>
                <th>Diagnosis</th>
                <th>Doctor's email</th>
                <th>Email</th>
            </tr>
            <tr>
                <td><input type="text" name="" value="<%=rs.getString(1)%>"></td>
                <td><input type="text" name="" value="<%=rs.getString(2)%>"></td>
                <td><input type="text" name="" value="<%=rs.getString(3)%>"></td>
                <td><input type="text" name="" value="<%=rs.getString(4)%>"></td>
                <td><input type="text" name="" value="<%=rs.getString(5)%>"></td>
                <td><input type="text" name="" value="<%=rs.getString(6)%>"></td>
            </tr>
        </TABLE>
            
       
       
       <%
       }
    
}catch(Exception e){
    
    
}

%>
