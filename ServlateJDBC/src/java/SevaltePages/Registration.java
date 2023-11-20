/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package SevaltePages;

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
public class Registration extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
             out.println("<form action='Rgistration'>");
            out.println("<center>");
            out.println("<table bgcolor='skyblue'>");
                out.println("<tr>");
                    out.println("td>");
                       out.println("<h4>Enter The Name :</h4>");
                    out.println("</td>");
                    out.println("<td>");
                        out.println("<input type='text' pattern='[A-Za-z]+'  name='name'>");
                    out.println("</td>");
                out.println("</tr>");
                
                out.println("<tr>");
                    out.println("<td>");
                       out.println("<h4>Enter Father Name :</h4>");
                    out.println("</td>");
                    out.println("<td>");
                        out.println("<input type='text' pattern='[A-Za-z]+' name='fname'>");
                    out.println("</td>");
                out.println("</tr>");
                out.println("<tr>");
                    out.println("<td>");
                       out.println("<h4>Enter The EMAIL :</h4>");
                    out.println("</td>");
                    out.println("<td>");
                        out.println("<input type='email'  name='email'>");
                    out.println("</td>");
                out.println("</tr>");
                out.println("<tr>");
                    out.println("<td>");
                       out.println("<h4>Enter The PASSWORD :</h4>");
                    out.println("</td>");
                    out.println("<td>");
                        out.println("<input type='password'  name='password'>");
                    out.println("</td>");
                out.println("</tr>");
                out.println("<tr>");
                    out.println("<td>");
                       out.println("<h4>Enter The Mobile :</h4>");
                    out.println("</td>");
                    out.println("<td>");
                        out.println("<input type='text'  name='mobile'>");
                    out.println("</td>");
                out.println("</tr>");
                out.println("<tr>");
                    out.println("<td>");
                        out.println("<input type='submit'  value='REGISTER' name='Register'>");
                    out.println("</td>");
                out.println("</tr>");
                
            out.println("</table>");
            out.println("</center>");
        out.println("</form>");
        
        out.println("<br><br><br>");
        out.println("<form action='Rgistration'>");
            out.println("<center>");
            out.println("<table align='center'>");
                out.println("<tr>");
                    out.println("<td>");
                        out.println("<input type=submit value='Show All Members Details' name='select'>");
                    out.println("</td>");
                out.println("</tr>");
            out.println("</table>");
                out.println("</center>");
            
        out.println("</form>");
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
        processRequest(request, response);
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
        processRequest(request, response);
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
