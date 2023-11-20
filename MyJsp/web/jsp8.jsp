<%-- 
    Document   : jsp8
    Created on : Oct 12, 2023, 11:59:12 PM
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
            
            for(int i=1;i<=5;i++)
            {
            for(int j=1;j<=5;j++)
            {
            if(i==j || i+j=j|| i==1 || j==1 || i==5 || j==5){
        
        %>
        <span>*</span>
        <% }else { %>
        <span>&nbsp;&nbsp;</span>
        <% } %>
        <% } %>
        <br><!-- comment -->
        <% } %>
        
        
    </body>
</html>
