package com.app;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class databaseConnction {
static Connection con;

    public static Connection getConnect() {
        
        try {
            // Load MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver"); 
            
            // Establish Connection
           con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
           
            return con;
        } catch (Exception e) {
            
            e.printStackTrace();
        } 
        return con;
    }
}
