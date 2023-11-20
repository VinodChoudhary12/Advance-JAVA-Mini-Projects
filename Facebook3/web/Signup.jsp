<%-- 
    Document   : Signup.jsp
    Created on : Oct 26, 2023, 6:58:44 AM
    Author     : user
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                font-family: 'Arial', sans-serif;
                background-color: #f0f2f5;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }
            form {
                background-color: #fff;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1), 0 8px 16px rgba(0, 0, 0, 0.1);
                max-width: 400px;
                width: 100%;
            }
            label {
                display: block;
                margin-bottom: 6px;
                font-weight: bold;
            }
            input, select {
                width: 100%;
                padding: 10px;
                margin-bottom: 12px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }
            input[type="checkbox"] {
                margin-top: 8px;
            }
            input[type="submit"] {
                background-color: #42b72a;
                color: #fff;
                padding: 12px;
                border: none;
                border-radius: 6px;
                cursor: pointer;
            }
            input[type="submit"]:hover {
                background-color: #3ba626;
            }
        </style>
    </head>
    <body>
        <form action="SignupController" method="" onsubmit='return validateSubmit()'>
            <label for="Username">UserName:</label>
            <input type="text" id="Username" name="username" required >
            <br>
            <label for="firstName"> Name:</label>
            <input type="text" id="name" name="name"  onkeyup="validateForm()" required>
            <span id="nnnn"></span>
            <br>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" onchange="emailChech()" onkeyup="emailbtn()" onfocus="emailbtn()" required>
            <span id="eee" ></span>
            <br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="pass" required>
            <br>
            <label for="dob">Date of Birth:</label>
            <input type="date" id="dob" name="dob"  min="1970-01-01" required>
            <br>
            <label for="gender">Gender:</label>
            <select id="gender" name="gender" required>
                <option value="male">Male</option>
                <option value="female">Female</option>
                <option value="other">Other</option>
            </select>
            <br>
            <input type="submit" value="Sign Up">
           
        </form>
        <script>
            function validateForm() {
                var nameInput = document.getElementById('name').value;
                var nameValue = nameInput.value;
                var isValid = /^[A-Za-z ]+$/.test(nameInput);


                var nnn = document.getElementById('nnnn');

                if (!isValid) {
                    nnn.style.display = 'block';
                    nnn.style.padding = '6px';
                    nnn.style.color = 'red';
                    nnn.innerHTML = ("Invalid Name");
                    return false;
                } else {
                    nnn.style.display = 'none';

                    nnn.innerHTML = ("");
                    return true;
                }


                return true;
            }

            function emailbtn() {
                var nameInput = document.getElementById('name');
                var aa = validateForm();
                if (!aa == true) {
                    nameInput.focus();
                }
            }

            function emailChech() {
                var emailInput = document.getElementById('email');
                var emailValue = emailInput.value;
                var eee = document.getElementById('eee');

                if (!emailValue.includes('@gmail.com')) {
                    eee.style.display = 'block';
                    eee.style.padding = '6px';
                    eee.style.color = 'red';
                    eee.innerHTML = ("Invalid Email");
                    return false;
                } else {
                    eee.style.display = 'none';

                    eee.innerHTML = ("");
                }

                return true;
            }
            function validateSubmit() {
                var nameInput = document.getElementById('name');
                var isValid = /^[A-Za-z ]+$/.test(nameInput);
                var nameValue = nameInput.value;

                var emailInput = document.getElementById('email');
                var emailValue = emailInput.value;

                var nnn = document.getElementById('nnnn');
                var eee = document.getElementById('eee');
                if (!emailChech()|| !validateForm()) {
                    alert('Firstly Fill The Correct Details');
                    return false;
                } else {
                    return true;
                }
            }
            document.getElementById('dob').max = new Date().toISOString().split('T')[0];
        </script>


    </body>
</html>

