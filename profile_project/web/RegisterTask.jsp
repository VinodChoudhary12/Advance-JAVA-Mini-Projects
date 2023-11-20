
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import = "java.sql.DriverManager"%>
<%@page import =  "java.sql.PreparedStatement"%>
<%@page import =  "java.sql.ResultSet"%>
<%@page import =  "java.sql.SQLException"%>
<%@page import =  "java.sql.Connection"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <body style=" background-color:teal;">

    <div style="background-color: #FFFFFF; width:670px; height: 900px; margin: 0 auto; margin-top: 60px; border:1px solid whitesmoke; border-radius:10px; box-shadow: 1px 1px 15px gray; background-color:rgb(0,0,0,0.3);">

    <form action="" onsubmit="return validate()">

    <caption ><h2  style="text-align:center; margin-bottom: 55px; margin-top: 35px;color: white;"> REGISTRATION PAGE </h2></caption>
    <label for='' style="margin-left: 120px;padding-top:10px;font-size:20px;color: white;">Name</label><br>
    <input onkeyup="namevalid()" id="name" type="text" name="name" style="width: 340px;height: 35px; border-color:white;  margin-top: 5px;margin-left: 120px; border-radius:5px;color:black">
    <span id="display" style="color:red">*</span><br>
    <br><br>

    <label for='' style="margin-left: 120px;padding-top:10px;font-size:20px;color: white;">Father Name</label><br>
    <input  onkeyup="fnamevalid()"  id="fname1" type="text" name="fname" style="width: 340px;height: 35px; border-color:white;  margin-top: 5px;margin-left: 120px; border-radius:5px;color:black">
    <span id="display1" style="color:red;">*</span><br>
    <br><br>

    <label for='' style='margin-left: 120px;padding-top:10px;font-size:20px;color: white;'>Email</label><br>
    <input onkeyup="emailvalid()"  id="email1" type='email' name='email' style='width: 340px;height: 35px; border-color:white; margin-top: 5px;margin-left: 120px; border-radius:5px;color:black'>
    <span id="display2" style="color:red">*</span><br>
    <br><br>
    <label for='' style='margin-left: 120px;padding-top:10px;font-size:20px;color: white;'>Password</label>
    <br>
    <input   id="password" onkeyup="checkPassword()" type='password' name='password' style='width: 340px;height: 35px; border-color:white;  margin-top: 5px;margin-left: 120px;; border-radius:5px;color:black'>
    <span id="display4" style="color:red">*</span><br>
    <br><br>
    <label for='' style='margin-left: 120px;;padding-top:10px;font-size:20px;color: white;'>Confirm-Password</label>
    <br>"
    <input id="cpassword" onkeyup="checkPassword()"  type='password' name='cpassword' style='width: 340px;height: 35px; border-color:white;  margin-top: 5px;margin-left: 110px;; border-radius:5px;color:black'>
    <span id="cheak1" style="color:red">*</span><br>
    <br><br>
    <!--<input required type='file' name='img'placeholder="Select Image" style='width: 340px;height: 35px; border-color:white;  margin-top: 5px;margin-left: 120px; border-radius:5px;color:white'>-->
    <!--<br><br>-->
    <label  for='' style='margin-left: 120px;;padding-top:10px;font-size:20px;color: white;'>Mobile No.</label>
    <br>
    <input  onkeyup="mobilevalid()" id="mobile1" type='text'name='mobile' style='width: 340px;height: 35px; border-color:white;  margin-top: 5px;margin-left: 120px; border-radius:5px;color:black'>
    <span id="mobile2" style="color:red">*</span><br>
    <br><br>
    <input type='submit' id='submit' value='SUBMIT' onclick="validate()"  style='width: 350px;height: 35px; color: white;  margin-left: 120px;margin-top: 10px; background-color: teal;' >
    </form>
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
           var fname1=document.getElementById("fname1");
           var display1=document.getElementById("display1");
           if (fname1.value.trim() === "")
           {
            display1.innerHTML="username requried";
            display1.style.color="red";
            return false;
           }
           else
           {
            var reg = /^[A-Z  a-z_]+$/;
            if (reg.test(fname1.value)) {
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
        display2.innerHTML = "Field Required";
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

function checkPassword() {
    var password = document.getElementById("password").value;
    var confirmPassword = document.getElementById("cpassword").value;
    var message = document.getElementById("cheak1");

    if (password === confirmPassword) {
        message.textContent = "";
         return true;
        // Here you can proceed with form submission or any other actions
    } else {
        message.textContent = "Passwords do not match. Please try again.";
        return false;

    }
}

function validate(){
        //     var nametest=namevalid();
        //     var fnametest=fnamevalid();
        //     // var emailtest=emailvalid();
        //     //  var mobiletest=mobilevalid();
        //     //  var passwordtest=checkPassword();
        //       var display=document.getElementById("display");
        //      var display1=document.getElementById("display1");
        //     //  var display2 = document.getElementById("display2");
        //     //  var mobile2 = document.getElementById("mobile2");
        //     //  var message = document.getElementById("cheak1");
        //      if(nametest==false)
        //     {
        //         // alert("jkbhbdhjbs")
        //         if(fnametest==false)
        //         display1.innerHTML="*";
        //         if(emailtest==false)
        //         display2.innerHTML="*";
        //         if(mobiletest==false)
        //         mobile2.innerHTML="*";
        //         if(passwordtest==false)
        //         message.textContent="*";
        //         return false;
        //     }
           
        // else if(fnametest==false){    
        //         if(emailtest==false)
        //         display2.innerHTML="*";
        //         if(mobiletest==false)
        //         mobile2.innerHTML="*";
        //         if(passwordtest==false)
        //         message.textContent="*";
        //         return false;
        //     }
        //     else if(emailtest==false){
        //         if(mobiletest==false)
        //         mobile2.innerHTML="*";
        //         if(passwordtest==false)
        //         message.textContent="*";
        //         return false;
        //     }
        //     else if(mobiletest==false) {
        //         if(passwordtest==false)
        //         message.textContent="*";
        //         return false;
        //     }
        //     else if(passwordtest==false){
        //         return false;
        //     }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
//        
//        var name=document.getElementById("name");
//           var display=document.getElementById("display");
//           if (name.value.trim() === "")
//           {
//            display.innerHTML="username requried";
//            display.style.color="red";
//            return false;
//           }
//           else
//           {
//            var reg = /^[A-Z  a-z_]+$/;
//            if (reg.test(name.value)) {
//                display.innerHTML ="";
//                display.style.color = "white";
//           var fname1=document.getElementById("fname1");
//           var display1=document.getElementById("display1");
//           if (fname1.value.trim() === "")
//           {
//            display1.innerHTML="username requried";
//            display1.style.color="red";
//            return false;
//           }
//           else
//           {
//            var reg = /^[A-Z  a-z_]+$/;
//            if (reg.test(fname1.value)) {
//                display1.innerHTML ="";
//                display1.style.color = "white";
//
////email for
//var email1 = document.getElementById("email1");
//    var display2 = document.getElementById("display2");
//
//    if (email1.value.trim() === "") {
//        display2.innerHTML = "Field Required";
//        display2.style.color = "red";
//        return false;
//    } else {
//
//        var reg = /^[a-zA-Z0-9_.+-]+@gmail.com$/;
//
//        if (reg.test(email1.value)) {
//
//            display2.innerHTML = "";
//            display2.style.color = "white";
//            var passwordtest=checkPassword();
//            if(passwordtest===false){
//                alert("password is not matched");
//                return false;
//            }
//
//    
//    else{
//    if (mobile1.value.trim() === "") {
//        mobile2.innerHTML = "Field Required";
//        mobile2.style.color = "red";
//
//        return false;
//    } else {
//
//        var reg = /^[6789][0-9]{9}$/;
//
//        if (reg.test(mobile1.value)) {
//
//            mobile2.innerHTML = "";
//            mobile2.style.color = "white";
//            return true;
//        } else {
//
//            mobile2.innerHTML = "Invalid";
//            mobile2.style.color = "red";
//
//            return false;
//        }
//    }
//        return true;
//    }
//      return true;
//        } else {
//
//            display2.innerHTML = "Invalid";
//            display2.style.color = "red";
//            return false;
//        }
//    }
//      return true;
//            } else {
//                display1.innerHTML = "Invalid";
//                display1.style.color = "red";
//                return false;
//}
//           }
//
//                return true;
//            } else {
//                display.innerHTML = "Invalid";
//                display.style.color = "red";
//                return false;
//            }
//          } 
//    
//        }
//    </script>
    </body>
    </html>
    </body>
</html>
<% 
 String name = request.getParameter("name");

 if(name!=null){
  String fname = request.getParameter("fname");
 String email = request.getParameter("email");
 String password = request.getParameter("password");
 String img = "xyz";
 String mobile = request.getParameter("mobile");
java.sql.Connection con = null;
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webproject2", "root", "root");
    PreparedStatement ps1 = con.prepareStatement("select * from registration2 where email=?");
    ps1.setString(1, email);
    ResultSet rs = ps1.executeQuery();
    if (rs.next()) {
    %>
    
        <h1 id="email2" style='color:red ;margin-top: -460px;margin-left: 50px;'>Email_id Is Alredy Exist</h1>
    <% }else{
        PreparedStatement ps = con.prepareStatement("insert into registration2 (name,fname,email,password,mobile,img) values(?,?,?,?,?,?)");
        ps.setString(1, name);
        ps.setString(2, fname);
        ps.setString(3, email);
        ps.setString(4, password);
        ps.setString(5, mobile);
        ps.setString(6, img);
        if (ps.executeUpdate()>0){
            response.sendRedirect("Login.jsp");
            
        }
    }
} catch (Exception e) {
 
    
}
}%>