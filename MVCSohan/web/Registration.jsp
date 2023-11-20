<%-- Document : Registration Created on : 27-Oct-2023, 2:47:23 pm Author : DELL
--%> <%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.PreparedStatement"%> 
<%@page import = "java.sql.ResultSet"%> 
<%@page import = "java.sql.SQLException"%> 
<%@page import = "java.sql.Connection"%>
<%@page import = "java.sql.DriverManager"%> 

<!--Made by sohan-->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>JSP Page</title>
        <link rel="stylesheet" href="Restration.css" />
        <style>
            .bg-color {
                background-color: #f9fbfd;
                font-family: Arial, Helvetica, sans-serif;
            }
            .btn-rounded {
                border-radius: 30px;
            }
        </style>

        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
            crossorigin="anonymous"
            />
    </head>

    <body class="bg-color">
        <!-- ======= Header ======= -->
        <div>
            <jsp:include page="NavBar.jsp" />
        </div>
        <!-- End Header -->
        <section class="container mt-5" style="padding-top: 40px">
            <div class="row justify-content-md-center">
                <form class="col-md-6 col-sm-12 bg-white p-5 rounded shadow" action="" onsubmit="return validate()">
                    <div class="col-12 text-center">
                        <h3 class="text-primary"><strong>Register Now</strong></h3>
                    </div>
                    <div class="mb-3">
                        <label for="Name" class="form-label">Your Name *</label>
                        <input type="text" class="form-control" id="Name" name="uname" onkeyup="usernamevalidate()" required/>
                        <div id="nameError"></div>
                    </div>
                    <div class="mb-3">
                        <label for="Name" class="form-label">Father Name *</label>
                        <input type="text" class="form-control" id="FName" name="fname" onkeyup="fathervalidate()" required/>
                        <div id="fnameError"></div>
                    </div>
                    <div class="mb-3">
                        <label for="Email" class="form-label">Email Id *</label>
                        <input type="email" class="form-control" id="email" name="gmail" onkeyup="emailvalidate()" required/>
                        <div id="gmailError"></div>
                    </div>
                    <div class="mb-3">
                        <label for="Mobile" class="form-label">Mobile Number *</label>
                        <input type="tel" class="form-control" id="Mobile" name="mobile" maxlength="10" onkeyup="mobilevalidate()" required/>
                        <div id="mobileError"></div>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password *</label>
                        <input type="password" class="form-control" id="password" name="password" onkeyup ="passvalidate()" required/>
                        <div id="passwordError"></div>
                    </div>
                    <div class="mb-3">
                        <label for="confirm_password" class="form-label"
                               >Confirm Password *</label
                        >
                        <input type="password" class="form-control" id="confirm_password"  onkeyup ="cpassValidate()" required/>
                        <div id="cpasswordError"></div>
                    </div>

                    <div class="text-center mt-3">
                        <button type="submit" class="btn btn-primary btn-rounded w-75" id="btn">
                            Register Now
                        </button>
                    </div>
                    <div class="mb-3 text-center text-secondary mt-3">
                        Have already an account? <a href="Login.jsp">Login Now</a>
                    </div>
                </form>
            </div>
        </section>
    </body>
</html>

