<%-- 
    Document   : FactorialSeries
    Created on : 13-Oct-2023, Oct 12, 2023, 2:57:55 PM
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
         <%
            int i=1,fact=1,n=12,sum=0;
                for(i=1;i<=n;i++)
               {
                    fact=fact*i;
                    sum=sum+fact;%>
                    <span>
                        <%=sum%>
                    </span>
                    <% if(i<n){%>
                    <span>+</span>
                    <%}%>
                <%}%>
        
        <span>
            <%= "="+sum%>
        </span>
    </body>
</html>
