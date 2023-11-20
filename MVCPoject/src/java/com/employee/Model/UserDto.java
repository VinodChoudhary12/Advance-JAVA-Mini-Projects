/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.employee.Model;

import static com.employee.Model.DTOClass.decrypt;
import static com.employee.Model.DTOClass.encrypt;
import com.employee.services.GetConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.crypto.spec.SecretKeySpec;

/**
 *
 * @author dell
 */
public class UserDto {

    private Connection con = null;
    private static SecretKeySpec secretKey;
    private static byte[] key;

    public boolean userinsert(UserDao udao) {
        boolean b = false;
        try {
            con = GetConnection.getConnection();
            String sql = "INSERT INTO usermvc (name, fname, email, password, mobile) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, udao.getName());
            ps.setString(2, udao.getFname());
            ps.setString(3, udao.getEmail());
            ps.setString(4, encrypt(udao.getPassword()));
            ps.setString(5, udao.getMobile());
            int i = ps.executeUpdate();
            if (i > 0) {
                b = true;

            }
        } catch (Exception e) {

        }

        return b;
    }
    
         public boolean Userlogin(UserDao udao) 
         {
            con = GetConnection.getConnection();
                boolean b = false;
                ResultSet rs = null;
                if (con != null) {
                    String sql = "SELECT * FROM usermvc  WHERE email = ?";
                    try {
                        PreparedStatement ps = con.prepareStatement(sql);
                        ps.setString(1, udao.getEmail());
            
            
            rs = ps.executeQuery();
            if (rs.next()) {
                String encryptedPasswordFromDB = rs.getString("password"); // Get the encrypted password from the database
                String decryptedPassword = decrypt(encryptedPasswordFromDB); // Decrypt the password from the database
                System.out.println(""+decryptedPassword);
                if (decryptedPassword.equals(udao.getPassword())) 
                { // Compare the decrypted password with the input password
                    
                    udao.setName(rs.getString(2));
                    udao.setFname(rs.getString(3));
                    udao.setMobile(rs.getString(6));
                    b = true;
                }
            }
        } catch (SQLException e) {
            System.out.println(""+e);
        }
    }
  
    return b;
}

}
