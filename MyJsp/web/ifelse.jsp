<%-- 
    Document   : ifelse
    Created on : Oct 12, 2023, 10:48:44 PM
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
            int i=2,n=8;
	        while(i<n)
	        {
                    if(n%i==0)
                    {
                         break;
                    }
		    i++;
	        }
		if(i==n)
		{%>
		     <%=(" prime num")%>
		<%}
	        else
		{%>
		     <%=("not a prime num")%>
		<%}%>
    </body>
</html>
