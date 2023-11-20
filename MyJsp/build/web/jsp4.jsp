<%-- 
    Document   : jsp4
    Created on : Oct 12, 2023, 10:02:54 PM
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
            int n=121;
            int rev=0,sum=0,temp=n;
            
            
            for(;n>0;n/=10){
             int rem=n%10;
             rev=rev*10+rem;
            }
            if(rev==temp)
            {
        %>
        <h3>Palindrom Number</h3>
        <% } else {%>
        <h3>Not Palindrom Number</h3>
        <% } %>
        
    </body>
</html>
