/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.employee.Model;

import com.employee.services.GetConnection;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class productDto {

    private Connection con = null;

    public boolean add(ProductDao pdao) {
        boolean b = false;
        System.out.println("mohan 2");
        try {
            con = GetConnection.getConnection();
            String sql = "INSERT INTO product (name, description, category, date, price) VALUES (?, ?, ?, ?, ?)";

            PreparedStatement ps = con.prepareStatement(sql);

            // Set parameters
            ps.setString(1, pdao.pname);
            ps.setString(2, pdao.pdescription);
            ps.setString(3, pdao.pcategory);
            ps.setString(4, pdao.pdate);
            ps.setFloat(5, pdao.pprice);

            int i = ps.executeUpdate();
            if (i > 0) {
                b = true;

            }

        } catch (SQLException e) {
            e.printStackTrace();
            out.println("SQLException: " + e.getMessage());
            out.println("SQLState: " + e.getSQLState());
            out.println("VendorError: " + e.getErrorCode());
        }

        return b;

    }
     public ProductDao[] getProduct() {

        ProductDao prodao[] = new ProductDao[100];
        Connection con = GetConnection.getConnection();

        String query = "SELECT * FROM product";

        if (con != null) {

            System.out.print("con -4 ");

            try {

                PreparedStatement ps = con.prepareStatement(query);
                ResultSet rs = ps.executeQuery();
                int i = 0;

                System.out.print("dto -5 ");

                while (rs.next()) {
                    prodao[i] = new ProductDao();

                    prodao[i].setId(rs.getInt("id"));
                    prodao[i].setPname(rs.getString("name"));
                    
                    
                    prodao[i].setPcategory(rs.getString("Category"));
                    
                    prodao[i].setPprice(rs.getFloat("Price"));
                    
                    prodao[i].setPdescription(rs.getString("Description"));
                    
                    i++;
                    System.out.println(9);
                }
                System.out.print("dto -7 ");

            } catch (SQLException e) {

                System.out.println(e);
                

            }

        }
        System.out.println(con);
        return prodao;
    }
    
}
