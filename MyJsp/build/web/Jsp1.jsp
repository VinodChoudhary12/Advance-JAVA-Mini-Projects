<%-- 
    Document   : jsp1
    Created on : Oct 12, 2023, 7:51:50 PM
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
            int a=10,b=10;
            if(a==b){
            out.println(a);
        %>
        <h1>Both are same......</h1>
        <% }else {%>
          <h1>Both are Different......</h1>
        <%  }%>
    </body>
</html>
