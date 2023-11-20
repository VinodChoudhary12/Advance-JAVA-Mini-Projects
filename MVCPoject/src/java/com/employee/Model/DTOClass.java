package com.employee.Model;

import com.employee.services.GetConnection;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.Base64;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;

public class DTOClass {

    private Connection con = null;
    private static SecretKeySpec secretKey;
    private static byte[] key;

    public boolean insert(DAOClass edao) {
        boolean b = false;
        try {
            con = GetConnection.getConnection();

            String sql = "INSERT INTO mvctable (name, fname, email, password, mobile) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, edao.getName());
            ps.setString(2, edao.getFname());
            ps.setString(3, edao.getEmail());
            ps.setString(4, encrypt(edao.getPassword()));
            ps.setString(5, edao.getMobile());
            int i = ps.executeUpdate();
            if (i > 0) {
                b = true;

            }
        } catch (Exception e) {

        }

        return b;

    }

    public boolean login(DAOClass edao) 
    {
        con = GetConnection.getConnection();
        boolean b = false;
        ResultSet rs = null;
        if (con != null) {
            String sql = "SELECT * FROM mvctable WHERE email = ?";
            try {
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, edao.getEmail());

                rs = ps.executeQuery();
                if (rs.next()) 
                {
                    String encryptedPasswordFromDB = rs.getString("password"); // Get the encrypted password from the database
                    String decryptedPassword = decrypt(encryptedPasswordFromDB); // Decrypt the password from the database
                    System.out.println("" + decryptedPassword);
                    if (decryptedPassword.equals(edao.getPassword())) { // Compare the decrypted password with the input password

                        edao.setName(rs.getString(2));
                        edao.setFname(rs.getString(3));
                        edao.setMobile(rs.getString(6));
                        b = true;
                    }
                }
            } catch (SQLException e) {
                System.out.println("" + e);
            }
        }
        return b;
    }

    public boolean update(DAOClass edao) {
        boolean b = false;
        Connection con = null; // Initialize the connection
        try {
            con = GetConnection.getConnection();
            String sql = "UPDATE mvctable SET name = ?, fname = ?, email = ?, mobile = ? WHERE email = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, edao.getName());
            ps.setString(2, edao.getFname());
            ps.setString(3, edao.getEmail());
            ps.setString(4, edao.getMobile());
            ps.setString(5, edao.getEmail()); // Set the WHERE condition
            int i = ps.executeUpdate();
            if (i > 0) {
                b = true;
            }
        } catch (SQLException e) {
            // Handle the exception, e.g., log or print the error message

        }
        return b;
    }

    /**
     *
     * @param edao
     * @return
     */
    public boolean ChangePassword(DAOClass edao) {
        boolean b = false;
        try {
            con = GetConnection.getConnection();
            String sql = "update mvctable set password =? where email =?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, decrypt(edao.getPassword()));
            ps.setString(2, edao.getEmail());
            int i = ps.executeUpdate();
            if (i > 0) {
                b = true;
            }

        } catch (SQLException e) {

        }

        return b;
    }

    public static void setKey(String myKey) {
        try {
            key = myKey.getBytes("UTF-8");
            MessageDigest sha = MessageDigest.getInstance("SHA-1");
            key = sha.digest(key);
            key = Arrays.copyOf(key, 16); // use only first 128 bit
            secretKey = new SecretKeySpec(key, "AES");
        } catch (UnsupportedEncodingException | NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
    }

    public static String encrypt(String strToEncrypt) {
        try {
            setKey("encryptionKey"); // You can modify the encryption key here
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
            cipher.init(Cipher.ENCRYPT_MODE, secretKey);
            return Base64.getEncoder().encodeToString(cipher.doFinal(strToEncrypt.getBytes("UTF-8")));
        } catch (UnsupportedEncodingException | InvalidKeyException | NoSuchAlgorithmException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e) {
            System.out.println("Error while encrypting: " + e.toString());
        }
        return null;
    }

    public static String decrypt(String strToDecrypt) {
        try {
            setKey("encryptionKey"); // You can modify the encryption key here
            Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5PADDING");
            cipher.init(Cipher.DECRYPT_MODE, secretKey);
            System.out.println("Input length: " + strToDecrypt.length()); // Log the length of the input string
            return new String(cipher.doFinal(Base64.getDecoder().decode(strToDecrypt)));
        } catch (InvalidKeyException | NoSuchAlgorithmException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e) {
            System.out.println("Error while decrypting: " + e.toString());
        }
        return null;
    }

}
