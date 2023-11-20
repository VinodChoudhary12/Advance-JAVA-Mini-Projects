<%-- 
    Document   : Profile
    Created on : Oct 26, 2023, 12:21:37 AM
    Author     : ASUS
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
        <title>JSP Page</title>
        <%
            try {
                response.setHeader("cache-control", "no-chache");
                response.setHeader("cache-control", "no-store");
                Object email = session.getAttribute("email");
                if (email != null) {
                    ResultSet res = (ResultSet) session.getAttribute("rs");
                   int id = res.getInt("id");
                   String name = res.getString("name");
                   String fname = res.getString("fname");
                    email = res.getString("email");
                   String mobile = res.getString("mobile");
                   String img = res.getString("img");
        %>
        <style>
            *{
                margin: 0%;
            }
            body{
                background-image: url("https://e0.pxfuel.com/wallpapers/754/1015/desktop-wallpaper-admin-login.jpg");
            }
            #container{
                width: 80%;
                height: auto;


            }
            #div1{
                width: 120%;
                height: 600px;
                margin-top: 20px;
                margin-left: 40px;
                border: 1px solid white;
                display: flex;
                background-color: #FFFFFF;
                border:1px solid whitesmoke;
                border-radius:10px;
                box-shadow : 1px 1px 15px gray;
                background-color:rgb(0,0,0,0.3);

            }
            #div1_1{
                width: 30%;
                border-right:  1px solid whitesmoke;

            }
            #img{
                margin:60px;
                border-radius: 80%;
                border: 1 px seagreen;

                border: 1 px seagreen;
            }
            #check{
                visibility: hidden;
            }
            /* #name{\n"
                visibility: hidden;\n"    } */
            #name1{
                display: none;
            }
            #check:checked~div{

                display: block;
            }
            #div2_1{
                display: flex;
                margin-top: 40px;
            }
            #user{
                color:bisque;
                margin-left: -50px;
                margin-top: -60px;
            }
            #check1{
                visibility: hidden;
            }
            /* #name{\n"
             visibility: hidden;\n"
         } */
            #fname1{
                display: none;
            }
            #check1:checked~div{
                display: block;
            }
            #div2_2{
                display: flex;
                margin-top: 40px;
            }

            #check2{
                visibility: hidden;
            }
            /* #name{\n"        visibility: hidden;\n"
            } */
            #email{
                display: none;
            }
            #check2:checked~div{

                display: block;
            }
            #div2_3{
                display: flex;
                margin-top: 40px;
            }

            #check3{
                visibility: hidden;
            }
            /* #name{\n"
                   visibility: hidden;\n"
               } */
            #mobile{
                display: none;
            }
            #check3:checked~div{

                display: block;
            }
            #div2_4{
                display: flex;
                margin-top: 40px;
            }
            #check4{
                visibility: hidden;
            }
            /* #name{\n"
                visibility: hidden;\n"
            } */
            #email{
                display: none;
            }
            #check4:checked~div{

                display: block;
            }
            #div2_5{
                display: block;
                margin-top: 40px;
            }
            #password{
               margin-top: -180px;
               margin-left: 400px;
            }
        </style>
    </head>
    <body>
        <div id='container'>
            <h1 style='text-align: center; margin-left: 150px;   color: white;'>Profile Details</h1>
            <div id='div1'>

                <div id='div1_1'>
                    
            <img id='img' src="images/<%=img%>"height='200px' width='200px' alt='img'>

                    <center><h1 id ='user'> <%= name %></h1> </center></div>
                <div id='div2'>
                    <div id='div2_1'>
                        <span style='margin-left: 20px; width: 150px; padding-top:10px;font-size:20px;color: white;'>Name       : </span>
                        <span style='margin-left: 10px;padding-top:10px;font-size:20px;color: white;width: 150px;'> <%= name %> </span>
                        <input type='checkbox' id='check'>
                        <label for='check' style='margin-left: 40px;padding-top:10px;font-size:20px;color: white;'>Click for Edit</label>
                        <div id="name1">
                            <form action='' onsubmit='return namevalid()'> 
                                <input onkeyup="namevalid()" id='name'  type='text'name='name' placeholder='Enter Name' style='width: 250px;height: 25px; border-color:white; background-color: transparent; margin-top: 5px;margin-left: 20px; border-radius:5px;color:white'>
                                <span id="display" style="color:red">*</span><br> 
                                <input  type='submit' id='submit' value='NAME' name='result' onclick="validate()" style='width:70px; height:28px; border-radius:5px;'>
                            </form></div>
                    </div>
                    <div id="div2_2">
                        <span style="margin-left: 20px;padding-top:10px;width: 150px;font-size:20px;color: white;">Father Name :</span>
                        <span style="margin-left: 10px;padding-top:10px;font-size:20px;color: white;width: 150px;">MR. <%=fname %></span>
                        <input type="checkbox" id="check1">
                        <label for="check1" style="margin-left: 40px;padding-top:10px;font-size:20px;color: white;">Click for Edit</label>
                        <div id='fname1'>
                            <form action=''  onsubmit='return fnamevalid()'>
                                <input onkeyup="fnamevalid()" id='fname' type='text'name='fname' placeholder='Enter Father name' style='width: 250px;height: 25px; border-color:white; background-color: transparent; margin-top: 5px;margin-left: 20px; border-radius:5px;color:white'>
                                <span id="display1" style="color:red">*</span><br> 
                                <input type='submit' id='submit1' value='FNAME' name='result'style='width:70px; height:28px; border-radius:5px;'>
                            </form>
                        </div>
                    </div>
                    <div id="div2_3">

                        <span style="margin-left: 20px;padding-top:10px;width: 150px;font-size:20px;color: white;">Email Id :</span>
                        <span style="margin-left: 10px;padding-top:10px;font-size:20px;color: white; width: 150px;"><%= email %></span>
                        <input type="checkbox" id="check2">
                        <label for="check2" style="margin-left: 40px;padding-top:10px;font-size:20px;color: white;">Click for Edit</label>
                        <div id="email">
                            <form   action='' onsubmit='return emailvalid()'>
                            <input onkeyup="emailvalid()" id='email1'  type='text'name='email' placeholder='Enter Name' style="width: 250px;height: 25px; border-color:white; background-color: transparent; margin-top: 5px;margin-left: 20px; border-radius:5px;color:white">
                            <span id="display2" style="color:red">*</span><br>
                            <input type='submit' id='submit2' value='EMAIL' name='result' onclick="validate2()" style='width:70px; height:28px; border-radius:5px;'>
                            </form>
                        </div>
                    </div>  
                    <div id="div2_4">
                        <span style="margin-left: 20px;padding-top:10px;width: 150px;font-size:20px;color: white;">Mobile No. :</span>
                        <span style="margin-left: 10px;padding-top:10px;font-size:20px;color: white; width: 150px;"> <%= mobile %> </span>
                        <input type="checkbox" id="check3">
                        <label for="check3" style="margin-left: 40px;padding-top:10px;font-size:20px;color: white;">Click for Edit</label>
                        <div id="mobile">

                            <form  action='' onsubmit='return mobilevalid()'>
                                <input onkeyup="mobilevalid()" id='mobile1'  type='text' name='mobile' placeholder='Enter Name' style='width: 250px;height: 25px; border-color:white; background-color: transparent; margin-top: 5px;margin-left: 20px; border-radius:5px;color:white'>
                                <span id="mobile2" style="color:red">*</span><br> "
                                <input  type='submit' id='submit3' value='MOBILE' name='result' onclick="validate()" style='width:70px; height:28px; border-radius:5px;'>
                            </form></div>




                    </div>

                    <div id="div2_5">

                        <input type="checkbox" id="check4">
                        <label for="check4" style="margin-left: 40px;padding-top:10px;font-size:20px;color: white;"> Change password </label>
                        <div id="mobile">
                            <br>  <form action=''>
                                <input required type="password" name='password' placeholder="Enter Old Password" style='width: 300px;height: 25px; border-color:white; background-color: transparent; margin-top: 5px;margin-left: 20px; border-radius:5px;color:white'>
                                <input required type="password" name='newpassword' placeholder="Enter New Password" style='width: 300px;height: 25px; border-color:white; background-color: transparent; margin-top: 5px;margin-left: 20px; border-radius:5px;color:white'>
                                <input type='submit'   value='CHANGE' name='result' style='width:70px; height:28px; border-radius:5px;'>
                            </form>
                        </div>

                    </div>
                </div>

            </div>


            <script>
     function namevalid()
        {
           var name=document.getElementById("name");
           var display=document.getElementById("display");
           if (name.value.trim() === "")
           {
            display.innerHTML="username requried";
            display.style.color="red";
            return false;
           }
           else
           {
            var reg = /^[A-Z  a-z_]+$/;
            if (reg.test(name.value)) {
                display.innerHTML ="";
                display.style.color = "white";
                return true;
            } else {
                display.innerHTML = "Invalid";
                display.style.color = "red";
                return false;
            }
          } 
        }


        function fnamevalid()
        {
           var fname=document.getElementById("fname");
           var display1=document.getElementById("display1");
           if (fname.value.trim() === "")
           {
            display1.innerHTML="fathername requried";
            display1.style.color="red";
            return false;
           }
           else
           {
            var reg = /^[A-Z  a-z_]+$/;
            if (reg.test(fname.value)) {
                display1.innerHTML ="";
                display1.style.color = "white";
                return true;
            } else {
                display1.innerHTML = "Invalid";
                display1.style.color = "red";
                return false;
            }
          } 
        }
    function emailvalid() {
    var email1 = document.getElementById("email1");
    var display2 = document.getElementById("display2");

    if (email1.value.trim() === "") {
        display2.innerHTML = "email Required";
        display2.style.color = "red";
        return false;
    } else {

        var reg = /^[a-zA-Z0-9_.+-]+@gmail.com$/;

        if (reg.test(email1.value)) {

            display2.innerHTML = "";
            display2.style.color = "white";
            return true;
        } else {

            display2.innerHTML = "Invalid";
            display2.style.color = "red";
            return false;
        }
    }
}
function mobilevalid() {
    var mobile1 = document.getElementById("mobile1");
    var mobile2 = document.getElementById("mobile2");


    if (mobile1.value.trim() === "") {
        mobile2.innerHTML = "Field Required";
        mobile2.style.color = "red";

        return false;
    } else {

        var reg = /^[6789][0-9]{9}$/;

        if (reg.test(mobile1.value)) {

            mobile2.innerHTML = "";
            mobile2.style.color = "white";
            return true;
        } else {

            mobile2.innerHTML = "Invalid";
            mobile2.style.color = "red";

            return false;
        }
    }
}

            </script>

            <!-- String error = request.getParameter("error");
        <h4 style='color:red'>"+error+"</h4> -->
    </body>
