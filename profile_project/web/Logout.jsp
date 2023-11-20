<%-- 
    Document   : Logout
    Created on : Oct 26, 2023, 8:08:46 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

    </body>
</html>
<%  try{

                session.setAttribute("email", null);
                session.invalidate();
                response.sendRedirect("Login.jsp");
            }
            catch(Exception e)
            {
                out.println(""+e);
            }
  %>