/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.User;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import java.sql.Statement;

/**
 *
 * @author jssmy
 */
public class UserCon {
    public static final String URL="jdbc:mysql://127.0.0.1:3306/ebemar_db";
    public static final String USR="root";
    public static final String PASS="root";
    
    public  ResultSet getUsers() {
        try {
            Connection con = null;
        Statement stmt = null;
        
           Class.forName("com.mysql.jdbc.Driver");
            System.out.println("---------- llama al conector  -----------");
            con = DriverManager.getConnection(URL, USR, PASS);
            System.out.println("---------- realiza conextion con exito  -----------");
            String query ="SELECT * FROM user";
            //query+=CodPostal+"'";
            stmt = con.createStatement();
            
             ResultSet rs= stmt.executeQuery(query);
             System.out.println("realiza el queri sin problemas");
            
             
            return rs;
            
        } catch (Exception e) {
            System.out.println("-----ERROR SELECT USER---" + e.toString());
            return null;
        }
        
        
    }
      
    
    
}
