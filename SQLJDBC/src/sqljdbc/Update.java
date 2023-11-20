/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sqljdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author dell
 */
public class Update 
{
    public static void main(String[] args) throws Exception 
    {
        
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Infojava", "root", "root");
               
                Scanner sc = new Scanner(System.in);
                
                System.out.println("Enter Name ");
                String name = sc.nextLine();
                System.out.println("Enter Marks");
                int m = sc.nextInt();
                String cmd ;
                cmd ="update student set marks =? where name =?";
                // update student set name = "sohan" where marks=99;

                PreparedStatement ps = con.prepareStatement(cmd);
                
                ps.setInt(1, m);
                ps.setString(2, name);
                int i = ps.executeUpdate();
                if(i>0)
                {
                    System.out.println("Seccusss");
                }
                else
                {
                    System.out.println("Fail");
                }
                 con.close();   


        
    }
}
