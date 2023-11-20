/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.facebook.services;

import java.sql.*;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author user
 */
public class GetConnection {

    public static Connection getConnection() {
        Connection con = null;
         String sqlname = "root";
         String sqlpassword = "root";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/facebook", sqlname, sqlpassword);
            return con;
        } catch (SQLException ex) {
            System.out.println(ex);
        } catch (ClassNotFoundException ex) {
            System.out.println(ex);
        }
        return con;
    }
}
