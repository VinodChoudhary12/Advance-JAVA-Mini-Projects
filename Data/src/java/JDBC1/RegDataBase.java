 package JDBC1;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */


import java.sql.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


/**
 *
 * @author dell
 */
public class RegDataBase extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.lang.ClassNotFoundException
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            String name =request.getParameter("name");
            String fname =request.getParameter("fname");
           String email= request.getParameter("email");
            String pass=request.getParameter("password");
            String mobile=request.getParameter("mobile");
            Connection con=null;
            PreparedStatement ps;
            
            
            
            
            if(request.getParameter("Regist")!=null)
            {
                
                try {

                Class.forName("com.mysql.cj.jdbc.Driver");
                 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ servlet", "root", "root");
               
//               
                
                String cmd ;
                cmd ="insert into  opration (name ,fname ,email,password,mobile) values(?,?,?,?,?)";

                ps = con.prepareStatement(cmd);
               if(mobile.length()==10)
            {
                
                ps.setString(1, name);
                ps.setString(2, fname);
                ps.setString(3, email);
                ps.setString(4, pass);
                ps.setString(5, mobile);
                int i = ps.executeUpdate();
                if(i>0)
                {
                    
                   response.sendRedirect(request.getContextPath() + "/Lopage");
                    out.println("<span  style='color:green;'> Your Data Saved SeccuessFully</span>");
                    
                }
                else
                {
//                    
                    out.println("Failed");
                }
                 con.close();  
            }
               else
               {
                   out.println("<tr>");
                                     out.println("<td  style=\"color:RED;\">Mobile Invalid</td>");
                                     out.println("</tr>");
               }


            } catch (SQLException ex) {
                
            }
            }
            if(request.getParameter("Show All Members Details")!=null)
            {
//                String cmd = "Select * from opration";
//                try
//                {
//                    ps = con.prepareStatement(cmd);
//                    ResultSet rs=ps.executeQuery();
//                    while(rs.next())
//                    {
//                        
//                    }
//                }
//                catch(Exception ex)
//                {
//                
//                }
                PreparedStatement st;
        //Connection con;
        String cmd =  "select * from opration";
          String path1 = "jdbc:mysql://localhost:3306/ servlet";
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection(path1, "root", "root");
        st = con.prepareStatement(cmd);
       ResultSet rs = st.executeQuery();
       ResultSetMetaData rsmd =rs.getMetaData();
        out.println("\t"+rsmd.getColumnName(1)+"\t"+rsmd.getColumnName(2)+"\t"+rsmd.getColumnName(3)+"\t"+rsmd.getColumnName(4)
        +"\t"+rsmd.getColumnName(5)+"\t"+rsmd.getColumnName(6));
       while(rs.next())
       {
           out.println("\t"+rs.getInt(1)+"\t"+rs.getString(2)+"\t"+rs.getString(3)+"\t"+rs.getString(4)
           +"\t"+rs.getString(5)+"\t"+rs.getString(6));
       }
                
            }
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException | SQLException ex) {
           
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException | SQLException ex) {
            
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