</html>
<%} else %><% {
    response.sendRedirect("Login.jsp");
                
                
%> <%}
        } catch (Exception e) %><% {
    out.println(e);
} %>
</body>
</html>

<%
try {
                
                ResultSet res = (ResultSet) session.getAttribute("rs");
                if(res!=null){
                int id = res.getInt("id");
                Class.forName("com.mysql.cj.jdbc.Driver");
                PreparedStatement ps = null;
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webproject2", "root", "root");
                String result = request.getParameter("result");
//                out.println("Result" + result);
                if (result.equals("NAME")) {
                    String name = request.getParameter("name");
                    out.println("Name" + request.getParameter("name"));
                    ps = con.prepareStatement("update  registration2  set name=?  where id=?");
                    ps.setString(1, name);
                    ps.setInt(2, id);
                    int i = ps.executeUpdate();
                    if (i > 0) {
                        response.sendRedirect("Login.jsp");
                    } else {
                        response.sendRedirect("Profile.jsp");
                    }
                } else if (result.equals("FNAME")) {
                    String fname = request.getParameter("fname");

                    ps = con.prepareStatement("update  registration2  set fname=?  where id=?");
                    ps.setString(1, fname);
                    ps.setInt(2, id);
                    int j = ps.executeUpdate();
                    if (j > 0) {
                        response.sendRedirect("Login.jsp");
                    } else {
                        response.sendRedirect("Profile.jsp");
                    }
                } else if (result.equals("EMAIL")) {
                    String email = request.getParameter("email");
                    PreparedStatement ps1 = con.prepareStatement("select * from registration2 where email=?");
    ps1.setString(1, email);
    ResultSet rs = ps1.executeQuery();
    if (rs.next()) {
       %><h1 style='color:red;margin-left:550px;margin-top: -180px'>Email_id Is Alredy Exist</h1>
   <% }else{
                    
                    
                    
                    ps = con.prepareStatement("update  registration2  set email=?  where id=?");
                    ps.setString(1, email);
                    ps.setInt(2, id);
                    int k = ps.executeUpdate();
                    if (k > 0) {
                        response.sendRedirect("Login.jsp");
                    } else {
                        response.sendRedirect("Profile.jsp");
                    }
    }

                } else if (result.equals("MOBILE")) {
                    String mobile = request.getParameter("mobile");

                    ps = con.prepareStatement("update  registration2  set mobile=?  where id=?");
                    ps.setString(1, mobile);
                    ps.setInt(2, id);
                    int k = ps.executeUpdate();
                    if (k > 0) {
                        response.sendRedirect("Login.jsp");
                    } else {
                        response.sendRedirect("Profile.jsp");
                    }
                } else if (result.equals("CHANGE")) {
                    String old_password = request.getParameter("password");
                    String new_password = request.getParameter("newpassword");

                    ps = con.prepareStatement("update  registration2  set password=?  where id=? and password=?");
                    ps.setString(1, new_password);
                    ps.setInt(2, id);
                    ps.setString(3, old_password);
                    int k = ps.executeUpdate();
                    if (k > 0) {
                        response.sendRedirect("Login.jsp");
                    } else {
                        %>
                        <h1 id="password"style='color:red'>password is not matched<h1>
                    <%}

                }
            }
    }
    catch (Exception e) {

            }
    
        
    
%>
