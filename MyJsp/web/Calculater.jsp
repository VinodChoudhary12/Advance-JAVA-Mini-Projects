<%-- 
    Document   : Calculater
    Created on : Oct 19, 2023, 11:02:22 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: teal" >
        
        <button style="margin-top: 25px; margin-left: 400px; width: 120px;" data-disable="true" id="fact" onclick="fun('fact')">Fact</button>
        <button style="margin-left: 25px; width: 120px;"  data-disable="true" id="power" onclick="fun('power')">Power</button>
        <button style="margin-left: 25px; width: 120px;"  data-disable="true" id="Calculater" onclick="fun('Calculater')">Calculater</button>
        <button style="margin-left: 25px; width: 120px;"  data-disable="true" id="cube" onclick="fun('cube')">Cube</button>
        <div align="center">
        
        
        <div id="first" style=" margin-top: 25px; border: 1px solid; width: 50%;display: none;" >
            <form action="" onsubmit="return Check()">
                <input type="text" placeholder="Enter First number" name="n1" id="n1" style="margin-top: 25px;">
                <span id="display" style="color:red">*</span>
                <br>
                <div id="second">
                    <input type="text" placeholder="Enter Second number" name="n2" id="n2" style="margin-top: 25px;">
                    <span id="display2" style="color:red">*</span>
                </div>
                <br>
                <input id="powerbtn" type="submit" value="power" name="result" >
            </form>
        </div>
        <div id="fact1" style="display: none;">
            <form action=""onsubmit="return Check2()">
                <input type="text" placeholder="Enter First number" name="n5" id="n5" style="margin-top: 25px;">
                <span id="display5" style="color:red">*</span>
                <input id="btnfact" type="submit" value="Factorial1" name="result">
            </form>
        </div>
             <div id="cube1" style="display: none;">
            <form action=""onsubmit="return Check4()">
                <input type="text" placeholder="Enter First number" name="n6" id="n6" style="margin-top: 25px;">
                <span id="display6" style="color:red">*</span>
                <input id="btncube" type="submit" value="cube" name="result">
            </form>
        </div>
        <div  id="calc" style=" margin-top: 25px; border: 1px solid white; width: 50%; display: none;">
            <form action=""onsubmit="return Check1()">
                <input type="text" placeholder="Enter First number" name="n3" id="n3" style="margin-top: 25px;">
                <span id="display3" style="color:red">*</span>
                <br>
                <input type="text" placeholder="Enter Second number" name="n4" id="n4" style="margin-top: 25px;">
                <span id="display4" style="color:red">*</span>
                <br>
                <input style="margin-top: 25px;" type="submit" value="Addition" name="result">
                <input style="margin-left: 25px;" type="submit" value="Substraction"name="result">
                <input style="margin-left: 25px;" type="submit" value="Multiplication"name="result">
                <input style="margin-left: 25px;" type="submit" value="Divide"name="result">
                <input style="margin-left: 25px;" type="submit" value="Modulus"name="result">
                <!--        <h3 id="Result">Result</h3>-->
            </form>
        </div>
            
            </div>

        <script>
            function fun(operator)
            {
                var fact = document.getElementById("fact");
                var power = document.getElementById("power");
                var Calculater = document.getElementById("Calculater");
                var cube= document.getElementById("cube");
                var  btncube = document.getElementById(" btncube");
                var calc = document.getElementById("calc");
                var first = document.getElementById("first");
                var fact1 = document.getElementById("fact1");
                var input1 = document.getElementById("n1");
                var input2 = document.getElementById("n2");
                var second = document.getElementById("second");
                
               

                if (operator === 'fact') {
                    fact.disabled = false;
                    power.disabled = true;
                    input2.disabled = true;
                   
                    fact1.style.display = "block";
                    first.style.display = "none";
                    second.style.display = "none";
                    calc.style.display = "none";
                    Calculater.disabled = true;
                    document.getElementById("powerbtn").style.display = "none";
                } 
               else if (operator === 'cube') 
               {
                    fact.disabled = true;
                    power.disabled = true;
                     cube .display = "block";
                    input2.disabled =true;
                    fact1.style.display = "none";
                    first.style.display = "none";
                    second.style.display = "none";
                    calc.style.display = "none";
                    Calculater.disabled = true;
                    document.getElementById("powerbtn").style.display = "none";
                    document.getElementById("btnfact").style.display = "none";
                     btncube.style.display = "block";
                    
                    
                }
            else if (operator === 'power') {
                    first.style.display = "block";
                    second.style.display = "block";
                    calc.style.display = "none";
                    power.disabled = false;
                    Calculater.disabled = true;
                    fact.disabled = true;
                    document.getElementById("btnfact").style.display = "none";
                } 
                
        
        else if (operator === 'Calculater')
                {
                    calc.style.display = "block";
                    Calculater.disabled = false;
                    fact.disabled = true;
                    power.disabled = true;
                }
            }
            function Check() {
                var a = document.getElementById("n1");
                var b = document.getElementById("n2");
                var display = document.getElementById("display");
                var display2 = document.getElementById("display2");
                var reg = /^[0-9]+$/;
                if (a.value.trim() === "" || !reg.test(a.value))
                {
                    display.innerHTML = "Invalid Value";
                    return false;

                } else if (b.value.trim() === "" || !reg.test(b.value))
                {
                    display2.innerHTML = "Invalid Value ";
                    return false;
                }


            }
            function Check2() {
                var a = document.getElementById("n5");
                var display5 = document.getElementById("display5");
                var reg = /^[0-9]+$/;
                if (a.value.trim() === "" || !reg.test(a.value))
                {
                    display5.innerHTML = "Invalid Value";
                    return false;

                } else if (b.value.trim() === "" || !reg.test(b.value))
                {
                    display2.innerHTML = "Invalid Value ";
                    return false;
                }


            }
            function Check1() {
                var a = document.getElementById("n3");
                var b = document.getElementById("n4");
                var display3 = document.getElementById("display3");
                var display4 = document.getElementById("display4");
                var reg = /^[0-9]+$/;
                if (a.value.trim() === "" || !reg.test(a.value))
                {
                    display3.innerHTML = "Invalid Value";
                    return false;
                }
            }
        </script>
        <%        
            String result = request.getParameter("result");
            if (result != null) 
            {
                 if ("power".equals(result)) {
                    int a = Integer.parseInt(request.getParameter("n1"));
                    int b = Integer.parseInt(request.getParameter("n2"));
                    int pow = 1;
                    for (int i = 1; i <= b; i++) {
                        pow = pow * a;
                    }
                    out.println("<br>Power: " + pow);
                }
                else if("Factorial1".equals(result))
                {
                  int a = Integer.parseInt(request.getParameter("n5"));
                  int fact=1;
                  for(int i=1;i<=a;i++)
                  {
                    fact=fact*i;
                  }
                  out.println("<br>Result :"+fact);
            }
                 else if ("Addition".equals(result)) {
                    int a = Integer.parseInt(request.getParameter("n3"));
                    int b = Integer.parseInt(request.getParameter("n4"));
                    int c= a+b;
                    out.println("<br>Result " +c);
                }
        
                  else if ("Substraction".equals(result)) {
                    int a = Integer.parseInt(request.getParameter("n3"));
                    int b = Integer.parseInt(request.getParameter("n4"));
                    int c= a-b;
                    out.println("<br>Result " +c);
                }
        
                  else if ("Multiplication".equals(result)) {
                    int a = Integer.parseInt(request.getParameter("n3"));
                    int b = Integer.parseInt(request.getParameter("n4"));
                    int c= a*b;
                    out.println("<br>Result " +c);
                }
        
                  else if ("Divide".equals(result)) {
                    int a = Integer.parseInt(request.getParameter("n3"));
                    int b = Integer.parseInt(request.getParameter("n4"));
                    int c= a/b;
                    out.println("<br>Result " +c);
                }
        
                  else if ("Modulus".equals(result)) {
                    int a = Integer.parseInt(request.getParameter("n3"));
                    int b = Integer.parseInt(request.getParameter("n4"));
                    int c= a%b;
                    out.println("<br>Result " +c);
                }
        
        
        
            }
        %> 

    </body>
</html>