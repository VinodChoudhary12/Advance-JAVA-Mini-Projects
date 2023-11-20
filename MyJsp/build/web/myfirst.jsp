<%-- 
    Document   : myfirst
    Created on : 13-Oct-2023, 10:10:44 am
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
            int a=3,b=13;
            if(a==b)
            {%>
            <h4> both are Same...</4>
                <%}else{%>
               <h4> both are different...</4>
                   <%}%> 
       
    </body>
</html>
