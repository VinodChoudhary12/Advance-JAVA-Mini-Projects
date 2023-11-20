<%-- 
    Document   : Lopage
    Created on : Oct 26, 2023, 7:46:08 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.DriverManager"%>
<%@page import =  "java.sql.PreparedStatement"%>
<%@page import =  "java.sql.ResultSet"%>
<%@page import =  "java.sql.SQLException"%>
<%@page import =  "java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
           <!DOCTYPE html> 
              <html> 
                 <head> 
                     <title>TODO supply a title</title> 
                     <meta charset='UTF-8'> 
                     <meta name='viewport' content='width=device-width, initial-scale=1.0'> 
                     <style> 
                         
                         *{ 
                             margin: 0; 
                             padding: 0; 
                             box-sizing: border-box; 
                             font-family: 'Poppins', sans-serif; 
                         } 
                         body{ 
                             min-height: 100vh; 
                             width: 100%; 
                             background: skyblue; 
                         } 
                         .container{ 
                             position: absolute; 
                             top: 50%; 
                             left: 50%; 
                             transform: translate(-50%,-50%); 
                             max-width: 430px; 
                             width: 100%; 
                             background: #fff; 
                             border-radius: 7px; 
                             box-shadow: 0 5px 10px rgba(0,0,0,0.3); 
                         } 
                         .container .registration{ 
                             display: none; 
                         } 
                         #check:checked ~ .registration{ 
                             display: block; 
                         } 
                         #check:checked ~ .login{ 
                             display: none; 
                         } 
                         #check{ 
                             display: none; 
                         } 
                         .container .form{ 
                             padding: 2rem; 
                         } 
                         .form header{ 
                             font-size: 2rem; 
                             font-weight: 500; 
                             text-align: center; 
                             margin-bottom: 1.5rem; 
                         } 
                         .form input{ 
                             height: 60px; 
                             width: 100%; 
                             padding: 0 15px; 
                             font-size: 17px; 
                             margin-bottom: 1.3rem; 
                             border: 1px solid #ddd; 
                             border-radius: 6px; 
                             outline: none; 
                         } 
                         .form input:focus{ 
                             box-shadow: 0 1px 0 rgba(0,0,0,0.2); 
                         } 
                         .form a{ 
                             font-size: 16px; 
                             color: #009579; 
                             text-decoration: none; 
                         } 
                         .form a:hover{ 
                             text-decoration: underline; 
                         } 
                         .form input.button{ 
                             color: #fff; 
                             background: skyblue; 
                             font-size: 1.2rem; 
                             font-weight: 500; 
                             letter-spacing: 1px; 
                             margin-top: 1.7rem; 
                             cursor: pointer; 
                             transition: 0.4s; 
                         } 
                         .form input.button:hover{ 
                             background: #006653; 
                         } 
                         .signup{ 
                             font-size: 17px; 
                             text-align: center; 
                         } 
                         .signup label{ 
                             color: #009579; 
                             cursor: pointer; 
                         } 
                         .signup label:hover{ 
                             text-decoration: underline; 
                         } 
                         #result
                         {
                             color: red;
/*                             display: none;*/
                             
                         }
                         
                     
//            if (n == 1) {
//                       form label {display: block;}  
//                 label {display: block;} input:focus + label {     display: none;    }
//                n = 0;
               
//            }
                 form input:focus  label{     display: none;    } 
            //            --------------------------------------------
                     </style> 
                 </head> 
                 <body> 
                     <!DOCTYPE html> 
                 <html lang='en'> 
                     <head> 
                         <meta charset='UTF-8'> 
                         <meta name='viewport' content='width=device-width, initial-scale=1.0'> 
                         <meta http-equiv='X-UA-Compatible' content='ie=edge'> 
                         <title>Login & Registration Form</title> 
                     </head> 
                     <body> 
                         <div class='container'> 
                             <input type='checkbox' id='check'> 
                             <div class='login form'> 
                                 <header>Login</header> 
                                 <form action=''> 
                                     <input id='inputField' required onkeyup="validateEmail()"  type='email' placeholder='Enter your email' name='gmail'>
                                     <span id="result" style="" > *</span>
            
                                        <input id='inputField' required type='password' placeholder='Enter your password' name='password' > 
                                     <a href='#'>Forgot password?</a> 


                                     
                                     
                                     <input type='submit' class='button' value='Login'> 
                                 </form> 
                                 <div class='signup'> 
                                     <span class='signup'>Don't have an account?       <a href='RegPage'>SignUp</a> 
                                     </span> 
                                 </div> 
                             </div> 
                         </div> 
                     </body> 
                 </html> 
             </body> 
             </html> 
             <script>
//                 function check()
//                 {
//                     var gmail = Document.getElementById("gmail").value;
//                     var result = Document.getElementById("result");
//                     
//                     var emailPattern = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/;
//                     
//                     if (!emailPattern.test(gmail)) 
//                     { 
////                         result.style.display="block";
//                         
//                         result.innerHTML="Plzz Enter Email"; 
//                     }
//                                       
//                     }
                     function validateEmail() {
            const emailInput = document.getElementById("gmail");
            const email = emailInput.value;

            // Regular expression for basic email validation
            const emailPattern = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/;

            if (emailPattern.test(email)) 
            {
                alert("Valid email address!");
            } else {
                alert("Invalid email address. Please enter a valid email.");
            }
        }
                 
                 
                 
             </script>
             
             
             
             
             
             
             <%
                 Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con;
            String path = "jdbc:mysql://localhost:3306/servlet";
            String sql = "SELECT * FROM  opration WHERE email = ? and password = ?";

            String idpass = "root";
            try {
                con = DriverManager.getConnection(path, idpass, idpass);
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, request.getParameter("gmail"));
                ps.setString(2, request.getParameter("password"));
                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
//                     HttpSession session=request.getSession();  
                   session.setAttribute("rs", rs);
                    response.sendRedirect(request.getContextPath() + "/profile.jsp");
                  
                   
                } 
                else {
//                    Lopage.processRequest(request, response, 1);
                }
            } catch (SQLException e) {
                out.print(e);
            }

             %>