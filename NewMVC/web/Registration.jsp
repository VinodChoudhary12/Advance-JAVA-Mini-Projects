<%-- 
    Document   : Registration
    Created on : Nov 6, 2023, 2:30:24 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
    
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
        <form  action='/RegistrationTask.java' style='margin-top: 50px '  >
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

                var reg =/^([a-z]+\s)*[a-z]+$/;
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
                one.innerHTML="";
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
                two.innerHTML="";
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
                three.innerHTML="";
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
                four.innerHTML="";
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
                five.innerHTML="";
            }


            }
</script>
