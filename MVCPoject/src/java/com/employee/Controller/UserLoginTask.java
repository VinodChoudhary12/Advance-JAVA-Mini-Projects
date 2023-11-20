package com.employee.Controller;

import com.employee.Model.UserDao;
import com.employee.Model.UserDto;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class UserLoginTask extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) 
        {
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            UserDao udao = new UserDao();
            System.out.println("-----------------1----------------");
            udao.setEmail(email);
            udao.setPassword(password           );

            UserDto udto = new UserDto();

            boolean b = udto.Userlogin(udao);
            HttpSession session = request.getSession();

            session.setAttribute("udao", udao);

            if (b) 
            {
                response.sendRedirect("ProductHomePage.jsp");
            } 
            else {
                response.sendRedirect("UserLogin.jsp");
            }

        }
    }

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
