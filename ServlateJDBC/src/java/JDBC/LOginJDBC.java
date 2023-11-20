
import jakarta.servlet.ServletException;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.Connection;

import jakarta.servlet.http.HttpServlet;



import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.logging.Level;
import java.util.logging.Logger;

public class LOginJDBC extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String path = "jdbc:mysql://localhost:3306/Infojava";
            String idpass = "root";
            String sql = "INSERT INTO servlet (name,fname,gmail,mobile,password) values(?,?,?,?,?)";
            try (Connection con = DriverManager.getConnection(path, idpass, idpass)) 
            {
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, request.getParameter("name"));
                ps.setString(2, request.getParameter("fname"));
                ps.setString(3, request.getParameter("gmail"));
                ps.setString(4, request.getParameter("mobile"));
                ps.setString(5, request.getParameter("password"));

                try {
                    if (ps.executeUpdate() > 0) {
                        response.sendRedirect(request.getContextPath() + "/LoginPage");
                    } else {
                        response.sendRedirect(request.getContextPath() + "/Registration");
                    }
                } catch (SQLException e) {
                    System.out.println(e);
                }
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException | ClassNotFoundException ex) {
            System.out.println(ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            System.out.println(ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LOginJDBC.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
