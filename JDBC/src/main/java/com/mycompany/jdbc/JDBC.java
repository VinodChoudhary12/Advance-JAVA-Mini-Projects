/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author dell
 */
public class JDBC {

    public static void main(String[] args) throws ClassNotFoundException, SQLException 
    {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con =DriverManager.getConnection("jdbc:mysql://localhost:/3306/first","root","root");
        String x ="insert into student values(999,999,Ram,100,100,100,100,100)";
        PreparedStatement ps;
        ps = con.PrepareStatement(x);
        int i= ps.executeupdate();
        if(i<0)
        {
            System.out.println("Secuss");
        }
        else
        {
            System.out.println("Failed");
        }
        con.close();
    }
    
}
