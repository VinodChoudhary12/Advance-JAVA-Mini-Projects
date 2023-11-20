<%-- 
    Document   : Greatest
    Created on : 13-Oct-2023, 12:47:09 am
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>
           <%int a=6,b=4;
            if(a < b)
            {%>
            <h4>"B is Greater then A"</h4>
         <%}
            else if(b < a)
            {%>
             <h4>A is Greater then B</h4>
            <%}
             else
                {%>
                <h4>Both Are Same</h4>
               <%}%> 
                
                    
                
            
            
            
            
        </h3>
        
    </body>
</html>
