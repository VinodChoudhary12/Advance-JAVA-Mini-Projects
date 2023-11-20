
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package JDBC1;


import jakarta.servlet.ServletException;

import java.sql.Connection;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import jakarta.servlet.http.HttpServlet;



import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author dell
 */
public class Profile extends HttpServlet {
     protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet","root","root");
            HttpSession session=request.getSession();
            ResultSet rs=(ResultSet)session.getAttribute("rs");
            String email = rs.getString("email");
//            if(request.getParameter("nbutton")!=null){
//            
//            
//            String name = request.getParameter("name1");
//            String sql = "update opration set   name = ? where email=?";
//            PreparedStatement ps=con.prepareStatement(sql);
//            ps.setString(1,name );
//            ps.setString(2,email);
//            int i=ps.executeUpdate();
//            if(i>0)
////                out.print("succes");
//            response.sendRedirect("ProfilePage");
//            else
//                out.print("unsucces");
//            
//            }
      if(request.getParameter("nbutton")!=null)
        {

            String name = request.getParameter("name1");
            
            String sql3 = "update opration set  name = ? where email=?";
              PreparedStatement ps=con.prepareStatement(sql3);
            ps.setString(1,name );
            ps.setString(2,email);
            int j=ps.executeUpdate();
            if(j>0)
//              
            response.sendRedirect("ProfilePage");
                else
                    out.print("unsucces");
        }
            
            
             if(request.getParameter("fbutton")!=null)
        {
         
            String fname = request.getParameter("fname");
            String sql1 = "update opration set fname = ? where email = ?";
              PreparedStatement ps=con.prepareStatement(sql1);
            ps.setString(1,fname );
            ps.setString(2,email);
            int j=ps.executeUpdate();
            if(j>0)
//                out.print("succes");
            response.sendRedirect("ProfilePage");
                else
                    out.print("unsucces");
        }
             
//                if(request.getParameter("ebutton")!=null)
//        {
////            HttpSession session=request.getSession();
////            ResultSet rs=(ResultSet)session.getAttribute("rs");
////             email = rs.getString("email");
//            String eemail = request.getParameter("email");
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            //Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/servlet","root","root");
//            String sql2 = "update opration set  email = ? where name=?";
//             PreparedStatement ps=con.prepareStatement(sql2);
//            ps.setString(1,email );
//            ps.setString(2,name);
//            int j=ps.executeUpdate();
//            if(i>0)
////                out.print("succes");
//            response.sendRedirect("ProfilePage");
//                else
//                    out.print("unsucces");
//        }
                if(request.getParameter("mbutton")!=null)
        {

            String mob = request.getParameter("mob");
            
            String sql3 = "update opration set  mobile = ? where email=?";
              PreparedStatement ps=con.prepareStatement(sql3);
            ps.setString(1,mob );
            ps.setString(2,email);
            int j=ps.executeUpdate();
            if(j>0)
//              
            response.sendRedirect("ProfilePage");
                else
                    out.print("unsucces");
        }
           
                if(request.getParameter("pbutton")!=null)
        {

            
            String pass=request.getParameter("pass");
            String sql4 = "update opration set  password = ? where email=?";
              PreparedStatement ps=con.prepareStatement(sql4);
            ps.setString(1,pass );
            ps.setString(2,email);
            int j=ps.executeUpdate();
            if(j>0)
//              
            response.sendRedirect("ProfilePage");
                else
                    out.print("unsucces");
        }                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
                
                
                
                
             
             
        }
        
       
            
        } 
       
        
        
    

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws Exception
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException
            {
        
         try {
             processRequest(request, response);
         } catch (IOException | ClassNotFoundException | SQLException ex) {
             Logger.getLogger(Profile.class.getName()).log(Level.SEVERE, null, ex);
         }
       
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            try {
                processRequest(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(Profile.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Profile.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

    
}

