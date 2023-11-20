<%-- Document : DashBoard Created on : 25-Oct-2023, 2:15:17 am Author : DELL
--%> 
<%@page import = "java.sql.DriverManager"%>
<%@page import =  "java.sql.PreparedStatement"%>
<%@page import =  "java.sql.ResultSet"%>
<%@page import =  "java.sql.SQLException"%>
<%@page import =  "java.sql.Connection"%>
<%@page contentType="text/html"
        pageEncoding="UTF-8"%> 
<% response.setHeader("Cache-Control", "No-Cache");
response.setHeader("Cache-Control", "No-Store"); 
ResultSet rs =(ResultSet)session.getAttribute("rs"); 
if(rs!=null){%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="UTF-8" />
        <title>Sticky Navigation Bar</title>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
            crossorigin="anonymous"
            />
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"
        ></script>
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
            />
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
            rel="stylesheet"
            />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
            integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                text-decoration: none;
            }
            #head {
                width: 100%;
                padding: 10px;
                background: grey;
                display: flex;
                align-items: center;
                justify-content: center;
                font-family: "Ubuntu", sans-serif;
            }
            #head div {
                font-size: 20px;
                color: white;
            }
            nav {
                top: 0;
                left: 0;
                width: 100%;
                height: 80px;
                padding: 15px;
                background: gray;
                position: sticky;
                font-family: "Ubuntu", sans-serif;
            }
            .nav-content {
                height: 100%;
                margin: auto;
                display: flex;
                align-items: center;
                justify-content: space-between;
                /*background: yellow;*/
            }
            .logo a {
                font-weight: 500;
                font-size: 25px;
                color: white;
            }
            .nav-links {
                width: 60%;
            }
            .nav-content .nav-links {
                display: flex;
            }
            .nav-content .nav-links li {
                list-style: none;
                margin: 8px;
                margin-left: 80px;
                margin-top: 40px;
            }
            .nav-links li a {
                text-decoration: none;
                color: white;
                font-size: 18px;
                font-weight: 500;
                padding: 10px 4px;
            }
            /* .ze: 18px;} */
            .nav-links li a:hover {
                color: black;
            }
            #section_one {
                height: 500px;
                width: 100%;
                display: flex;
                justify-content: space-evenly;
                align-items: center;
            }
            #section_one_one,
            #section_one_two,
            #section_one_three {
                height: 450px;
                width: 33%;
                background-color: whitesmoke;
            }
            .card {
                background-color: #fff;
                border-radius: 18px;
                box-shadow: 1px 1px 8px 0 grey;
                margin-bottom: 20px;
                padding: 20px 0 20px 50px;
            }

            .card table {
                border: none;
                font-size: 16px;
                height: 270px;
                width: 80%;
            }

            footer {
                width: 100%;
                background: gray;
            }
            .content {
                width: 100%;
                padding: 20px;
                display: flex;
                /* flex-wrap: wrap; */
                justify-content: space-between;
            }
            .content p,
            a {
                color: #fff;
            }
            .left_box {
                width: 33%;
                display: flex;
                flex-direction: column;
            }
            .left_box p {
                width: 80%;
            }
            .middle_box {
                width: 33%;
                display: flex;
                flex-direction: column;
            }
            .right_box {
                width: 33%;
                display: flex;
                flex-direction: column;
            }
            .content .topic {
                font-size: 22px;
                font-weight: 600;
                color: #fff;
                margin-bottom: 16px;
            }
            footer .content .lower i {
                padding-right: 16px;
            }
            #text_sub {
                height: 43px;
                width: 50%;
                font-size: 20px;
            }
            #sent_btn {
                height: 43px;
                width: 20%;
                font-size: 20px;
            }
            footer .content .media-icons a {
                font-size: 16px;
                width: 45px;
                display: inline-block;
                text-align: center;
                line-height: 43px;
                border: 2px solid #222222;
                margin: 30px 5px;
            }
            .content .media-icons a:hover {
                border-color: white;
            }
            footer .bottom {
                width: 100%;
                text-align: right;
                color: #d9d9d9;
                padding: 0 40px 5px 0;
            }
            footer .bottom a {
                color: #eb2f06;
            }
            footer a:hover {
                color: black;
            }
        </style>

    </head>
    <body>
        <nav>
            <div class="nav-content">
                <div class="logo">
                    <a href="#">My Dash Board</a>
                </div>
                <ul class="nav-links">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Gallery</a></li>
                    <li><a href="#">Contact</a></li>
                    <li>
                        <a
                            class="btn"
                            data-bs-toggle="offcanvas"
                            href="#offcanvasExample"
                            role="button"
                            aria-controls="offcanvasExample"
                            >
                            <i class="fa-solid fa-user"></i>
                        </a>
                        <div
                            class="offcanvas offcanvas-start"
                            tabindex="-1"
                            id="offcanvasExample"
                            aria-labelledby="offcanvasExampleLabel"
                            >
                            <div class="offcanvas-header">
                                <h5 class="offcanvas-title" id="offcanvasExampleLabel">
                                    My Profile
                                </h5>
                                <button
                                    type="button"
                                    class="btn-close text-reset"
                                    data-bs-dismiss="offcanvas"
                                    aria-label="Close"
                                    ></button>
                            </div>
                            <div class="offcanvas-body">
                                <h2>IDENTITY</h2>
                                <div class="card">
                                    <div class="card-body">
                                        <form action="">
                                            <table>
                                                <tbody>
                                                    <tr>
                                                        <td>Name</td>
                                                        <td>:</td>
                                                        <td>
                                                            <input
                                                                type="text"
                                                                value="<%= rs.getString(1) %>"
                                                                id="Myname"
                                                                disabled
                                                                name ="Myname"
                                                                />
                                                            <div id="udisplay"></div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Father</td>
                                                        <td>:</td>
                                                        <td>
                                                            <input
                                                                type="text"
                                                                value="<%= rs.getString(2) %>"
                                                                id="father"
                                                                disabled
                                                                name ="father"
                                                                />
                                                            <div id="fdisplay"></div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Mobile</td>
                                                        <td>:</td>
                                                        <td>
                                                            <input
                                                                type="text"
                                                                value="<%= rs.getString(4) %>"
                                                                id="mobile"
                                                                disabled
                                                                name="mobile"
                                                                />
                                                            <div id="mdisplay"></div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Email</td>
                                                        <td>:</td>
                                                        <td>
                                                            <input
                                                                type="text"
                                                                value="<%= rs.getString(3) %>"
                                                                id="email"
                                                                disabled
                                                                name="email"
                                                                />
                                                            <div id="edisplay"></div>
                                                        </td>
                                                    </tr>
                                                    <tr style="display: none" id="btn">
                                                        <td><input type="submit" value="Save" /></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </form>
                                        <button id="enableButton">Edit</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--<a href="#"><i class="fa-solid fa-user"></i></a>-->
                    </li>
                    <li>
                        <a href="LogOut.jsp"
                           > <i
                                class="fa-solid fa-right-from-bracket"
                                name="logout"
                                value="logout"
                                ></i
                            ></a>
                    </li>
                </ul>
            </div>
        </nav>

        <section id="section_one">
            <div id="section_one_one"></div>
            <div id="section_one_two"></div>
            <div id="section_one_three"></div>
        </section>
        <footer>
            <div class="content">
                <div class="left_box">
                    <div class="upper">
                        <div class="topic">About us</div>
                        <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae
                            illo nihil porro magnam quod explicabo nisi expedita dolores aut
                            perspiciatis!
                        </p>
                    </div>
                    <div class="lower">
                        <div class="topic">Contact us</div>
                        <div class="phone">
                            <a href="#"><i class="fas fa-phone-volume"></i>+007 9089 6767</a>
                        </div>
                        <div class="email">
                            <a href="#"><i class="fas fa-envelope"></i>abc@gmail.com</a>
                        </div>
                    </div>
                </div>
                <div class="middle_box">
                    <span class="topic">Our Services</span><br />
                    <span><a href="#">Web Design, Development</a></span> <br />
                    <span><a href="#">Web UX Design, Reasearch</a></span> <br />
                    <span><a href="#">Web User Interface Design</a></span> <br />
                    <span><a href="#">Theme Development, Design</a></span> <br />
                    <span><a href="#">Mobile Application Design</a></span> <br />
                    <span><a href="#">Wire raming & Prototyping</a></span> <br />
                </div>
                <div class="right_box">
                    <div class="topic">Subscribe us</div>
                    <form action="#">
                        <input
                            id="text_sub"
                            type="text"
                            placeholder="Enter email address"
                            />
                        <input id="sent_btn" type="submit" name="" value="Send" />
                        <div class="media-icons">
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="https://www.instagram.com/sohan_maali1/" target="_blank"
                               ><i class="fab fa-instagram"></i
                                ></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-youtube"></i></a>
                            <a
                                href="https://www.linkedin.com/in/sohan-un-6b3795282"
                                target="_blank"
                                ><i class="fab fa-linkedin-in"></i
                                ></a>
                        </div>
                    </form>
                </div>
            </div>
            <div class="bottom">
                <p>
                    Copyright © 2023 <a href="#">My Dash Board</a> All rights reserved
                </p>
            </div>
        </footer>
        <script>
            var Myname = document.getElementById("Myname");
            var father = document.getElementById("father");
            var mobile = document.getElementById("mobile");
            var email = document.getElementById("email");
            var btn = document.getElementById("btn");
            var enableButton = document.getElementById("enableButton");
            enableButton.addEventListener("click", () => {
                Myname.disabled = false;
                father.disabled = false;
                mobile.disabled = false;
                email.disabled = false;
                btn.style.display = "inline";
                enableButton.style.display = "none";
            });
        </script>

        <script>
            //        --------------------------------------------
            function validate() {
                var username = usernamevalidate();
                var father = fathervalidate();
                var mobile = mobilevalidate();
                var email = emailvalidate();
//                var pass = passvalidate();
//                var cpass = cpassvalidate();
                if (!username || !father || !mobile || !email) {
                    return false;
                }
            }
            function usernamevalidate() {
                var username = document.getElementById("Myname");
                var udisplay = document.getElementById("udisplay");
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
                        return false;
                    }
                }
            }
            function fathervalidate() {
                var father = document.getElementById("father");
                var fdisplay = document.getElementById("fdisplay");
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
                        return false;
                    }
                }
            }
            function mobilevalidate() {
                var mobile = document.getElementById("mobile");
                var mdisplay = document.getElementById("mdisplay");
                if (mobile.value.trim() === "") {
                    mdisplay.innerHTML = "Mobile Number Required";
                    mdisplay.style.color = "red";
                    return false;
                } else {
                    var reg = /^[0-9]+$/;
                    if (reg.test(mobile.value)) {
                        mdisplay.innerHTML = "";
                        return true;
                    } else {
                        mdisplay.innerHTML = "Invalid Mobile Number";
                        return false;
                    }
                }
            }
            function emailvalidate() {
                var email = document.getElementById("email");
                var edisplay = document.getElementById("edisplay");
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
                        return false;
                    }
                }
            }
