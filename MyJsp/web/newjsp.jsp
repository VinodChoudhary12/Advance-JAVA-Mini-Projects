<%-- 
    Document   : newjsp
    Created on : Oct 12, 2023, 1:00:49 PM
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
             for(int j=1; j<=i;j++){
        %>
         <span style="color: black; font-size: 30px;">*</span>
   
        <% }%>
        <br>
        <% } %>
    </body>
</html>
