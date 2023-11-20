
package com.employee.services;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class getConnection 
{
    
    public static Connection GetConn()
    {
        Connection con=null;
        try
        {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ MVC", "root", "root");
           }
        catch(ClassNotFoundException | SQLException e)
        {}
            return con;
    }
}


