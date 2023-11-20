<%-- 
    Document   : jsp6
    Created on : Oct 12, 2023, 11:35:07 PM
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
        <%
            int n=5;
            for(int i=1;i<=n;i++)
            {
            for(int j=1;j<=(i*(2-1));j++)
            {
        
        %>
        <span>*</span>
       
        <% }%>
         <br>
        <% }%>
        
    </body>
</html>
