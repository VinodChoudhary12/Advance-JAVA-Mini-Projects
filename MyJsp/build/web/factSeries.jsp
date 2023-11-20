<%-- 
    Document   : serice2
    Created on : Oct 12, 2023, 11:32:26 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            span{
                    font-size: 30px;
                    font-weight: 20px;
                    color: red;
            }
        </style>
    </head>
    <body>
        <span>Netural Number :</span>
        <%
            int i=1,n=10,sum=0;
            for(i=1;i<=n;i++)
            {%>
             <span><%=i+" "%></span>
             <% 
                if(i<n){%>
             <span>+</span>
                 <%
                      sum=sum+i;
                  }
            }%>
               <span><%=(" ="+sum)%></span>
    </body>
</html>
