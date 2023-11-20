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
public class Series extends HttpServlet {

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
            if (request.getParameter("febo") != null) {
                int i = 1;
                int a = 0, b = 1, c = 0;
                for (i = 1; i <= n; i++) {
                    a = b;
                    b = c;
                    c = a + b;
                    out.print(c + " ");

                }
            } else if (request.getParameter("fact1") != null) {
                int fact = 1, i = 1, sum = 0;
                for (i = 1; i < n; i++) {
                    fact = fact * i;
                    sum += fact;
                    out.print(i + "!+");
                }
                if (i == n) {
                    fact = fact * i;
                    sum += fact;
                    out.println(i + "!");
                }

                out.println("=" + sum);
            } else if (request.getParameter("fact2") != null) {
                int i = 1;
                float sum = 0, fact = 1;
                for (i = 1; i <= n; i++) {
                    fact *= i;
                    if (i % 2 != 0) {
                        sum -= fact / i;
                        out.print("-" + i + "!/" + i);
                    } else {
                        sum += fact / i;
                        out.print(i + "!/" + i);
                    }
                }

                out.print("=" + sum);
            } else if (request.getParameter("fact3") != null) {
                int i = 1, j = 2;
                float sum = 0, fact = 1;

                for (i = 1; i <= n; i++) {
                    fact *= i;
                    if (i % 2 == 0) {
                        sum = sum - (fact / j);
                        out.println(" -" + i + "!/" + j);
                    } else {
                        sum = sum + (fact / j);
                        if (i > 1) {
                            out.println(" + ");
                        }
                        out.println(i + "!/" + j);
                    }

                }
                out.println(" = " + sum);
            }
            
            else if (request.getParameter("fact4") != null)
            {
                int i=1;
		float sum=0,fact=1;
		
		
		for(i=1;i<=n;i++)
		{
			fact*=i;
			if(i%2==0)
			{
				sum = sum - ((i+1)/fact);
				out.println(" -"+(i+1)+"!/"+i);
			}
			else
			{
				sum = sum + ((i+1)/fact);
				if(i>1)
					out.println(" + ");
				out.println((i+1)+"!/"+i);
			}
			
		}
                            out.println(" = "+sum);
            }
              
            
            else if (request.getParameter("fact5") != null)
            {
                int sum = 0,cube=1;
		for(int i =1; i<=n; i++)
		{
			cube=i*i*i;
			sum+=cube;
			if(i<n)
			out.print(cube+" + ");
		}
		out.print(cube+" = "+sum);
            }
            
             else if (request.getParameter("fact6") != null)
             {
//                 out.println("Even number : ");
//                 out.println("<br");
		for(int i = 1;i<=n;i++)
		{
			if(i%2==0)
			{
			  out.print(i+" ");
			}
		}
                out.println("<br");
//		out.println("odd number : ");
		for(int i = 1;i<=n;i++)
		{
			if(i%2!=0)
			{
                            out.print(i+" ");
			}
		}
             }
            else if (request.getParameter("fact7") != null)
            {
                
            
            int i,x=1;
		float fact=1,sum=0;
		for(i=1;i<=n;i++)
		{	
			fact=1;
			for(int j=1;j<=x;j++)
			{
				fact*=j;
			}
			if(i%2==0)
			{
				sum+=fact/x;
				out.println(" + "+x+"!/"+x);
			}
			else
			{
				sum-=fact/x;
				
				out.println(" - "+x+"!/"+x);
			}			
			x+=2;
		}
		out.println(" = "+sum);
            
            

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

