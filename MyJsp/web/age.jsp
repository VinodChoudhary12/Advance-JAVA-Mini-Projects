<%-- 
    Document   : age
    Created on : Oct 12, 2023, 9:24:10 PM
    Author     : dell
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
            int age=9;
            %>
            <h4><%="Age is" + age %></h4>
       
            <%
                if(age<18){
                %>
                <h4>You Can Note Vote</h4>
               <%} else{ %> 
               <h4>You Are eligible to voting</h4>
               
            
            
       
        
        
        
        
    </body>
</html>
