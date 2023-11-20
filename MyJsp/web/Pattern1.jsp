<%-- 
    Document   : pattern1
    Created on : Oct 12, 2023, 9:53:51 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <%
                int n=5;
                for (int i= n-1; i>=0 ; i--)  
		{  
                    for (int j=0; j<=i; j++)  
                    { 
                %>
			  <%= "*" + " "%> 
                    <%}%>  
                        <%="<br>"%>  
                <%}%>
    </body>
</html>
