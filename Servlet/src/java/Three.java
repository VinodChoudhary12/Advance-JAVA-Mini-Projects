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
public class Three extends HttpServlet {

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
            int n = Integer.parseInt(request.getParameter("n"));

            if (request.getParameter("right") != null) {
                for (int i = 1; i <= n; i++) {
                    for (int j = 1; j <= i; j++) {
                        out.println("*");
                    }
                    out.println("<br>");
                }
            } else if (request.getParameter("angle") != null) {
                for (int i = 1; i <= n; i++) {
                    for (int j = 1; j <= n; j++) {
                        if (j == 1 || i == j || i == n) {
                            out.println("* ");
                        } else {
                            out.println(" ");
                        }

                    }
                    out.println("<br>");
                }
            } else if (request.getParameter("pira") != null) {
                for (int i = 1; i <= n; i++) {
                    for (int j = n; j >= 1; j--) {
                        if (i >= j) {
                            out.print("*");
                        } else {
                            out.print("  ");
                        }

                    }
                    out.println("<br>");
                }

            } else if (request.getParameter("nump") != null) {
                for (int i = 1; i <= n; i++) {
                    int k = 1;
                    for (int j = 1; j <= ((n * 2) - 1); j++) {

                        if (j >= 6 - i && j <= 4 + i) {
                            out.print("  " + k + " ");
                            int x = (j < 5 ? k++ : k--);
                        } else {
                            out.print("   ");
                        }
                    }
                    out.println("<br>");

                }
            }
            else if(request.getParameter("str")!=null)
            {
                //This Is Not Working
                int i=1,j=1,k=0;;
	    for(i=1;i<=9;i++)
	  {  
	   	int x=(i<=5?k++:k--);
	   	
	  
	      for(j=1;j<=10;j++)
	     {
	        if(j<=(2*k-1))
	        out.println("* ");
	    
	        else
	        out.println(" ");
	     }
	        out.println("<br>");
	   }
            }
            
            else if (request.getParameter("onethreefive") != null)
            {
                int i=2,j=1;
	 for(i=1;i<=n;i++)
	 {
	   for(j=1;j<=n*2;j++)
	   {
	    if(j<=(2*i-1))
	    out.println("* ");
	    else
	     out.println(" ");
	     }
	     out.println("<br>");
	    }
            }
            else if (request.getParameter("three") != null)
            {
                int i=n,j=n,k=n;
		
		for(i=n;i>=1;i--)
		{
		  for(k=n;k>i;k--)
		  {
		   System.out.print(" ");
		  }
		  for(j=i;j>=1;j--){
		   out.println(j);}
		   out.println("<br>");
		  }
            }
            else if (request.getParameter("abcd") != null)
            {
                for(int i=0;i<=n;i++)
		{
			for(int j=0;j<=i;j++)
			{
					char letter = (char) ('A' + i);
					out.print(letter + " ");
					
			}
				//else
					//System.out.print("   ");
			out.println("<br>");
		}
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
