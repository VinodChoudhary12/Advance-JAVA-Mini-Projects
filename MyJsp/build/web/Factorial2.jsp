<%-- 
    Document   : factSeries
    Created on : Oct 12, 2023, 11:01:00 PM
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
        <%
            int i=1;
		double sum=0,fact=1,n=5;
		while(i<=n)
		{
		   fact=fact*i;
		   if(i%2==0)
		   {
		     sum=sum-fact/(i+1);%>
		     <span><%=("!"+i+"/"+(i+1)+"+")%></span>
		   <%}
		   else
		   {
		      sum=sum+fact/(i+1);%>
                      <span><%=("!"+i+"/"+(i+1))%></span>
                      <%
                        if(i<n){%>
                        <span><%=("-")%></span>
                       <%}%>
		   <%}
		   i++;
		}%>
                <span><%=("="+sum)%></span>
    </body>
</html>
