/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Pages;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


/**
 *
 * @author dell
 */
public class Lopage extends HttpServlet {

     public static void processRequest(HttpServletRequest request, HttpServletResponse response, int n)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        boolean flag = true;
        try (PrintWriter out = response.getWriter()) {
            out.print("      <!DOCTYPE html>");
            out.print(" <html>");
            out.print("    <head>");
            out.print("        <title>TODO supply a title</title>");
            out.print("        <meta charset='UTF-8'>");
            out.print("        <meta name='viewport' content='width=device-width, initial-scale=1.0'>");
            out.print("        <style>");
            out.print("            *{");
            out.print("                margin: 0;");
            out.print("                padding: 0;");
            out.print("                box-sizing: border-box;");
            out.print("                font-family: 'Poppins', sans-serif;");
            out.print("            }");
            out.print("            body{");
            out.print("                min-height: 100vh;");
            out.print("                width: 100%;");
            out.print("                background: skyblue;");
            out.print("            }");
            out.print("            .container{");
            out.print("                position: absolute;");
            out.print("                top: 50%;");
            out.print("                left: 50%;");
            out.print("                transform: translate(-50%,-50%);");
            out.print("                max-width: 430px;");
            out.print("                width: 100%;");
            out.print("                background: #fff;");
            out.print("                border-radius: 7px;");
            out.print("                box-shadow: 0 5px 10px rgba(0,0,0,0.3);");
            out.print("            }");
            out.print("            .container .registration{");
            out.print("                display: none;");
            out.print("            }");
            out.print("            #check:checked ~ .registration{");
            out.print("                display: block;");
            out.print("            }");
            out.print("            #check:checked ~ .login{");
            out.print("                display: none;");
            out.print("            }");
            out.print("            #check{");
            out.print("                display: none;");
            out.print("            }");
            out.print("            .container .form{");
            out.print("                padding: 2rem;");
            out.print("            }");
            out.print("            .form header{");
            out.print("                font-size: 2rem;");
            out.print("                font-weight: 500;");
            out.print("                text-align: center;");
            out.print("                margin-bottom: 1.5rem;");
            out.print("            }");
            out.print("            .form input{");
            out.print("                height: 60px;");
            out.print("                width: 100%;");
            out.print("                padding: 0 15px;");
            out.print("                font-size: 17px;");
            out.print("                margin-bottom: 1.3rem;");
            out.print("                border: 1px solid #ddd;");
            out.print("                border-radius: 6px;");
            out.print("                outline: none;");
            out.print("            }");
            out.print("            .form input:focus{");
            out.print("                box-shadow: 0 1px 0 rgba(0,0,0,0.2);");
            out.print("            }");
            out.print("            .form a{");
            out.print("                font-size: 16px;");
            out.print("                color: #009579;");
            out.print("                text-decoration: none;");
            out.print("            }");
            out.print("            .form a:hover{");
            out.print("                text-decoration: underline;");
            out.print("            }");
            out.print("            .form input.button{");
            out.print("                color: #fff;");
            out.print("                background: skyblue;");
            out.print("                font-size: 1.2rem;");
            out.print("                font-weight: 500;");
            out.print("                letter-spacing: 1px;");
            out.print("                margin-top: 1.7rem;");
            out.print("                cursor: pointer;");
            out.print("                transition: 0.4s;");
            out.print("            }");
            out.print("            .form input.button:hover{");
            out.print("                background: #006653;");
            out.print("            }");
            out.print("            .signup{");
            out.print("                font-size: 17px;");
            out.print("                text-align: center;");
            out.print("            }");
            out.print("            .signup label{");
            out.print("                color: #009579;");
            out.print("                cursor: pointer;");
            out.print("            }");
            out.print("            .signup label:hover{");
            out.print("                text-decoration: underline;");
            out.print("            }");
            //            --------------------------------------------
//            if (n == 1) {
//                out.print("      form label {display: block;} ");
//                 label {display: block;} input:focus + label {     display: none;    }
//                n = 0;
            out.print(" ");
//            }
            out.print("    form input:focus  label{     display: none;    }");
            //            --------------------------------------------
            out.print("        </style>");
            out.print("    </head>");
            out.print("    <body>");
            out.print("        <!DOCTYPE html>");
            out.print("    <html lang='en'>");
            out.print("        <head>");
            out.print("            <meta charset='UTF-8'>");
            out.print("            <meta name='viewport' content='width=device-width, initial-scale=1.0'>");
            out.print("            <meta http-equiv='X-UA-Compatible' content='ie=edge'>");
            out.print("            <title>Login & Registration Form</title>");
            out.print("        </head>");
            out.print("        <body>");
            out.print("            <div class='container'>");
            out.print("                <input type='checkbox' id='check'>");
            out.print("                <div class='login form'>");
            out.print("                    <header>Login</header>");
            out.print("                    <form action='LogDataBase'>");
            out.print("                        <input id='inputField' required type='text' placeholder='Enter your email' name='gmail'>");
            out.print(
                    "                        <input id='inputField' required type='password' placeholder='Enter your password' name='password' >");
            out.print("                        <a href='#'>Forgot password?</a>");

//            -----------------------------------------------------------------
            if (n == 1) {
                out.print(" <br> <br> <label for='inputField'>Invalide Id Password </label>");
            }
//            -----------------------------------------------------------------
            out.print("                        <input type='submit' class='button' value='Login'>");
            out.print("                    </form>");
            out.print("                    <div class='signup'>");
            out.print("                        <span class='signup'>Don't have an account?       <a href='RegPage'>SignUp</a>");
            out.print("                        </span>");
            out.print("                    </div>");
            out.print("                </div>");
            out.print("            </div>");
            out.print("        </body>");
            out.print("    </html>");
            out.print("</body>");
            out.print("</html>");

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the
    // + sign on the left to edit the code.">
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
        processRequest(request, response, 0);
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
        processRequest(request, response, 0);
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
