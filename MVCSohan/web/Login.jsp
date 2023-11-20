<%-- Document : Login Created on : 27-Oct-2023, 2:27:36 pm Author : DELL --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.DriverManager"%>
<%@page import =  "java.sql.PreparedStatement"%>
<%@page import =  "java.sql.ResultSet"%>
<%@page import =  "java.sql.SQLException"%>
<%@page import =  "java.sql.Connection"%>


<!DOCTYPE html>
<html>
    <head>
        <title>Login Page</title>
        <!--Made with love by Mutiullah Samim -->

        <!--Bootsrap 4 CDN-->
        <link
            rel="stylesheet"
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
            integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
            crossorigin="anonymous"
            />

        <!--Fontawesome CDN-->
        <link
            rel="stylesheet"
            href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
            integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
            crossorigin="anonymous"
            />

        <!--Custom styles-->
        <link rel="stylesheet" href="assets/css/Login.css" />
    </head>
    <body>
        <!-- ======= Header ======= -->
        <jsp:include page="NavBar.jsp" />
        <!-- End Header -->
        <div class="container">
            <div class="d-flex justify-content-center h-100">
                <div class="card">
                    <div class="card-header">
                        <h3>User Log In</h3>
                    </div>
                    <div class="card-body">
                        <form action="">
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"
                                          ><i class="fas fa-user"></i
                                        ></span>
                                </div>
                                <input
                                    type="text"
                                    class="form-control" 
                                    placeholder="username" name="gmail"
                                    />
                            </div>
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"
                                          ><i class="fas fa-key"></i
                                        ></span>
                                </div>
                                <input
                                    type="password" name="password"
                                    class="form-control"
                                    placeholder="password"
                                    />
                            </div>

                            <input type="submit" class="form-control" value="submit" />
                            <div class="row align-items-center remember">
                                <input type="checkbox" />Remember Me
                            </div>
                        </form>
                    </div>
                    <div class="card-footer">
                        <div class="d-flex justify-content-center links">
                            Don't have an account?<a href="Registration.jsp">Sign Up</a>
                        </div>
                        <div class="d-flex justify-content-center">
                            <a href="#">Forgot your password?</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
<%   
    if(request.getParameter("password")!=null && request.getParameter("password")!="")
    {
    Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con;
             String path = "jdbc:mysql://localhost:3306/Infojava";
            String idpass = "root";
            String sql = "SELECT * FROM servlet WHERE gmail = ? and password = ?";
            try {
                con = DriverManager.getConnection(path, idpass, idpass);
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, request.getParameter("gmail"));
                ps.setString(2, request.getParameter("password"));
                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                    session.setAttribute("rs", rs);
                    response.sendRedirect(request.getContextPath() + "/DashBoard.jsp");
                } else {
                }
                }
                catch (SQLException e) 
                    {
                        //response.sendRedirect(request.getContextPath() + "/Registration.jsp"); 
                          }}
%>