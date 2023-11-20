<%-- 
    Document   : pattern2
    Created on : Oct 12, 2023, 9:01:50 PM
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
                int i, j,n=5;
                for (i = 1; i <= n; i++) 
		{
                   for (j = 1; j <= n - i; j++)
                   {%>
                        <%=(" ")%>
                   <%}%>
                   <%
                        for (j = 1; j <= i; j++) 
                {%>
                     <%=(i + " ")%>
                <%}%>
                 <%="<br>"%>
                <%}%>
    </body>
</html>
