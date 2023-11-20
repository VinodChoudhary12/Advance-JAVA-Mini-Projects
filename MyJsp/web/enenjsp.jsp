<%-- 
    Document   : enenjsp
    Created on : Oct 12, 2023, 9:55:02 PM
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
            int a=5;
            if(a%2==0)
            {
        %>
        <h4>Number is Even </h4>
            <%}else{ %>
            <h4>Number is odd </h4>
            <% } %>
    </body>
</html>
