<%-- 
    Document   : NavBar
    Created on : 29-Oct-2023, 5:43:29 pm
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- basic -->
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!-- mobile metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta name="viewport" content="initial-scale=1, maximum-scale=1" />
        <!-- site metas -->
        <title>Admin Pannel</title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <!--*****************-->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <!--*****************-->
        <!-- -------------------CDN PATH BOOT------------------------------- -->
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
        <script
            src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
            integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
            crossorigin="anonymous"
        ></script>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
            integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
            crossorigin="anonymous"
        ></script>
        <!-- -------------------------------------------------- -->
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
            integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
        <!-- <link rel="stylesheet" href="css/bootstrap.min.css" /> -->
        <!-- site css -->
        <link rel="stylesheet" href="assets/css/AdminCss.css" />
        <!-- responsive css -->
        <link rel="stylesheet" href="css/responsive.css" />
        <style>
            * {
    margin: 0;
    padding: 0;
    outline: none !important;
}

html,
body {
    color: #898989;
    font-size: 14px;
    font-family: "Poppins", sans-serif;
    line-height: normal;
    font-weight: 300;
    overflow-x: hidden !important;
}

.container {
    width: 1200px;
}

.section_padding {
    padding: 80px 0 100px;
}

.layout_2_padding {
    padding: 100px 0 80px;
}

.full {
    width: 100%;
    float: left;
}

/*==============
    - topbar 
==============*/

.topbar {
    position: fixed;
    width: 100%;
    padding-left: 20px;
    z-index: 2;
    background: #15283c;
    top: 0;
    /* transition: ease all 0.3s; */
    left: 0;
}

#sidebar.active + #content .topbar {
    padding-left: 90px;
}

.topbar .navbar {
    margin: 0;
}

.right_topbar {
    float: right;
    padding: 0;
}

.icon_info {
    float: left;
    width: 100%;
}

.icon_info ul {
    float: left;
    width: auto;
    list-style: none;
    margin: 0;
}

.icon_info ul li {
    float: left;
    width: 35px;
    height: 35px;
    border-radius: 100%;
    text-align: center;
    line-height: 35px;
    position: relative;
    margin: 15px 0 0 5px;
}
.menuicon {
    margin-left: 5%;
}
#search {
    margin-left: -15%;
}
.menuicon {
    margin-left: 5%;
}
#search {
    margin-left: -15%;
}
.offcanvas {
    background-color: blueviolet;
}
ul {
    list-style: none;
}
ul li {
    margin-top: 20px;
}
ul li a {
    text-decoration: none;
    color: white;
    font-weight: 500;
    margin-top: 15px;
}
ul li a:hover {
    text-decoration: none;
    color: goldenrod;
    font-weight: 500;
    margin-top: 15px;
}

.bottom_sidebar ul li {
    float: left;
    width: 50%;
    list-style: none;
}

#content {
    width: 100%;
    min-height: 100vh;
    /* transition: ease all 0.3s; */
    position: relative;
    padding: 60px 1px 1px 50px;
    background: #f8f8f8;
}

.page_title {
    background: #fff;
    margin-top: 0;
    margin-bottom: 30px;
    padding: 25px 35px 22px 38px;
    box-shadow: 1px 0 5px rgba(0, 0, 0, 0.1);
    margin-left: -40px;
    margin-right: -40px;
    position: relative;
}
/*------------------------------------------------------------------
    13. Footer
-------------------------------------------------------------------*/

.footer {
    min-height: 65px;
    background: #fff;
    margin-top: 30px;
    box-shadow: 0 5px 20px rgba(0, 0, 0, 0.05);
    border-radius: 5px;
    width: 100%;
}

.footer p {
    margin: 0;
    line-height: normal;
    text-align: center;
    font-size: 14px;
    font-weight: 300;
    color: #214162;
    padding: 25px 15px;
}

/*------------------------------------------------------------------
    26. Error
-------------------------------------------------------------------*/

.error_page h2 {
    font-size: 150px;
    line-height: 150px;
    text-align: center;
    font-weight: 300;
}

.error_page h3 {
    color: #444d5b;
    text-align: center;
    font-weight: 700;
    font-size: 50px;
    line-height: 50px;
    margin-bottom: 25px;
    text-shadow: none;
    margin-top: 10px;
}

.error_page h3 + p {
    font-size: 16px;
    margin-top: -10px;
    margin-bottom: 30px;
    text-align: center;
}

.error_404 {
    background: url("images/layout_img/pattern_h.png");
    background-size: cover;
    background-color: #fff;
}
        </style>

        
    </head>

    <body class="dashboard dashboard_1">

        <!-- right content -->
        <div id="content">
            <!-- topbar -->


            <div class="topbar">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <div class="full">
                        <button
                            class="btn btn-primary"
                            type="button"
                            data-bs-toggle="offcanvas"
                            data-bs-target="#offcanvasExample"
                            aria-controls="offcanvasExample"
                            >
                            <i class="fa fa-bars"></i>
                        </button>
                        <!-- OFCANVAS START -->
                        <div
                            class="offcanvas offcanvas-start"
                            tabindex="-1"
                            id="offcanvasExample"
                            aria-labelledby="offcanvasExampleLabel"
                            style="background-color: white;">
                            <div class="offcanvas-header">
                                <h5 class="offcanvas-title" id="offcanvasExampleLabel">
                                    Offcanvas
                                </h5>
                                <button
                                    type="button"
                                    class="btn-close text-reset"
                                    data-bs-dismiss="offcanvas"
                                    aria-label="Close"
                                    ></button>
                            </div>
                            <div class="offcanvas-body">
                                <div>

                                    <center>DashBorad</center>
                                </div>

                            </div>
                        </div>
                        <!-- OFCANVAS END -->
                        <div class="right_topbar">
                            <div class="icon_info">
                                <ul>
                                    <li>
                                        <a href="Admin.jsp"><i class="fa-solid fa-house"></i></a>
                                    </li>
                                    <li>
                                        <a href="AdminProfile.jsp"><i class="fa-solid fa-user"></i></a>

                                    </li>
                                    <li>
                                        <a href="LogOut.jsp"
                                           ><i class="fa-solid fa-right-from-bracket"></i
                                            ></a>
                                    </li>
                                </ul>
                                <ul>
                                    <li></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </body>
</html>