<script>
    function validate() {
        var username = usernamevalidate();
        var father = fathervalidate();
        var mobile = mobilevalidate();
        var email = emailvalidate();
        var pass = passvalidate();
//                var cpass = cpassvalidate();
        var btn = document.getElementById("btn");
        var passmatch = PassMatch();

        if (!username || !father || !mobile || !email || !pass || !passmatch) {
//            btn.style.
            btn.disabled = true;
            return false;
        } else
        {
            btn.disabled = false;
        }
    }
    function usernamevalidate() {
        var username = document.getElementById("Name");
        var udisplay = document.getElementById("nameError");
        if (username.value.trim() === "") {
            udisplay.innerHTML = "Username Required";
            udisplay.style.color = "red";
            return false;
        } else {
            var reg = /^[A-Z  a-z_]+$/;
            if (reg.test(username.value)) {
                udisplay.innerHTML = "";
                return true;
            } else {
                udisplay.innerHTML = "Invalid Name";
                udisplay.style.color = "red";
                return false;
            }
        }
    }
    function fathervalidate() {
        var father = document.getElementById("FName");
        var fdisplay = document.getElementById("fnameError");
        if (father.value.trim() === "") {
            fdisplay.innerHTML = "Father name Required";
            fdisplay.style.color = "red";
            return false;
        } else {
            var reg = /^[A-Z  a-z]+$/;
            if (reg.test(father.value)) {
                fdisplay.innerHTML = "";
                return true;
            } else {
                fdisplay.innerHTML = "Invalid Father Name";
                fdisplay.style.color = "red";
                return false;
            }
        }
    }
    function mobilevalidate() {
        var mobile = document.getElementById("Mobile");
        var mdisplay = document.getElementById("mobileError");
        if (mobile.value.trim() === "") {
            mdisplay.innerHTML = "Mobile Number Required";
            mdisplay.style.color = "red";
            return false;
        } else {
//                    var reg = /^[0-9]+$/;
            var reg = /^\d{10}$/;
            if (reg.test(mobile.value)) {
                mdisplay.innerHTML = "";
                return true;
            } else {
                mdisplay.innerHTML = "Invalid Mobile Number";
                mdisplay.style.color = "red";
                return false;
            }
        }
    }
    function emailvalidate() {
        var email = document.getElementById("email");
        var edisplay = document.getElementById("gmailError");
        if (email.value.trim() === "") {
            edisplay.innerHTML = "Email Id Required";
            edisplay.style.color = "red";
            return false;
        } else {
            // var reg = /^[a-z]+$/;
            var reg = /^[a-z0-9.]+@[a-z0-9.]+\.[a-z]{2,4}$/;
            if (reg.test(email.value)) {
                edisplay.innerHTML = "";
                return true;
            } else {
                edisplay.innerHTML = "Invalid Email id";
                edisplay.style.color = "red";
                return false;
            }
        }
    }
    function passvalidate() {
        var pass = document.getElementById("password");
        var pdisplay = document.getElementById("passwordError");
        if (pass.value.trim() === "") {
            pdisplay.innerHTML = "Password Required";
            pdisplay.style.color = "red";
            return false;
        } else {
            pdisplay.innerHTML = "";
            return true;
        }
    }
    function cpassValidate() {
        var cpass = document.getElementById("confirm_password");
        var cpdisplay = document.getElementById("cpasswordError");

        if (cpass.value.trim() === "") {
            cpdisplay.innerHTML = "Password Required";
            pdisplay.style.color = "red";
            return false;
        } else {
            cpdisplay.innerHTML = "";
            return true;
        }
    }
</script>

<% 
            if(request.getParameter("uname")!=null) 
            {
                Class.forName("com.mysql.cj.jdbc.Driver");
                String path ="jdbc:mysql://localhost:3306/Infojava"; 
                String idpass = "root"; String sql ="INSERT INTO servlet (name,fname,gmail,mobile,password) values(?,?,?,?,?)"; 
                try(Connection con = DriverManager.getConnection(path, idpass, idpass)) 
                {
                    PreparedStatement ps = con.prepareStatement(sql); 
                    ps.setString(1,request.getParameter("uname"));
                    ps.setString(2, request.getParameter("fname"));
                    ps.setString(3, request.getParameter("gmail"));
                    ps.setString(4,request.getParameter("mobile")); 
                    ps.setString(5, request.getParameter("password"));
                    try { 
                        if (ps.executeUpdate() > 0) 
                        {
                            response.sendRedirect(request.getContextPath() + "/Login.jsp"); 
                        } else {
                            response.sendRedirect(request.getContextPath() + "/Registration.jsp");
                        } 
                    }
                    catch (SQLException e) 
                    {
                        //response.sendRedirect(request.getContextPath() + "/Registration.jsp"); 
                          }
                }  
                
            } 
%>