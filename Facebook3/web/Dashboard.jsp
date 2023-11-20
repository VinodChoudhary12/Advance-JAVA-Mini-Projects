<%-- 
    Document   : Dashboard
    Created on : Oct 26, 2023, 12:06:31 AM
    Author     : user
--%>
<%@ page import="java.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
              crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
        <title>JSP Page</title>
        <style>
            * {
                padding: 0;
                margin: 0;
                text-decoration: none;
                list-style: none;
                box-sizing: border-box;
                font-family: 'Roboto', sans-serif;
            }

            body {
                font-family: 'Roboto', sans-serif;
                color: whitesmoke;
            }

            nav {
                background: #084d7b;
                height: 80px;
                width: 100%;
                margin-bottom: 0.5vh;
            }

            label.logo {
                color: white;
                font-size: 3.1vw;
                line-height: 80px;
                padding: 0 100px;
                font-weight: bold;
            }

            nav ul {
                float: right;
                margin-right: 2vw;
            }

            nav ul li {
                display: inline-block;
                line-height: 80px;
                margin: 0 5px;
            }

            nav ul li a {
                color: white;
                font-size: 17px;
                padding: 7px 13px;
                border-radius: 3px;
                text-transform: uppercase;
                text-decoration: none;
            }

            a.active,
            a:hover {
                background: #00147a;
                transition: .5s;
                color: #fff;
            }

            .checkbtn {
                font-size: 30px;
                color: white;
                float: right;
                line-height: 80px;
                margin-right: 40px;
                cursor: pointer;
                display: none;
            }

            #check {
                display: none;
            }
            #slider{
                height: 90vh;
                width: 100%;
                background:url(images2/banner-bg.png);
                background-size: cover;
                color: white;
                display: flex;
                align-items: center;
            }
            #slider #content{
                margin-left: 3vw;
                width: 40%;
            }
            #slider #heading{
                font-size: 5vw;
                margin-top:1vw;
                text-shadow: 1px 1px 2px black;
            }
            #slider #headingspan{
                font-size: 4vw;
                margin-top:1vw;
                color: #252525;
            }
            #slider #para{
                font-size: 1.6vw;
                margin-top:1vw;
                text-shadow: 1px 1px 2px black;
            }
            #slider #btn{
                margin-top:1vw;
                font-size: 1.6vw;
                margin-top:1vw;
                background: #252525;
                color: #fff;
                padding: 0.7vw;
                border: none;
                border-radius: 0.4vw;
            }
            #about{
                height: auto;
                width: 100%;
                display: flex;
                justify-content: center;
                background-color: whitesmoke;
            }
            #about #content{
                width: 90%;
                height: 80vh;
            }
            #about #content #img{
                float: left;
                width: 40%;
                height: 60vh;
                background: url(images2/about-img.png);
                background-size: cover;
                margin-top: 10vh;
            }
            #about #content #description{
                padding: 2vw;
                width: 50%;
                height: auto;
                margin-top: 10vh;
                background-color: #fff;
                float: right;
            }
            #about #content #description #heading{
                font-size: 3vw;
                color: #BA5C37;
                margin-bottom: 3vh;
            }
            #about #content #description #para{
                font-size: 1.5vw;
            }
            #about #content #description #btn{
                margin-top:1vw;
                font-size: 1.6vw;
                margin-top:1vw;
                background: #252525;
                color: #fff;
                padding: 0.7vw;
                border: none;
                border-radius: 0.4vw;
            }
            #gallery div {
                width: 100%;
                height: auto;
            }
            #gallery div #heading2 {
                font-size: 3vw;
                width: 45vw;
                color: #BA5C37;
                margin: 6vh;
            }
            #gallery div #para {
                font-size: 1.4vw;
                width: 95vw;
                color: #000;
            }
            #galleryimage{
                width: 100%;
                height: auto;
            }
            .grid-container {
                display: grid;
                grid-template-columns: repeat(4, 1fr);
            }
            .grid-item {
                margin: 10%;
                width: 80%;
                height: auto;
                background-color: #ffffff;
            }
            .grid-item img{
                width: 20vw;
                height: 45vh;
            }
            #galleryimage #btn{
                margin-top:1vw;
                font-size: 1.6vw;
                margin-top:1vw;
                background: #252525;
                color: #fff;
                padding: 0.7vw;
                border: none;
                border-radius: 0.4vw;
                margin: 5vh;
            }

        </style>
    </head>
    <body>
        <%
            session = request.getSession();
            String username = (String) session.getAttribute("username");
            String name = (String) session.getAttribute("name");
            String email = (String) session.getAttribute("email");
            String dob = (String) session.getAttribute("dob");
            String gender = (String) session.getAttribute("gender");  
            if(username==null){
                response.sendRedirect("login.jsp");
            }
        %>
        <nav>
            <input type="checkbox" id="check">
            <label for="check" class="checkbtn">
                <i class="fas fa-bars"></i>
            </label>
            <label class="logo">FaceBook</label>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Contact</a></li>
                <li><a class="active" href="Logut">Log&nbsp;&nbsp;Out</a></li>
            </ul>
        </nav>
        <button style="margin-left: 30px;" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
            Profile
        </button>
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title text-dark" id="exampleModalLabel">Your Details</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body text-dark">
                        <span>Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <%= name %></span><br/>
                        <span>Username &nbsp;: <%= username %></span><br/>
                        <span>Email &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <%= email %></span><br/>
                        <span>Gender &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <%= gender %></span><br/>
                        <span>DOB &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <%= dob %></span><br/>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">
<!--                            Edit-->
                        </button>
                        <button style='margin-left:20px' type="button" class="btn btn-primary">
                            <a style='color:#fff !important;text-decoration: none;' href='ChangePassword?'>Change Password</a>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    <center>
        <div style='height: 90vh; width:30%; background-size: cover; background: url(https://www.wordstream.com/wp-content/uploads/2021/07/facebook20sponsored20posts20example20indow_0.png);'>
            <!-- Your content goes here -->
        </div>
    </center>

</body>
</html>
