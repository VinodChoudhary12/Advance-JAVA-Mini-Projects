<%-- 
    Document   : jsp5
    Created on : Oct 12, 2023, 10:27:33 PM
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
            int n=154;
            int temp=n,c=0,sum=0;
            for(;n>0;n/=10)
            {
                c++;
            }
            n=temp;
            for(;temp>0;temp/=10)
            {
                int rem=temp%10;
                int pow=1;
                for(int i=1;i<=c;i++)
                {
                  pow=pow*rem;
                }
                sum=sum+pow;
            }
            if(n==sum)
            {
            
        %>

        <h3>Armstrong Number</h3>
                <%} else { %>
        
        <h3> Not Armstrong Number</h3>        
        <% } %>
    </body>
</html>
