<%-- 
    Document   : RegPage
    Created on : Oct 26, 2023, 7:32:40 AM
    Author     : dell
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.DriverManager"%>
<%@page import =  "java.sql.PreparedStatement"%>
<%@page import =  "java.sql.ResultSet"%>
<%@page import =  "java.sql.SQLException"%>
<%@page import =  "java.sql.Connection"%>   
<!--package import karana hai-->
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html  charset=UTF-8">
        <title>JSP Page</title>
        <style>
            
            table 
            {
                height: 600px;
                width: 40%
               
            }
            form {
                    padding: 25px;
                    background: #fff;
                    max-width: 500px;
                    width: 100%;
                    border-radius: 7px;
                    box-shadow: 0 10px 15px rgba(0, 0, 0, 0.05);
                    margin: 0 auto;
                    }

                    form input,
                    form select {
                    height: 10px;
                    padding: 10px;
                    width: 100%;
                    font-size: 15px;
                    outline: none;
                    background: #fff;
                    border-radius: 3px;
                    border: 1px solid #bfbfbf;
                    }

                    form input:focus,
                    form select:focus {
                    border-color: #9a9a9a;
                    }
                    .submit-btn {
                        margin-top: 30px;
                        }

                .submit-btn input {
                color: white;
                border: none;
                height: 30px;
                font-size: 16px;
                padding: 13px 0;
                border-radius: 5px;
                cursor: pointer;
                font-weight: 500;
                text-align: center;
                background: #1BB295;
                transition: 0.2s ease;
                }

                .submit-btn input:hover {
                background: #179b81;
                }
                span
                {
                    color: red;
                }
                #subminbtn
                {
                    height: 35px;
                    width: 240px;
                    margin-left: 20px;
                    background-color: #179b81;
                }
                #subminbtn:hover
                {
                   
                    
                }



            </style>
        
    </head>
    <body style="background-color: #1BB295;">
        <form  action='' style='margin-top: 50px '  >
            <center>  
                <thead> <h3>Registration</h3> </thead>
                <table >  
                    <tr>  
                        <td>  
                            <h4>Enter The Name :</h4>  
                        
                            <input required onkeyup="namecheck()" type='text'   name='name' id="name">  
                            <span id="one">*</span>
                        </td>  
                    </tr>  

                    <tr>  
                        <td>  
                            <h4>Enter Father Name :</h4>  
                          
                            <input required onkeyup="fnamecheck()" type='text'  name='fname' id="fname">
                            <span id="two">*</span>  
                        </td>  
                    </tr>  
                    <tr>  
                        <td>  
                            <h4>Enter The EMAIL :</h4>  
                        
                            <input required onkeyup="emailcheck()" type='email'  name='email' id="email">  
                            <span id="three">*</span>
                        </td>  
                    </tr>  
                    <tr>  
                        <td>  
                            <h4>Enter The PASSWORD :</h4>  
                         
                            <input required onkeyup="passcheck()" type='password'  name='password' id="password">  
                            <span id="four" >*</span>
                        </td>  
                    </tr>  
                    <tr>  
                        <td>  
                            <h4>Enter The Mobile :</h4>  
                        
                            <input required type='text'  name='mobile' id="mobile" onkeyup="mobcheck()"  minlength='10' maxlength='10'> 
                            <span id="five">*</span> 



                        </td>  
                    </tr>  
                    <tr>  
                        <td>  
                            <input  id="subminbtn"  type='submit'  value='REGISTER' name='Regist'>  
                        </td>  
                    </tr>  

                </table>  
            </center>  
        </form>  

        <br><br><br>  


    </body>
</html>
<script>
 
        function namecheck()
        {
            var name = document.getElementById("name");
             var one =document.getElementById("one");
            if(name.value.trim()==="")
            {
                one.innerHTML="User Name Requried"; 
                name.focus();
                return false;  

                var reg =/^([a-z]+\s)*[a-z]+$/
                if(!reg.test(name.value))
                {
                    one.innerHTML="Only Enter Alphabet ";
                }
            }
            

            var reg=/^[^\d]+$/;
                if (!reg.test(name.value))
                {
                    one.innerHTML = "Invalid Value";
                    return false;
                }
            else
            {
                one.innerHTML=""
            }
        }


        function fnamecheck()
        {
            var fname = document.getElementById("fname"); 
            var two = document.getElementById("two"); 
            if(fname.value.trim()==="")
            {
                two.innerHTML="Father Name Requried";    
            }
            else
            {
                two.innerHTML=""
            }
            
            var reg=/^[^\d]+$/;
                if (!reg.test(fname.value))
                {
                    two.innerHTML = "Invalid Value";
                    return false;

                }

        }

        function emailcheck()
        {
            var email =document.getElementById("email");
            var three =document.getElementById("three");
            if(email.value.trim()==="")
            {
                three.innerHTML="Emal Requried";    
            }
            else
            {
                three.innerHTML=""
            }

        }
        function passcheck()
        {
            var password = document.getElementById("password");
            var four =document.getElementById("four");
            if(password.value.trim()==="")
            {
                four.innerHTML="password Requried";    
            }
            else
            {
                four.innerHTML=""
            }

        }

            function mobcheck()
            {
                var mobile = document.getElementById("mobile");
                var five = document.getElementById("five");

                if(mobile.value.trim()==="")
            {
                five.innerHTML="mobile Number Requried"; 
                 
            }
            
            var reg=/^[a-zA-Z]+$/;

                if (reg.test(mobile.value))
                {
                    five.innerHTML = "Invalid Value";
                    return false;

                }

                else
            {
                five.innerHTML=""
            }










            }


    









</script>
<%
    String name =request.getParameter("name");
     if(name!=null)
            {
            String fname =request.getParameter("fname");
            String email= request.getParameter("email");
            String pass=request.getParameter("password");
            String mobile=request.getParameter("mobile");
            Connection con=null;
            PreparedStatement ps;
//            if(request.getParameter("Regist")!=null)
           
                
                try {

                Class.forName("com.mysql.cj.jdbc.Driver");
                 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ servlet", "root", "root");
               
               
                
                String cmd ;
                cmd ="insert into  opration (name ,fname ,email,password,mobile) values(?,?,?,?,?)";

                ps = con.prepareStatement(cmd);
               if(mobile.length()==10)
            {
                
                ps.setString(1, name);
                ps.setString(2, fname);
                ps.setString(3, email);
                ps.setString(4, pass);
                ps.setString(5, mobile);
                int i = ps.executeUpdate();
                if(i>0)
                {
                    
                   response.sendRedirect(request.getContextPath() + "/Lopage.jsp");
                  //  out.println("<span  style='color:green;'> Your Data Saved SeccuessFully</span>");
                    
                }
                else
                {
//                    
                    out.println("Failed");
                }
                 con.close();  
            }
               else
               {          
               }
}
catch(Exception e)
{
}
}
%>
