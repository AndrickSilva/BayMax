/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import static java.lang.System.out;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author AERAL
 */
public class DBhandler {

    Connection conn;

    public DBhandler() throws ClassNotFoundException, SQLException {

        Class driverClass = Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/newhealth_caredb?autoReconnect=true&useSSL=false", "root", "openthedooraeral");
    }

    
    public void creatUser(String userName, String gender, int age,  String mobile, String email, String password) throws SQLException {
        PreparedStatement statment = conn.prepareStatement("insert into user(userName, gender, Age, mobile, email, password) values(?,?,?,?,?,?)");
        statment.setString(1, userName);
        statment.setString(2, gender);
        statment.setInt(3, age);
        statment.setString(4, mobile);
        statment.setString(5, email);
        statment.setString(6, password);
       
        statment.executeUpdate();

    }

    
    
    
    public boolean checkUser(String userName, String password) throws SQLException {
        Statement stmt = conn.createStatement();
        ResultSet set = stmt.executeQuery("select email, password from user");
        while (set.next()) {
            if (userName.equals(set.getString(1)) && password.equals(set.getString(2))) {
                return true;
            }
        }
        return false;
    }

    public void SubmitFeedback(String name, Date sqldate, String feedback) throws SQLException {
        PreparedStatement statment = conn.prepareStatement("insert into feedback1(name, datee, feedback_msg) values(?,?,?)");
        statment.setString(1, name);
        statment.setDate(2, sqldate);
        statment.setString(3, feedback);

        statment.executeUpdate();
    }

    /*public void ReviewFeedback(String name, String feedback) throws SQLException {

        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("select name, feedback from feedback");
        while (rs.next()) {
                System.err.print(rs.getString(name)+" "+rs.getString(feedback));
                
            
        }
    }*/
    
    
    
    
    public void prescription(String remark, String medicine, String diag) throws SQLException {
        PreparedStatement statment = conn.prepareStatement("insert into prescription(medicine, remark, diagnosis) values(?,?,?)");
        statment.setString(1, remark);
        statment.setString(2, medicine);
        statment.setString(3, diag);
        
       
        statment.executeUpdate();

    }
    
    
    public boolean checkDoctor(String userNameb, String password) throws SQLException {
        Statement stmt = conn.createStatement();
        ResultSet set = stmt.executeQuery("select email, Dpassword from doctor");
        while (set.next()) {
            if (userNameb.equals(set.getString(1)) && password.equals(set.getString(2))) {
                return true;
            }
        }
        return false;
    }
    
}
