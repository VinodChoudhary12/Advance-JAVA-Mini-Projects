<%-- 
    Document   : palindrome
    Created on : Oct 12, 2023, 10:53:13 PM
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
            int  a=0,r=0,n=567;
		int t=n;
		while(n>0)
		{
		   r=n%10;
		   a=a*10+r;
		   n=n/10;
		}  
		  if(t==a)
		  {%>
		     <%=(t+ "  is a palindrom")%>
		  <%}
                else{%>
		  
		  <%=(t+ "  is a not palindrom")%>
               <%}%>
    </body>
</html>
