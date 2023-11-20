
import com.mysql.cj.jdbc.PreparedStatementWrapper;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author dell
 */
public class DataBase 
{
    public static void Registration() throws ClassNotFoundException, SQLException
    {
        PreparedStatement ps;
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Infojava", "root", "root");
        String cmd = "insert into marksheet values (?,?,?,?,?,?,?,?,?)";
         ps = con.prepareStatement(cmd);
         //ps.setString(2, name.getText());
         
               
    }
    
}
