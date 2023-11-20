/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

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
public class One extends HttpServlet {

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
            int n = Integer.parseInt(request.getParameter("no1"));
            if (request.getParameter("prime") != null) {
                int i, m = 0, flag = 0;

                m = n / 2;
                if (n == 0 || n == 1) {
                    System.out.println(n + " is not prime number");
                } else {
                    for (i = 2; i <= m; i++) {
                        if (n % i == 0) {
                            System.out.println(n + " is not prime number");

                            out.println(n + " is not prime number");
                            flag = 1;
                            break;
                        }
                    }
                    if (flag == 0) {
                        out.println(n + " is prime number");
                    }
                }//end of else  
            } else if (request.getParameter("leap") != null) {
                if (((n % 4 == 0) && (n % 100 != 0)) || (n % 400 == 0)) {
                    out.println(" year is a leap year");
                } else {
                    out.println(" year is not a leap year");
                }
            } else if (request.getParameter("sqr") != null) {
                out.println("Square is " + n * n);
            } else if (request.getParameter("Cube") != null) {
                out.println("Cube is " + n * n * n);
            } else if (request.getParameter("circle") != null) {
                out.println("Cube is " + 3.14 * n * n);
            } else if (request.getParameter("fact") != null) {
                int fact = 1;
                for (int i = 1; i <= n; i++) {
                    fact = fact * i;
                }
                out.println("Factorial Is " + fact);
            } else if (request.getParameter("pali") != null) {

                int rev = 0;
                int c = n;
                for (int i = 1; n > 0; i++) {
                    int rem = n % 10;
                    n = n / 10;
                    rev = rev * 10 + rem;
                }
                if (c == rev) {
                    out.println("The Number Is Palindrom");
                } else {
                    out.println("The Number Is not Palindrom");
                }
            }
            else if(request.getParameter("strong") !=null)
            {
                int sum=0,fact=1,i=1;
		
		int c=n;
		int j=1;
		for(j=1;n>0;j++)
		{
		   int rem=n%10;
		   n=n/10;
		
		     for(i=1,fact=1;i<=rem;i++)
		   {
	
		   fact=fact*i;
		   
		   }
		   sum=sum+fact;
	       }
	       
	          if(c==sum)	   
		     out.println("The Number is Strong Number");
		   else
		     out.println("The Number is not  Strong Number");
            }
            else if(request.getParameter("rev") !=null)
            {
                int rem;
                int reve=0;
                do{
                rem=n%10;
		reve=reve*10+rem;
		n/=10;		
		}while(n>0);
		out.println("Reverse of Geven numer  = "+reve);	
            }

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
