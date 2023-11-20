package Pages;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;



@WebServlet("/ProfileServlet")
public class ProfilePage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        
      HttpSession session=request.getSession(); 
     ResultSet ab = (ResultSet) session.getAttribute("rs");
            String name;
            String fname;
            String email;
            String mob;
        try {
            name = ab.getString(2);
            fname = ab.getString(3);
            email = ab.getString(4);
            mob = ab.getString(6);
            out.println("""
                        <style>input
                                {
                                    height: 30px;
                                    width: 100px;
                                }</style>""");
            
            
            
            
   
//        
        
out.println("<!DOCTYPE html>");
out.println("<html lang=\"en\">");
out.println("<head>");
out.println("  <meta charset=\"UTF-8\" />");
out.println("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />");
out.println("  <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\" />");
out.println("  <title>Profile Card UI Design | CoderGirl</title>");
out.println("  <style>");
out.println("    * {");
out.println("      margin: 0;");
out.println("      padding: 0;");
out.println("      box-sizing: border-box;");
out.println("      font-family: \"Poppins\", sans-serif;");
out.println("    }");
out.println("    .main {");
out.println("      width: 100%;");
out.println("      height: 100vh;");
out.println("      display: flex;");
out.println("      align-items: center;");
out.println("      justify-content: center;");
out.println("    }");
out.println("    .profile-card {");
out.println("      display: flex;");
out.println("      flex-direction: column;");
out.println("      align-items: center;");
out.println("      height: 600px;");
out.println("      width: 80%;");
out.println("      border-radius: 25px;");
out.println("      padding: 30px;");
out.println("      border: 1px solid #ffffff40;");
out.println("      /* background-color: yellow; */");
out.println("      box-shadow: 0 5px 20px rgba(0, 0, 0, 0.4);");
out.println("    }");
out.println("    .image {");
out.println("      position: relative;");
out.println("      height: 150px;");
out.println("      width: 150px;");
out.println("    }");
out.println("    .image .profile-pic {");
out.println("      width: 100%;");
out.println("      height: 100%;");
out.println("      border-radius: 50%;");
out.println("      box-shadow: 0 5px 20px rgba(0, 0, 0, 0.4);");
out.println("    }");
out.println("    form {");
out.println("      width: 100%;");
out.println("      position: relative;");
out.println("    }");
out.println("    table {");
out.println("      position: absolute;");
out.println("      margin-top: 30px;");
out.println("      width: 100%;");
out.println("    }");
out.println("    table tr {");
out.println("      /* width: 100%; */");
out.println("      display: flex;");
out.println("      /* flex-direction: row; */");
out.println("    }");
out.println("    table tr td {");
out.println("      font-size: 18px;");
out.println("      width: 100%;");
out.println("      height: 35px;");
out.println("      color: black;");
out.println("      display: flex;");
out.println("      flex-direction: row;");
out.println("      /* background-color: yellow; */");
out.println("    }");
out.println("    table tr td a {");
out.println("      font-size: 18px;");
out.println("      width: 40%;");
out.println("      height: 35px;");
out.println("      color: black;");
out.println("      text-decoration: none;");
out.println("    }");
out.println("    table tr td a:hover {");
out.println("      color: white;");
out.println("    }");
out.println("    input {");
out.println("      width: 90%;");
out.println("      height: 30px;");
out.println("      font-size: 15px;");
out.println("      border-radius: 10px;");
out.println("      border: none;");
out.println("    }");
out.println("    input:hover {");
out.println("      background-color: white;");
out.println("    }");
out.println("    #editToggle {");
out.println("      display: none;");
out.println("    }");
out.println("    /* -------------------------------------------- */");
out.println("    input[type=\"checkbox\"] {");
out.println("      display: none;");
out.println("    }");
out.println("    input[type=\"checkbox\"]:checked + input[type=\"text\"] {");
out.println("      pointer-events: auto;");
out.println("      background-color: #fff;");
out.println("      border: 1px solid #ccc;");
out.println("      color: #333;");
out.println("    }");
out.println("    button {");
out.println("      display: none;");
out.println("    }");
out.println("    table tr td label{");
out.println("      background-color: #ccc;");
out.println("      border-radius: 10px;");
out.println("      width: 20px;");
out.println("      height: 20px;");
out.println("    }");
out.println("    table tr td label:hover {");
out.println("      background-color: gray;");
out.println("    }");
out.println("    input[type=\"checkbox\"]:checked + input[type=\"text\"] + button {");
out.println("      display: inline-block;");
out.println("    }");
out.println("    /* ---------------------------------------- */");
out.println("  </style>");
out.println("</head>");
out.println("<body>");
out.println("  <section class=\"main\">");
out.println("    <div class=\"profile-card\">");
out.println("      <div class=\"image\">");
out.println("        <img src=\"images/profile.jpg\" alt=\"\" class=\"profile-pic\" />");
out.println("      </div>");
out.println("      <div class=\"data\">");
out.println("        <br />");
out.println("        <br />");
out.println("        <h2>Name</h2>");
out.println("      </div>");
out.println("      <form action='Profile'>");
out.println("        <table>");
out.println("          <tr>");
out.println("            <td>");
out.println("              <span>Name : </span>");
out.println("            </td>");
out.println("            <td>");
out.println("              <span>"+name+"</span>");
out.println("            </td>");
out.println("            <td>");
out.println("              <label for=\"editToggle1\">Edit</label>");
out.println("            </td>");
out.println("            <td class=\"save_btn\">");
out.println("              <input type=\"checkbox\" id=\"editToggle1\" />");
out.println("              <input type=\"text\" id=\"editableField1\" name='name1'/>");
//ResultSet ab1 =  session.SetAttribute("rs");
   


out.println("              <input type='submit' id=\"saveButton1\" name='nbutton' value='change'>");

out.println("            </td>");
out.println("          </tr>");
out.println("          <tr>");
out.println("            <td>");
out.println("              <span>Father :</span>");
out.println("            </td>");
out.println("            <td>");
out.println("              <span>"+fname+"</span>");
out.println("            </td>");
out.println("            <td>");
out.println("              <label for=\"editToggle2\">Edit</label>");
out.println("            </td>");
out.println("            <td class=\"save_btn\">");
out.println("              <input type=\"checkbox\" id=\"editToggle2\" />");
out.println("              <input type=\"text\" id=\"editableField2\" name='fname />");
//out.println("              <button id=\"saveButton2\" name='fbutton'>Save</button>");
out.println("              <button id=\"saveButton2\" name='fbutton'>Save</button>");
out.println("            </td>");
out.println("          </tr>");
out.println("          <tr>");
out.println("            <td>");
out.println("              <span>Email : </span>");
out.println("            </td>");
out.println("            <td>");
out.println("              <span>"+email+"</span>");
out.println("            </td>");
out.println("            <td>");
out.println("              <label for=\"editToggle3\">Edit</label>");
out.println("            </td>");
out.println("            <td class=\"save_btn\">");
out.println("              <input type=\"checkbox\" id=\"editToggle3\" />");
out.println("              <input type=\"text\" id=\"editableField3\" name='email' />");
out.println("              <button id=\"saveButton3\" name='ebutton'>Save</button>");
out.println("            </td>");
out.println("          </tr>");
out.println("          <tr>");
out.println("            <td>");
out.println("              <span>Mobile : </span>");
out.println("            </td>");
out.println("            <td>");
out.println("              <span>"+mob+"</span>");
out.println("            </td>");
out.println("            <td>");
out.println("              <label for=\"editToggle4\">Edit</label>");
out.println("            </td>");
out.println("            <td class=\"save_btn\">");
out.println("              <input type=\"checkbox\" id=\"editToggle4\" />");
out.println("              <input type=\"text\" id=\"editableField4\" name='mob'/>");
out.println("              <button id=\"saveButton4\" name='mbutton'>Save</button>");
out.println("            </td>");
out.println("          </tr>");
out.println("          <tr>");
out.println("            <td>Change Password</td>");
out.println("            <td></td>");
out.println("            <td class=\"save_btn\">");
out.println("              <label for=\"editToggle5\">Edit</label>");
out.println("            </td>");
out.println("            <td>");
out.println("              <input type=\"checkbox\" id=\"editToggle5\" />");
out.println("              <input type=\"text\" id=\"editableField5\" name='pass' />");
out.println("              <button id=\"saveButton5\" name='pbutton'>Save</button>");
out.println("            </td>");
out.println("          </tr>");
out.println("          <tr>");
out.println("            <td>");
out.println("              <a href=\"DashBoard\" class=\"btn\">Home</a>");
out.println("            </td>");
out.println("            <td>");
out.println("              <a href=\"ChangePassword\" class=\"btn\">Change Password</a>");
out.println("            </td>");
out.println("          </tr>");
out.println("        </table>");
out.println("      </form>");
out.println("    </div>");
out.println("  </section>");
out.println("</body>");
out.println("</html>");

        
        
        
        
        
        
        
        
        } catch (SQLException ex) {
            Logger.getLogger(ProfilePage.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
