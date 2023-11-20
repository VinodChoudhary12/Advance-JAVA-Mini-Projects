<%-- 
    Document   : jsp9
    Created on : Oct 13, 2023, 12:08:09 AM
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
            if(i==1 || j==1 || i==5 || j==5){
        
        %>
        
        <span>&nbsp;&nbsp;</span>
        <% }else { %>
        <span>*</span>
        <% } %>
        <% } %>
        <br><!-- comment -->
        <% } %>
        

    </body>
</html>