// -------------------------------
        </script>

    </body>
</html>
<% }else { response.sendRedirect(request.getContextPath() + "/index.jsp"); }
%> 
<% 
    if(request.getParameter("Myname")!=null)
    {
        request.getParameter("Myname");
        Class.forName("com.mysql.cj.jdbc.Driver");
        String path = "jdbc:mysql://localhost:3306/Infojava";
        String idpass ="root";
              Connection con;
            String sql;
            try {
                con = DriverManager.getConnection(path,idpass, idpass);
                PreparedStatement ps;
                sql = "UPDATE servlet SET name =  ?,fname =  ?,gmail =?, mobile =? WHERE  gmail =  ? ";
                ps = con.prepareStatement(sql);
                ps.setString(1, request.getParameter("Myname"));
                ps.setString(2, request.getParameter("father"));
                ps.setString(3, request.getParameter("email"));
                ps.setString(4, request.getParameter("mobile"));
                ps.setString(5, rs.getString("gmail"));
                try {
                    if (ps.executeUpdate() > 0) {
                        sql = "SELECT * FROM servlet WHERE gmail = ?";
                     PreparedStatement  ps1 = con.prepareStatement(sql);
                        ps1.setString(1, request.getParameter("email"));
                        
                        rs=null;
                        
                        rs = ps1.executeQuery();
                        rs.next();
                        session.setAttribute("rs", rs);
                       
                        response.sendRedirect(request.getContextPath() + "/DashBoard.jsp");
                    } else {
                            response.sendRedirect(request.getContextPath() + "/Login.jsp");
                    }
                } catch (SQLException e) {
                System.out.println(e);
                   response.sendRedirect("/RegistrationPage.jsp");
                }
            }
            catch(Exception ee)
            {
              System.out.println(ee);
}
}
%>