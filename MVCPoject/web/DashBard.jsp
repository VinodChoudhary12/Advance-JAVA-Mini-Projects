<%-- 
    Document   : DashBard
    Created on : Nov 7, 2023, 2:32:24 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.employee.Model.DAOClass" %>


<%
    response.setHeader("Cache-Control", "No-Cache");
    response.setHeader("Cache-Control", "No-Store"); 
    
    
    DAOClass edao = (DAOClass)session.getAttribute("edao");
    
    
    
    if(session.getAttribute("edao")!=null){
%>





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
                background: teal;
                /* position: sticky; */

            }
            .nav-content {
                height: 100%;
                /* margin: auto; */
                display: flex;
                align-items: center;
                justify-content: space-between;

            }
            .logo a {
                font-weight: 500;
                font-size: 25px;
                text-decoration: none;
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
                margin: 5px;
                margin-left: 50px;
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
                background-color: teal;
            }
            .content .media-icons a:hover {
                border-color: white;
            }
            footer .bottom {
                width: 100%;
                text-align: right;
                color: #d9d9d9;
                padding: 0 40px 5px 0;
                background-color: teal;
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
                    <a href="#">Welcome <%= edao.getName() %></a>
                </div>
                <ul class="nav-links">
                    
                    <li><a href="#">Home</a></li>
                    <li>
                        <a href="AddProcut.jsp">Add Product</a>
                    </li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Gallery</a></li>
                    <li><a href="#">Contact</a></li>
                    <li id="user">
                        <a
                            class="btn"
                            data-bs-toggle="offcanvas"
                            href="#offcanvasExample"
                            role="button"
                            aria-controls="offcanvasExample"
                            >
                            <i  class="fa-solid fa-user"></i>
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
                                <h2></h2>
                                <div class="card">
                                    <div class="card-body">
                                        <form action="profileTask">
                                            <table>
                                                <tbody>
                                                    <tr>
                                                        <td>Name</td>
                                                        <td></td>
                                                        <td>
                                                            <input
                                                                type="text"
                                                                value="<%= edao.getName()%>"
                                                                id="Myname"
                                                                disabled
                                                                name ="Myname"
                                                                />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Father</td>
                                                        <td>:</td>
                                                        <td>
                                                            <input
                                                                type="text"
                                                                value="<%= edao.getFname() %>"
                                                                id="father"
                                                                disabled
                                                                name ="father"
                                                                />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Mobile</td>
                                                        <td>:</td>
                                                        <td>
                                                            <input
                                                                type="text"
                                                                value="<%= edao.getMobile() %>"
                                                                id="mobile"
                                                                disabled
                                                                name="mobile"
                                                                />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Email</td>
                                                        <td>:</td>
                                                        <td>
                                                            <input
                                                                type="text"
                                                                value="<%= edao.getEmail() %>"
                                                                id="email"
                                                                disabled
                                                                name="email"
                                                                />
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
                                                                
                                 <!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
  Change PassWord
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true" style="height: auto">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle"><%= edao.getName()%></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <form action="ChangePassword">
              <input type="text" name="oldpass" placeholder="Old Password">
              <br><br>
              <input type="text" name="conpass" placeholder="Confirm Password">
              <br><br>
              <input type="text" name="newpass" placeholder="New Password">
              <br><br><br>
              <input type="submit" class="btn btn-primary" value="Change Password">
              
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
              <br><br>
              
              
          </form>
          
      </div>
<!--      <div class="modal-footer">
        
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>-->
    </div>
  </div>
</div>                               
<!-- ______________________________Yha Off Canvas Khatam Ho Gya________________________________________                                                               -->
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                        </div>
                        <!--<a href="#"><i class="fa-solid fa-user"></i></a>-->
                    </li>
                    <li>
                        <a href="LogOut"
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
                            <a href="#"><i class="fas fa-envelope"></i>abc@email.com</a>
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
                            <a href="" target="_blank"
                               ><i class="fab fa-instagram"></i
                                ></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-youtube"></i></a>
                            <a
                                href=""
                                target="_blank"
                                ><i class="fab fa-linkedin-in"></i
                                ></a>
                        </div>
                    </form>
                </div>
            </div>
            <div class="bottom">
                <p>
                    Copyright © 2023 My Board All rights reserved
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
                Myname.disabled = false; // Enable the input field
                father.disabled = false; // Enable the input field
                mobile.disabled = false; // Enable the input field
                email.disabled = false; // Enable the input field
                btn.style.display = "inline";
                enableButton.style.display = "none";

            });
        </script>
    </body>
</html>
<%
    }
else
{
 response.sendRedirect("Login.jsp");
}
%>

