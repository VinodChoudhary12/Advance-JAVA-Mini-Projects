<%-- 
    Document   : AllProduct
    Created on : Nov 20, 2023, 10:17:11 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="com.employee.model.ProductDao"%>

<%
      productDao[] prodao = (productDao[]) session.getAttribute("prodao");
        
%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
                #head {
       width: 100%;
       padding: 15px;
       background: grey;
       display: flex;
       align-items: center;
       justify-content: center;
      
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
         
       }
       .nav-links li a {
         text-decoration: none;
         color: white;
         font-size: 18px;
         font-weight: 500;
        padding: 10px 4px;
       }
       .nav-links li a:hover {
         color: black;
       }
            </style>
    </head>
    <body>
        <nav>
            <div class='nav-content'>
              <div class='logo'>
                <a href='#'>My DashBoard</a>
              </div>
              <ul class='nav-links'>
                <li><a href='#'>DashBoard</a></li>
                <li><a href='#'>report</a></li>
                <li><a href='AllProduct.java'>all Product</a></li>
                
                  <li><a href='ProfilePage.jsp'><i class='fas fa-profile'></a></li>
                <li><a href='#'>Contact</a></li>
                
             
                
                
                
                
                
                
              </ul>
            </div>
          </nav>
        
    </body>
</html>
