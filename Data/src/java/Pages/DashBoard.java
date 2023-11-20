/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Pages;

import java.sql.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author dell
 */
public class DashBoard extends HttpServlet {

   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException, SQLException {
    response.setContentType("text/html;charset=UTF-8");
    try (PrintWriter out = response.getWriter()) {
        
        
      out.print("   <!DOCTYPE html>");
      out.print("   <html lang='en' dir='ltr'>");
      out.print("   <head>");
      out.print("   <meta charset='UTF-8' />");
      out.print("   <title>Sticky Navigation Bar | CodingLab</title>");
      out.print(
          "<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css'/> ");
      out.print("   <style>");
      out.print("* {");
      out.print("   margin: 0;");
      out.print("   padding: 0;");
      out.print("   box-sizing: border-box;");
      out.print("   text-decoration: none;");
      out.print("   }");
      out.print("   #head {");
      out.print(" width: 100%;");
      out.print(" padding: 15px;");
      out.print(" background: grey;");
      out.print(" display: flex;");
      out.print(" align-items: center;");
      out.print(" justify-content: center;");
      out.print(" font-family: 'Ubuntu', sans-serif;");
      out.print("}");
      out.print("#head div {");
      out.print("font-size: 20px;");
      out.print("color: white;");
      out.print("}");
      out.print("nav {");
      out.print("top: 0;");
      out.print("left: 0;");
      out.print("width: 100%;");
      out.print("padding: 15px;");
      out.print("background: teal;");
     // out.print("position: sticky;");
      out.print("font-family: 'Ubuntu', sans-serif;");
      out.print("}");
      out.print(" .nav-content {");
      out.print("   height: 100%;");
      out.print("   margin: auto;");
      out.print("   display: flex;");
      out.print("   align-items: center;");
      out.print("   justify-content: space-between;");
      out.print(" }");
      out.print(" .logo a {");
      out.print("   font-weight: 500;");
      out.print("   font-size: 35px;");
      out.print("   color: white;");
      out.print(" }");
      out.print(" .nav-links {");
      out.print("   width: 60%;");
      out.print(" }");
      out.print(" .nav-content .nav-links {");
      out.print("   display: flex;");
      out.print(" }");
      out.print(" .nav-content .nav-links li {");
      out.print("   list-style: none;");
      out.print("   margin: 8px;");
     // out.print("   margin-left: 100px;");
      out.print(" }");
      out.print(" .nav-links li a {");
      out.print("   text-decoration: none;");
      out.print("   color: white;");
      out.print("   font-size: 18px;");
      out.print("   font-weight: 500;");
//      out.print("   padding: 10px 4px;");
      out.print(" }");
      out.print(" .nav-links li a:hover {");
      out.print("   color: black;");
      out.print(" }");
      out.print(" #section_one {");
      out.print("   height: 500px;");
      out.print("   width: 100%;");
      out.print("   display: flex;");
      out.print("   justify-content: space-evenly;");
      out.print("   align-items: center;");
      out.print(" }");
      out.print(" #section_one_one,");
      out.print(" #section_one_two,");
      out.print(" #section_one_three {");
      out.print("   height: 450px;");
      out.print("   width: 33%;");
      out.print("   background-color: teal;");
      out.print(" }");
      out.print(" footer {");
      out.print("   width: 100%;");
      out.print("   background: #111;");
      out.print(" }");
      out.print(" .content {");
      out.print("   width: 100%;");
      out.print("   padding: 20px;");
      out.print("   display: flex;");
      out.print("   /* flex-wrap: wrap; */");
      out.print("   justify-content: space-between;");
      out.print(" }");
      out.print(" .content p,");
      out.print(" a {");
      out.print("   color: #fff;");
      out.print(" }");
      out.print(" .left_box {");
      out.print("   width: 33%;");
      out.print("   display: flex;");
      out.print("   flex-direction: column;");
      out.print(" }");
      out.print(" .left_box p {");
      out.print("   width: 80%;");
      out.print(" }");
      out.print(" .middle_box {");
      out.print("   width: 33%;");
      out.print("   display: flex;");
      out.print("   flex-direction: column;");
      out.print(" }");
      out.print(" .right_box {");
      out.print("   width: 33%;");
      out.print("   display: flex;");
      out.print("   flex-direction: column;");
      out.print(" }");
      out.print(" .content .topic {");
      out.print("   font-size: 22px;");
      out.print("   font-weight: 600;");
      out.print("   color: #fff;");
      out.print("   margin-bottom: 16px;");
      out.print(" }");
      out.print(" footer .content .lower i {");
      out.print("   padding-right: 16px;");
      out.print(" }");
      out.print(" #text_sub {");
      out.print("   height: 43px;");
      out.print("   width: 50%;");
      out.print("   font-size: 20px;");
      out.print(" }");
      out.print(" #sent_btn {");
      out.print("   height: 43px;");
      out.print("   width: 20%;");
      out.print("   font-size: 20px;");
      out.print(" }");
      out.print(" footer .content .media-icons a {");
      out.print("   font-size: 16px;");
      out.print("   width: 45px;");
      out.print("   display: inline-block;");
      out.print("   text-align: center;");
      out.print("   line-height: 43px;");
      out.print("   border: 2px solid #222222;");
      out.print("   margin: 30px 5px;");
      out.print(" }");
      out.print(" .content .media-icons a:hover {");
      out.print("   border-color: #eb2f06;");
      out.print(" }");
      out.print(" footer .bottom {");
      out.print("   width: 100%;");
      out.print("   text-align: right;");
      out.print("   color: #d9d9d9;");
      out.print("   padding: 0 40px 5px 0;");
      out.print(" }");
      out.print(" footer .bottom a {");
      out.print("   color: #eb2f06;");
      out.print(" }");
      out.print(" footer a:hover {");
      out.print("   color: #eb2f06;");
      out.print(" }");
      out.print("    </style>");
      out.print("  </head>");
      out.print("  <body>");
      out.print("    <header id='head'>");
      response.setHeader("Cache-Control", "No-Cache");
        response.setHeader("Cache-Control", "No-Store");
        
        
      HttpSession session=request.getSession(); 
      Object email = session.getAttribute("email");
     ResultSet ab = (ResultSet) session.getAttribute("rs");
            String name = ab.getString(2);
            if(name!=null)
            {
     
     
      out.print("      <div>WELCOME "+name+"</div> ");
      
      out.print("    </header>");
      out.print("    <nav>");
      out.print("      <div class='nav-content'>");
      out.print("        <div class='logo'>");
      out.print("          <a href='#''>MyDashBoard</a>");
      out.print("        </div>");
      out.print("        <ul class='nav-links'>");
      out.print("          <li><a href='#'>Home</a></li>");
      out.print("          <li><a href='#'>About</a></li>");
      out.print("          <li><a href='#'>Gallary</a></li>");
      out.print("          <li><a href='Logout''>Logout</a></li>");
      out.print("          <li><a href='#'>Contact</a></li>");
      
      
      //out.print("          <li><a href='#'><i class='fas fa-profile'></a></li>");
      out.print("              <a href='ProfilePage''><i style='font-size:30px;'  class=\"fa fa-user\" aria-hidden=\"true\"></i></a>");
      out.print("        </ul>");
      out.print("      </div>");
      out.print("    </nav>");
      out.print("    <section id='section_one'>");
      out.print("      <div id='section_one_one'></div>");
      out.print("      <div id='section_one_two'></div>");
      out.print("      <div id='section_one_three'></div>");
      out.print("    </section>");
      out.print("    <footer>");
      out.print("      <div class='content'>");
      out.print("        <div class='left_box'>");
      out.print("          <div class='upper'>");
      out.print("            <div class='topic'>About us</div>");
      out.print("            <p>");
      out.print("              Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae");
      out.print("              illo nihil porro magnam quod explicabo nisi expedita dolores aut");
      out.print("              perspiciatis!");
      out.print("            </p>");
      out.print("          </div>");
      out.print("          <div class='lower'>");
      out.print("            <div class='topic'>Contact us</div>");
      out.print("            <div class='phone'>");
      out.print("              <a href='#'><i class='fas fa-phone-volume'></i>+007 9089 6767</a>");
      out.print("            </div>");
      out.print("            <div class='email'>");
      out.print("              <a href='#''><i class='fas fa-envelope'></i>abc@gmail.com</a>");
      out.print("            </div>");
      out.print("          </div>");
      out.print("        </div>");
      out.print("        <div class='middle_box'>");
      out.print("          <span class='topic'>Our Services</span><br />");
      out.print("          <span><a href='#'>Web Design, Development</a></span> <br />");
      out.print("          <span><a href='#'>Web UX Design, Reasearch</a></span> <br />");
      out.print("          <span><a href='#'>Web User Interface Design</a></span> <br />");
      out.print("          <span><a href='#'>Theme Development, Design</a></span> <br />");
      out.print("          <span><a href='#'>Mobile Application Design</a></span> <br />");
      out.print("          <span><a href='#'>Wire raming & Prototyping</a></span> <br />");
      out.print("        </div>");
      out.print("        <div class='right_box'>");
//      
//      out.print("      <div class='bottom'>");
//      out.print("        <p>Copyright © 2020 <a href='#'>CodingLab</a> All rights reserved</p>");
//      out.print("      </div>");
      out.print("    </footer>");
      out.print("  </body>");
      out.print("</html>");
            }
            else{
                response.sendRedirect("Lopage");
            }
    }
  }

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
       try {
           processRequest(request, response);
       } catch (SQLException ex) {
           Logger.getLogger(DashBoard.class.getName()).log(Level.SEVERE, null, ex);
       }
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
       try {
           processRequest(request, response);
       } catch (SQLException ex) {
           Logger.getLogger(DashBoard.class.getName()).log(Level.SEVERE, null, ex);
       }
  }

  @Override
  public String getServletInfo() {
    return "Short description";
  }

}


