
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
                        <h3>Admin Log In</h3>
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