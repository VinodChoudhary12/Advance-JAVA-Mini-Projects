<%-- 
    Document   : LogOut
    Created on : 25-Oct-2023, 9:20:10 pm
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.setAttribute("rs", null);
            session.invalidate();
            response.sendRedirect(request.getContextPath() + "/index.jsp");
%>
