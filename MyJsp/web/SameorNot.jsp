<%-- 
    Document   : samejsp1
    Created on : Oct 12, 2023, 11:06:10 PM
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
                int a=3,b=7;
                if(a==b){
            %>
            <h4>Both are same </h4>
            <%}else{ %>
            <h4>Both are not same </h4>
            <% } %>
    </body>
</html>
