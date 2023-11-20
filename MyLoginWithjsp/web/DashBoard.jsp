 
    Document   : DashBoard
    Created on : Oct 26, 2023, 8:05:38 AM
    Author     : dell

<%@page import = "java.sql.DriverManager"%>
<%@page import =  "java.sql.PreparedStatement"%>
<%@page import =  "java.sql.ResultSet"%>
<%@page import =  "java.sql.SQLException"%>
<%@page import =  "java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%
     response.setHeader("Cache-Control", "No-Cache");
        response.setHeader("Cache-Control", "No-Store");
      Object email = session.getAttribute("email");
     ResultSet ab = (ResultSet) session.getAttribute("rs");
            String name = ab.getString(2);
            if(name!=null)
            {
 %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <!DOCTYPE html>
         <html lang='en' dir='ltr'>
         <head>
         <meta charset='UTF-8' />
         <title>Sticky Navigation Bar | CodingLab</title>
     
         <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css'/>
         <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css'/> 
           <style>
      * {
         margin: 0;
         padding: 0;
         box-sizing: border-box;
         text-decoration: none;
         }
         #head {
       width: 100%;
       padding: 15px;
       background: grey;
       display: flex;
       align-items: center;
       justify-content: center;
       font-family: 'Ubuntu', sans-serif;
      }
      #head div {
      font-size: 20px;
      color: white;
      }
      nav {
      top: 0;
      left: 0;
      width: 100%;
      padding: 15px;
      background: teal;
     // position: sticky;
      font-family: 'Ubuntu', sans-serif;
      }
       .nav-content {
         height: 100%;
         margin: auto;
         display: flex;
         align-items: center;
         justify-content: space-between;
       }
       .logo a {
         font-weight: 500;
         font-size: 35px;
         color: white;
       }
       .nav-links {
         width: 60%;
       }
       .nav-content .nav-links {
         display: flex;
       }
       .nav-content .nav-links li {
         list-style: none;
         margin: 8px;
     //    margin-left: 100px;
       }
       .nav-links li a {
         text-decoration: none;
         color: white;
         font-size: 18px;
         font-weight: 500;
//         padding: 10px 4px;
       }
       .nav-links li a:hover {
         color: black;
       }
       #section_one {
         height: 500px;
         width: 100%;
         display: flex;
         justify-content: space-evenly;
         align-items: center;
       }
       #section_one_one,
       #section_one_two,
       #section_one_three {
         height: 450px;
         width: 33%;
         background-color: teal;
       }
       footer {
         width: 100%;
         background: #111;
       }
       .content {
         width: 100%;
         padding: 20px;
         display: flex;
         /* flex-wrap: wrap; */
         justify-content: space-between;
       }
       .content p,
       a {
         color: #fff;
       }
       .left_box {
         width: 33%;
         display: flex;
         flex-direction: column;
       }
       .left_box p {
         width: 80%;
       }
       .middle_box {
         width: 33%;
         display: flex;
         flex-direction: column;
       }
       .right_box {
         width: 33%;
         display: flex;
         flex-direction: column;
       }
       .content .topic {
         font-size: 22px;
         font-weight: 600;
         color: #fff;
         margin-bottom: 16px;
       }
       footer .content .lower i {
         padding-right: 16px;
       }
       #text_sub {
         height: 43px;
         width: 50%;
         font-size: 20px;
       }
       #sent_btn {
         height: 43px;
         width: 20%;
         font-size: 20px;
       }
       footer .content .media-icons a {
         font-size: 16px;
         width: 45px;
         display: inline-block;
         text-align: center;
         line-height: 43px;
         border: 2px solid #222222;
         margin: 30px 5px;
       }
       .content .media-icons a:hover {
         border-color: #eb2f06;
       }
       footer .bottom {
         width: 100%;
         text-align: right;
         color: #d9d9d9;
         padding: 0 40px 5px 0;
       }
       footer .bottom a {
         color: #eb2f06;
       }
       footer a:hover {
         color: #eb2f06;
       }
          </style>
          </style>
        </head>
        <body>
          <header id='head'>

      
     
     
              <div>WELCOME <%=name%></div> 
      
          </header>
          <nav>
            <div class='nav-content'>
              <div class='logo'>
                <a href='#''>MyDashBoard</a>
              </div>
              <ul class='nav-links'>
                <li><a href='#'>Home</a></li>
                <li><a href='#'>About</a></li>
                <li><a href='#'>Gallary</a></li>
                <li><a href='Logout''>Logout</a></li>
                  <li><a href='ProfilePage.jsp'><i class='fas fa-profile'></a></li>
                <li><a href='#'>Contact</a></li>
                
      
      
               <li> <a href='ProfilePage.jsp'><i class="fa-solid fa-user"></i></a></li>
             
                    <a href='ProfilePage''><i style='font-size:30px;'  class=\"fa fa-user\" aria-hidden=\"true\"></i></a>
              </ul>
            </div>
          </nav>
          <section id='section_one'>
            <div id='section_one_one'></div>
            <div id='section_one_two'></div>
            <div id='section_one_three'></div>
          </section>
          <footer>
            <div class='content'>
              <div class='left_box'>
                <div class='upper'>
                  <div class='topic'>About us</div>
                  <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae
                    illo nihil porro magnam quod explicabo nisi expedita dolores aut
                    perspiciatis!
                  </p>
                </div>
                <div class='lower'>
                  <div class='topic'>Contact us</div>
                  <div class='phone'>
                    <a href='#'><i class='fas fa-phone-volume'></i>+007 9089 6767</a>
                  </div>
                  <div class='email'>
                    <a href='#''><i class='fas fa-envelope'></i>abc@gmail.com</a>
                  </div>
                </div>
              </div>
              <div class='middle_box'>
                <span class='topic'>Our Services</span><br />
                <span><a href='#'>Web Design, Development</a></span> <br />
                <span><a href='#'>Web UX Design, Reasearch</a></span> <br />
                <span><a href='#'>Web User Interface Design</a></span> <br />
                <span><a href='#'>Theme Development, Design</a></span> <br />
                <span><a href='#'>Mobile Application Design</a></span> <br />
                <span><a href='#'>Wire raming & Prototyping</a></span> <br />
              </div>
              <div class='right_box'>
      
            <d iv class='bottom'>
            <p>Copyright © 2020 <a href='#'>CodingLab</a> All rights reserved</p>           </div>
          </footer>
        </body>
      </html>
      
      <%
            }
            else{
                response.sendRedirect("Lopage.jsp");
            }
%>