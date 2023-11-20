/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package sqljdbc;

import com.mysql.cj.jdbc.PreparedStatementWrapper;
import java.sql.*;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author dell
 */
public class Input 
{
    public static void main(String[] args) throws ClassNotFoundException, SQLException 
    {
       
        Scanner sc = new Scanner(System.in);
//         System.out.println("Press 1 For Insret Data");
//         int a = sc.nextInt();
//         System.out.println("Press 2 For Update Data");
//         int b = sc.nextInt();
//         System.out.println("Press 3 For Delete Data");
//         int c =sc.nextInt();
         
        
//            Input ob=new Input();     
//            ob.insert();
                //Input.Update();
                Input.Delete();
        
             
    }
    public void insert() throws ClassNotFoundException
    {
        try {

                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Infojava", "root", "root");
               
                Scanner sc = new Scanner(System.in);
                System.out.println("Enter Roll Number");
                int r = sc.nextInt();sc.nextLine();
                System.out.println("Enter Name ");
                String name = sc.nextLine();
                System.out.println("Enter Marks");
                int m = sc.nextInt();
                String cmd ;
                cmd ="insert into Student values(?,?,?)";

                PreparedStatement ps = con.prepareStatement(cmd);
                
                ps.setInt(1, r);
                ps.setString(2, name);
                ps.setInt(3, m);
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


            } catch (SQLException ex) {
                Logger.getLogger(Input.class.getName()).log(Level.SEVERE, null, ex);
            }
    }
    
    public static void Update() throws ClassNotFoundException, SQLException
    {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Infojava","root","root");
        Scanner sc = new Scanner(System.in);
        System.out.println("Press 1 for Update in Roll Number");
        System.out.println("Prees 2 for Update in Name");
        System.out.println("Press 3 for Update in Marks");
        System.out.println("Press 4 For EXIT");
        int n = sc.nextInt();
        do
        {
            if(n==1)
            {
                System.out.println("Enter Roll Number For Update");
                int roll=sc.nextInt();
                System.out.println("Enter The Name  of Student");
                String name = sc.next();
                System.out.println("Enter The  Marks of Student");
                int marks = sc.nextInt();
                String cmd ="update student set id =? where name =? and marks=?";
                PreparedStatement ps = con.prepareStatement(cmd);
                ps.setInt(1,roll);
                ps.setString(2, name);
                ps.setInt(3, marks);
                int i = ps.executeUpdate();
                if(i>0)
                {
                    System.out.println("Seccuss");
                }
                else
                {
                    System.out.println("Fail");
                }
                System.out.println("Press 1 For Home");
                int h = sc.nextInt();
                if(h==1)
                {
                    Input.Update();
                }
                
            }
            if(n==2)
            {
                System.out.println("Enter The Name  of Student");
                String name = sc.next();
                System.out.println("Enter Roll Number For Update");
                int roll=sc.nextInt();
                System.out.println("Enter The  Marks of Student");
                int marks = sc.nextInt();
                String cmd = "update student set name =? where  id=? and marks = ?;";
                PreparedStatement ps = con.prepareStatement(cmd);
                ps.setString(1,name);
                ps.setInt(2,roll);
                ps.setInt(3, marks);
                int i = ps.executeUpdate();
                if(i>0)
                {
                    System.out.println("Seccuss");
                }
                else
                {
                    System.out.println("Fail");
                }
                System.out.println("Press 1 For Home");
                int h = sc.nextInt();
                if(h==1)
                {
                    Input.Update();
                }
                
            }
            if(n==3)
            {
                System.out.println("Enter The  Marks of Student");
                int marks = sc.nextInt();
                System.out.println("Enter The Name  of Student");
                String name = sc.next();
                System.out.println("Enter Roll Number For Update");
                int roll=sc.nextInt();
                String cmd = "update Student set marks = ? where name =? and id=?;";
                PreparedStatement ps = con.prepareStatement(cmd);
                ps.setInt(1,marks);
                ps.setString(2, name);
                ps.setInt(3,roll);
                int i = ps.executeUpdate();
                
                if(i>0)
                {
                    System.out.println("Seccess");
                }
                else
                {
                    System.out.println("Fail");
                } 
                System.out.println("Press 1 For Home");
                int h = sc.nextInt();
                if(h==1)
                {
                    Input.Update();
                }
            }
            
        }while(n!=41);
    }
    public static void Delete() throws ClassNotFoundException, SQLException
    { //jdbc:mysql://localhost:3306/Infojava
        String path ="jdbc:mysql://localhost:3306/Infojava";//"jdbc:mysql://localhost:3306/Infojava"
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection(path,"root","root");
        System.out.println("Press 1 For Delete with Roll Number");
        System.out.println("Press 2 For Delete with Name");
        System.out.println("Press 3 For Delete with Marks");
        System.out.println("Press For EXIT");
        Scanner sc = new Scanner(System.in);
        int a = sc.nextInt();
        do{
            if(a==1)
            {
                System.out.println("Enter The Roll Number To Delete Data");
                int roll = sc.nextInt();
                PreparedStatement ps = con.prepareStatement("delete from student where id ="+roll+";");
               int i=ps.executeUpdate();
               if(i>0)
               {
                   System.out.println("Seccess");
               }
               else
               {
                   System.out.println(roll+" Is Not in this Database ");
               }
                System.out.println("Press 1 For Home");
   
                int k = sc.nextInt();
                if(k==1)
                {
                    Input.Delete();
                }
            }
            if(a==2)
            {
                System.out.println("Enter The Name To Delete Data");
                String name =sc.next();
                PreparedStatement ps = con.prepareStatement("delete from student where id ="+name+";");
               int i=ps.executeUpdate();
               if(i>0)
               {
                   System.out.println("Seccess");
               }
               else
               {
                   System.out.println(name+" Is Not in this Database ");
               }
               int k = sc.nextInt();
                if(k==1)
                {
                    Input.Delete();
                }
            }
            if(a==3)
            {
                System.out.println("Enter The Marks To Delete Data");
                int marks = sc.nextInt();
                PreparedStatement ps = con.prepareStatement("delete from student where id ="+marks+";");
               int i=ps.executeUpdate();
               if(i>0)
               {
                   System.out.println("Seccess");
               }
               else
               {
                   System.out.println(marks+" Is Not in this Database ");
               }
               int k = sc.nextInt();
                if(k==1)
                {
                    Input.Delete();
                }
            }
        }while(a!=4);
        
    }
}
