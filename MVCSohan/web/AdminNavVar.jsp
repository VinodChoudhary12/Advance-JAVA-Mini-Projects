<%-- 
    Document   : AdminNavVar
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
        <!--***************************************************-->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <!--***************************************************-->
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
