/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sqljdbc;

import com.mysql.cj.xdevapi.Result;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.*;

/**
 *
 * @author dell
 */
public class RetriveData 
{
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        
    
    PreparedStatement st;
        Connection con;
        String cmd =  "select * from student;";
          String path1 = "jdbc:mysql://localhost:3306/Infojava";
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection(path1, "root", "root");
        st = con.prepareStatement(cmd);
       ResultSet rs = st.executeQuery();
       ResultSetMetaData rsmd =rs.getMetaData();
        System.out.println("\t"+rsmd.getColumnName(1)+"\t"+rsmd.getColumnName(2)+"\t"+rsmd.getColumnName(3));
       while(rs.next())
       {
           System.out.println("\t"+rs.getInt(1)+"\t"+rs.getString(2)+"\t"+rs.getInt(3));
       }
        
        
        
    }
}
