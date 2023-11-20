<%-- 
    Document   : ProfilePage
    Created on : Oct 26, 2023, 11:19:30 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*"%>
<%@page import =  "java.sql.PreparedStatement"%>
<%@page import =  "java.sql.ResultSet"%>
<%@page import =  "java.sql.SQLException"%>
<%@page import =  "java.sql.Connection"%>
<!DOCTYPE html>


<%
//HttpSession session=request.getSession(); 
     ResultSet ab = (ResultSet) session.getAttribute("rs");
            String name="vinod";
            String fname="bharat";
            String email="vinod@gmail.com";
            String mob="1234567890";
        try {
                name = ab.getString(2);
                fname = ab.getString(3);
                email = ab.getString(4);
                mob = ab.getString(6);
            }
    catch(Exception e)
    {
        
    }
            
                          
   %>
        
        
<!DOCTYPE html>
<html lang=\"en\">
<head>
  <meta charset=\"UTF-8\" />
  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />
  <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\" />
  <title>Profile Card UI Design | CoderGirl</title>
  <!DOCTYPE html>  
 <html lang=\"en\">  
 <head>  
   <meta charset=\"UTF-8\" />  
   <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />  
   <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\" />  
   <title>Profile Card UI Design | CoderGirl</title>  
   <style>  
     * {  
       margin: 0;  
       padding: 0;  
       box-sizing: border-box;  
       font-family: \"Poppins\", sans-serif;  
     }  
     .main {  
       width: 100%;  
       height: 100vh;  
       display: flex;  
       align-items: center;  
       justify-content: center;  
     }  
     .profile-card {  
       display: flex;  
       flex-direction: column;  
       align-items: center;  
       height: 600px;  
       width: 80%;  
       border-radius: 25px;  
       padding: 30px;  
       border: 1px solid #ffffff40;  
       /* background-color: yellow; */  
       box-shadow: 0 5px 20px rgba(0, 0, 0, 0.4);  
     }  
     .image {  
       position: relative;  
       height: 150px;  
       width: 150px;  
     }  
     .image .profile-pic {  
       width: 100%;  
       height: 100%;  
       border-radius: 50%;  
       box-shadow: 0 5px 20px rgba(0, 0, 0, 0.4);  
     }  
     form {  
       width: 100%;  
       position: relative;  
     }  
     table {  
       position: absolute;  
       margin-top: 30px;  
       width: 100%;  
     }  
     table tr {  
       /* width: 100%; */  
       display: flex;  
       /* flex-direction: row; */  
     }  
     table tr td {  
       font-size: 18px;  
       width: 100%;  
       height: 35px;  
       color: black;  
       display: flex;  
       flex-direction: row;  
       /* background-color: yellow; */  
     }  
     table tr td a {  
       font-size: 18px;  
       width: 40%;  
       height: 35px;  
       color: black;  
       text-decoration: none;  
     }  
     table tr td a:hover {  
       color: white;  
     }  
     input {  
       width: 90%;  
       height: 30px;  
       font-size: 15px;  
       border-radius: 10px;  
       border: none;  
     }  
     input:hover {  
       background-color: white;  
     }  
     #editToggle {  
       display: none;  
     }  
     /* -------------------------------------------- */  
     input[type=\"checkbox\"] {  
       display: none;  
     }  
     input[type=\"checkbox\"]:checked + input[type=\"text\"] {  
       pointer-events: auto;  
       background-color: #fff;  
       border: 1px solid #ccc;  
       color: #333;  
     }  
     button {  
       display: none;  
     }  
     table tr td label{  
       background-color: #ccc;  
       border-radius: 10px;  
       width: 20px;  
       height: 20px;  
     }  
     table tr td label:hover {  
       background-color: gray;  
     }  
     input[type=\"checkbox\"]:checked + input[type=\"text\"] + button {  
       display: inline-block;  
     }  
     /* ---------------------------------------- */  
   </style>  
 </head>  
 <body>  
   <section class=\"main\">  
     <div class=\"profile-card\">  
       <div class=\"image\">  
         <img src=\"images/profile.jpg\" alt=\"\" class=\"profile-pic\" />  
       </div>  
       <div class=\"data\">  
         <br />  
         <br />  
         <h2>Name</h2>  
       </div>  
       <form action=''>  
         <table>  
           <tr>  
             <td>  
               <span>Name : </span>  
             </td>  
             <td>  
               <span><%=name%></span>  
             </td>  
             <td>  
               <label for=\"editToggle1\">Edit</label>  
             </td>  
             <td class=\"save_btn\">  
               <input type=\"checkbox\" id=\"editToggle1\" />  
               <input type=\"text\" id=\"editableField1\" name='name1'/>  
 
   


               <input type='submit' id=\"saveButton1\" name='nbutton' value='change'>  

             </td>  
           </tr>  
           <tr>  
             <td>  
               <span>Father :</span>  
             </td>  
             <td>  
               <span><%=fname%></span>  
             </td>  
             <td>  
               <label for=\"editToggle2\">Edit</label>  
             </td>  
             <td class=\"save_btn\">  
               <input type=\"checkbox\" id=\"editToggle2\" />  
               <input type=\"text\" id=\"editableField2\" name='fname />  
//               <button id=\"saveButton2\" name='fbutton'>Save</button>  
               <button id=\"saveButton2\" name='fbutton'>Save</button>  
               
             </td>  
           </tr>  
           <tr>  
             <td>  
               <span>Email : </span>  
             </td>  
             <td>  
               <span><%=email%></span>  
             </td>  
             <td>  
               <label for=\"editToggle3\">Edit</label>  
             </td>  
             <td class=\"save_btn\">  
               <input type=\"checkbox\" id=\"editToggle3\" />  
               <input type=\"text\" id=\"editableField3\" name='email' />  
               <button id=\"saveButton3\" name='ebutton'>Save</button>  
             </td>  
           </tr>  
           <tr>  
             <td>  
               <span>Mobile : </span>  
             </td>  
             <td>  
               <span><%=mob%></span>  
             </td>  
             <td>  
               <label for=\"editToggle4\">Edit</label>  
             </td>  
             <td class=\"save_btn\">  
               <input type=\"checkbox\" id=\"editToggle4\" />  
               <input type=\"text\" id=\"editableField4\" name='mob'/>  
               <button id=\"saveButton4\" name='mbutton'>Save</button>  
             </td>  
           </tr>  
           <tr>  
             <td>Change Password</td>  
             <td></td>  
             <td class=\"save_btn\">  
               <label for=\"editToggle5\">Edit</label>  
             </td>  
             <td>  
               <input type=\"checkbox\" id=\"editToggle5\" />  
               <input type=\"text\" id=\"editableField5\" name='pass' />  
               <button id=\"saveButton5\" name='pbutton'>Save</button>  
             </td>  
           </tr>  
           <tr>  
             <td>  
               <a href=\"DashBoard.jsp\" class=\"btn\">Home</a>  
             </td>  
             <td>  
               <a href=\"ChangePassword\" class=\"btn\">Change Password</a>  
             </td>  
           </tr>  
         </table>  
       </form>  
     </div>  
   </section>  
 </body>  
 </html>  
