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
public class Power extends HttpServlet {

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
           
            int x = Integer.parseInt(request.getParameter("x"));
            int y = Integer.parseInt(request.getParameter("y"));
            if(request.getParameter("pow1")!=null)
            {
                int i=1;
		int pow=1,sum=0;
                for(i=1;i<=y;i++)
{	
		pow*=x;
	if(i==y){
		sum+=pow;
		out.print(x+"^"+i+"=");}
	else{
		sum+=pow;
		out.print(x+"^"+i+"=");}
}

	out.print(sum);
            }
            
             if(request.getParameter("pow2")!=null)
             {
                 int i=1;
                 float sum=0,pow=1;
		
		for(i=1;i<=y;i++)
{
		pow*=x;
		if(i%2!=0){
		sum-=pow/i;
		out.print("-"+x+"^"+i+"/"+i);}
		else{
		sum+=pow/i;
		out.print("+"+x+"^"+i+"/"+i);}
}
		out.print("="+sum);
             }
              if(request.getParameter("pow3")!=null)
              {
                  int i=1;
                  float pow=1,sum=0;
                  for(i=1;i<=y;i++)
	   {
	   	pow*=x;
	   	sum+=pow/(i+1);
	   	out.print(x+"^"+i+"/"+(i+1));
	   	  if(i<y)
	   	  out.print("+");
	   }
	   	out.print("="+sum);
              }
                  
               if(request.getParameter("pow4")!=null)
               {
                   int i=1,j=2;
		float pow=1,sum=0;
                   for(i=1;i<=y;i++)
		{
			pow = pow*x;
			  
			  if(i%2==0)
			{
				sum-=((i+1)/pow);
				out.print(" - "+(i+1)+"/"+x+"^"+i);
			}
			else 
			{
				sum+=((i+1)/pow);
				if(i>1)
					out.print(" + ");
				out.print((i+1)+"/"+x+"^"+i);
			}	
			
		}
		out.println(" = "+sum);
               }
                if(request.getParameter("pow5")!=null)
                {
                    int i=1;
		float sum=0,pow=1;
                    for(i=1;i<=y;i++)
		{
			pow = pow*x;
			sum=sum +((i+1)/pow);
			
			out.print((i+1)+"/"+x+"^"+i);
			if(i<y)
				out.print(" + ");
	
			
			
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
