<%-- 
    Document   : Armstrong
    Created on : 13-Oct-2023, Oct 12, 2023, 2:29:44 PM
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
        <h3>
            <%
            int n=153,arm=0,num=n,t=0;
            while(n!=0){
                 t=n%10;
                 arm=(t*t*t)+arm;
                 n=(n/10);
                 
              }%>
             <%if(num==arm)
             {%>
             <h4>
                 Number is Armstrong
             </h4>
             <%}else{%>
             <h4>
                 Number is not Armstrong
             </h4>
             <%}%>
                
             
        </h3>
            
    </body>
</html>
