<%-- 
    Document   : Login
    Created on : Oct 25, 2023, 10:27:23 PM
    Author     : Dell
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.DriverManager"%>
<%@page import =  "java.sql.PreparedStatement"%>
<%@page import =  "java.sql.ResultSet"%>
<%@page import =  "java.sql.SQLException"%>
<%@page import =  "java.sql.Connection"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body style=" background-color:teal;">
    <div style=' width: 400px; height: 450px; margin: auto; margin-top: 80px; border:1px solid white;   background-color:rgb(0,0,0,0.3);'>
    <form action='' style=color: white;>
    <caption ><h2 style='text-align:center; margin-bottom: 55px; margin-top: 35px;color: white;'> LOGIN </h2></caption>
    <label for='' style='margin-left:25px;padding-top:10px;font-size:20px;color: white;'>Email</label><br>
    <input required type='email' name='email' style='width: 340px;height: 35px; border-color:white; background-color: transparent; margin-top: 5px;margin-left: 25px;color:white'>
    <br><br>
    <label for='' style='margin-left: 25px;font-size: 20px;color: white;'>Password</label>
    <br>
    <input required type='password'name='password' style='width: 340px;height: 35px; border-color:white; background-color: transparent; margin-top: 5px;margin-left: 25px;; color:white'>
   
    <br><br>
    <input type='submit' value='LOGIN' style='width: 300px;height: 35px;  color:white ; margin-left: 45px;margin-top: 50px; background-color: teal;'>
    </form>
    <form action='RegisterTask.jsp'>
     <input  type='submit'value='NEW USER'style='width: 300px;height: 35px;  margin-left: 45px; margin-top: 15px;'>
    </form>
    </form>
    </body>
    </html>
    </body>
</html>
<%  
  String email = request.getParameter("email");
 String password = request.getParameter("password");
if(email !=null){
try {

    Class.forName("com.mysql.cj.jdbc.Driver");
    
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webproject2", "root", "root");
    PreparedStatement ps = con.prepareStatement("select * from registration2 where email=? and password=?");
   
    ps.setString(1, email);
    ps.setString(2, password);
    ResultSet rs = ps.executeQuery();
    if (rs.next()) {

//         out.println(""+rs.getString("email"));
          session.setAttribute("email", rs.getString("email"));
          session.setAttribute("rs", rs);
          response.sendRedirect("webpage1.jsp");
       
    }
    
    
} catch (Exception e) {
    out.println(" " + e);
}
}
%>
