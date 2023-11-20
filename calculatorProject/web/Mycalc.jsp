<%-- 
    Document   : Mycalc
    Created on : 22-Oct-2023, 6:06:39 pm
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>JSP Page</title>
        <style>
            .main{
                height:270px;
                width:400px;

                margin-left: 400px;
            }
            button{
                margin-left: 40px;
                padding: 5px;
                height:35px;
                width:120px;
                margin-top: 20px;
            }
            .heading{
                height:30px;
                width:400px;
                background-color:black;
                margin-top:100px;
                margin-left: 400px;
            }
            h4{
                color:white;
            }
            </style>
    </head>
    <body>
        
        <div class="main">
        <button id="Factorial" onclick="factorial()" name="fibob">Factorial</button>
        

       

       
        

       


        <button onclick="leapyear()" id="LeapYear" value="LeapYear">
            Leap Year
        </button>
        <button onclick="fibonacii()" id="fibbonacci" value="fibbonacci">
            Fibonacci
        </button>
         <button onclick="cube()" id="Cube" value="Cube">Cube</button>


        <button onclick="EvenOdd()" id="CheckEvenOdd" value="EvenOdd">
             Even Odd
        </button>
          <button id="Power" onclick="power()" name="powerb">Power</button>
        <button onclick="calculater()" id="calculater" value="calculater">
            Calculator
        </button>
        <br /><br />
        </div>

        <div id="factorial1" style="display: none">
            <form action="" onsubmit="return chectOneValue()">
                <input type="text" id="valuen1" name="first" />
                <span id="factorialsub">
                    <input type="submit" value="Factorial" name="factsub" />
                </span>
            </form>
        </div>

        <div id="power1" style="display: none">
            <form action="">
                <input type="text" id="powervalue1" name="first" />
                <input type="text" id="powervalue2" name="second" />
                <input type="submit" value="Power" name="Power" />
            </form>
        </div>

        <div id="Cube1" style="display: none">
            <form action="" onsubmit="return chectOneValue()">
                <input type="text" id="cubevalue" name="first" />
                <input type="submit" value="cube" name="cube" />
            </form>
        </div>

        <div id="fibbonacci1" style="display: none">
            <form action="" onsubmit="return chectOneValue()">
                <input type="text" id="fibbonaccivalue" name="first" />
                <!-- <input type="text" id="valuen2" name="second" /> -->
                <input type="submit" value="fibbonacci" name="fibbonacci" />
            </form>
        </div>

        <div id="cartoon1" style="display: none">
            <form action="" onsubmit="return chectOneValue()">
                <input type="text" id="cartoonvalue" name="first" />
                <!-- <input type="text" id="valuen2" name="second" /> -->
                <input type="submit" value="cartoon" name="cartoon" />
            </form>
        </div>

        <div id="Voting1" style="display: none">
            <form action="" onsubmit="return chectOneValue()">
                <input type="text" id="votingvalue" name="first" />
                <!-- <input type="text" id="valuen2" name="second" /> -->
                <input type="submit" value="voting" name="voting" />
            </form>
        </div>

        <div id="LeapYear1" style="display: none">
            <form action="" onsubmit="return chectOneValue()">
                <input type="text" id="leapyearvalue" name="first" />
                <!-- <input type="text" id="valuen2" name="second" /> -->
                <input type="submit" value="LeapYear" name="LeapYear" />
            </form>
        </div>

        <div id="CheckEvenOdd1" style="display: none">
            <form action="" onsubmit="return chectOneValue()">
                <input type="text" id="evenvalue" name="first" />
                <!-- <input type="text" id="valuen2" name="second" /> -->
                <input type="submit" value="checkEvenOdd" name="checkEvenOdd" />
            </form>
        </div>

        <div id="HCF1" style="display: none">
            <form action="" onsubmit="return checkTwoValue()">
                <input type="text" id="hcfvaluen1" name="first" />
                <input type="text" id="hcfvaluen2" name="second" />
                <input type="submit" value="hcf" name="hcf" />
            </form>
        </div>

        <div id="Reverse1" style="display: none">
            <form action="" onsubmit="return chectOneValue()">
                <input type="text" id="Reversevaluen" name="first" />
                <input type="submit" value="reverse" name="reverse" />
            </form>
        </div>

        <div id="PrimeNumber1" style="display: none">
            <form action="" onsubmit="return chectOneValue()">
                <input type="text" id="primevalue" name="first" />
                <input type="submit" value="primeNumber" name="primeNumber" />
            </form>
        </div>
        <div id="calculater1" style="display: none">
            <form action="" onsubmit="return checkTwoValue()">
                <input type="text" id="calculatervalue1" name="first" />
                <input type="text" id="calculatervalue2" name="second" />
                <input type="submit" value="Add" name="add" />
                <input type="submit" value="Sub" name="sub" />
                <input type="submit" value="multi" name="multi" />
                <input type="submit" value="division" name="division" />
            </form>
        </div>

        <script>
            function chectOneValue() {
             
            }
           
            function calculater() {
                calculater1.style.display = "inline";
                PrimeNumber1.style.display = "none";
                factorial1.style.display = "none";
                power1.style.display = "none";
                Reverse1.style.display = "none";
                HCF1.style.display = "none";
                CheckEvenOdd1.style.display = "none";
                LeapYear1.style.display = "none";
                Voting1.style.display = "none";
                cartoon1.style.display = "none";
                fibbonacci1.style.display = "none";
                Cube1.style.display = "none";
            }
            function power() {
                power1.style.display = "inline";
                PrimeNumber1.style.display = "none";
                factorial1.style.display = "none";
                Reverse1.style.display = "none";
                HCF1.style.display = "none";
                CheckEvenOdd1.style.display = "none";
                LeapYear1.style.display = "none";
                Voting1.style.display = "none";
                cartoon1.style.display = "none";
                fibbonacci1.style.display = "none";
                Cube1.style.display = "none";
                calculater1.style.display = "none";
            }
            function factorial() {
                factorial1.style.display = "inline";
                PrimeNumber1.style.display = "none";
                power1.style.display = "none";
                Reverse1.style.display = "none";
                HCF1.style.display = "none";
                CheckEvenOdd1.style.display = "none";
                LeapYear1.style.display = "none";
                Voting1.style.display = "none";
                cartoon1.style.display = "none";
                fibbonacci1.style.display = "none";
                Cube1.style.display = "none";
                calculater1.style.display = "none";
            }
            function cube() {
                Cube1.style.display = "inline";
                PrimeNumber1.style.display = "none";
                factorial1.style.display = "none";
                power1.style.display = "none";
                Reverse1.style.display = "none";
                HCF1.style.display = "none";
                CheckEvenOdd1.style.display = "none";
                LeapYear1.style.display = "none";
                Voting1.style.display = "none";
                cartoon1.style.display = "none";
                fibbonacci1.style.display = "none";
                calculater1.style.display = "none";
            }
            function fibonacii() {
                fibbonacci1.style.display = "inline";
                PrimeNumber1.style.display = "none";
                factorial1.style.display = "none";
                power1.style.display = "none";
                Reverse1.style.display = "none";
                HCF1.style.display = "none";
                CheckEvenOdd1.style.display = "none";
                LeapYear1.style.display = "none";
                Voting1.style.display = "none";
                cartoon1.style.display = "none";
                // fibbonacci1.style.display = "none";
                Cube1.style.display = "none";
                calculater1.style.display = "none";
            }
            function pattern() {
                cartoon1.style.display = "inline";
                PrimeNumber1.style.display = "none";
                factorial1.style.display = "none";
                power1.style.display = "none";
                Reverse1.style.display = "none";
                HCF1.style.display = "none";
                CheckEvenOdd1.style.display = "none";
                LeapYear1.style.display = "none";
                Voting1.style.display = "none";
                // cartoon1.style.display = "none";
                fibbonacci1.style.display = "none";
                Cube1.style.display = "none";
                calculater1.style.display = "none";
            }
            function voting() {
                Voting1.style.display = "inline";
                PrimeNumber1.style.display = "none";
                factorial1.style.display = "none";
                power1.style.display = "none";
                Reverse1.style.display = "none";
                HCF1.style.display = "none";
                CheckEvenOdd1.style.display = "none";
                LeapYear1.style.display = "none";
                // Voting1.style.display = "none";
                cartoon1.style.display = "none";
                fibbonacci1.style.display = "none";
                Cube1.style.display = "none";
                calculater1.style.display = "none";
            }
            function leapyear() {
                LeapYear1.style.display = "inline";
                PrimeNumber1.style.display = "none";
                factorial1.style.display = "none";
                power1.style.display = "none";
                Reverse1.style.display = "none";
                HCF1.style.display = "none";
                CheckEvenOdd1.style.display = "none";
                // LeapYear1.style.display = "none";
                Voting1.style.display = "none";
                cartoon1.style.display = "none";
                fibbonacci1.style.display = "none";
                Cube1.style.display = "none";
                calculater1.style.display = "none";
            }
            function EvenOdd() {
                CheckEvenOdd1.style.display = "inline";
                PrimeNumber1.style.display = "none";
                factorial1.style.display = "none";
                power1.style.display = "none";
                Reverse1.style.display = "none";
                HCF1.style.display = "none";
                // CheckEvenOdd1.style.display = "none";
                LeapYear1.style.display = "none";
                Voting1.style.display = "none";
                cartoon1.style.display = "none";
                fibbonacci1.style.display = "none";
                Cube1.style.display = "none";
                calculater1.style.display = "none";
            }
            function hcff() {
                HCF1.style.display = "inline";
                PrimeNumber1.style.display = "none";
                factorial1.style.display = "none";
                power1.style.display = "none";
                Reverse1.style.display = "none";
                // HCF1.style.display = "none";
                CheckEvenOdd1.style.display = "none";
                LeapYear1.style.display = "none";
                Voting1.style.display = "none";
                cartoon1.style.display = "none";
                fibbonacci1.style.display = "none";
                Cube1.style.display = "none";
                calculater1.style.display = "none";
            }
            function reverse() {
                Reverse1.style.display = "inline";
                PrimeNumber1.style.display = "none";
                factorial1.style.display = "none";
                power1.style.display = "none";
                // Reverse1.style.display = "none";
                HCF1.style.display = "none";
                CheckEvenOdd1.style.display = "none";
                LeapYear1.style.display = "none";
                Voting1.style.display = "none";
                cartoon1.style.display = "none";
                fibbonacci1.style.display = "none";
                Cube1.style.display = "none";
                calculater1.style.display = "none";
            }
            function primeNumber() {
                PrimeNumber1.style.display = "inline";
                factorial1.style.display = "none";
                power1.style.display = "none";
                Reverse1.style.display = "none";
                HCF1.style.display = "none";
                CheckEvenOdd1.style.display = "none";
                LeapYear1.style.display = "none";
                Voting1.style.display = "none";
                cartoon1.style.display = "none";
                fibbonacci1.style.display = "none";
                Cube1.style.display = "none";
                calculater1.style.display = "none";
            }
            function chectTwoValue() {
                var first = parseInt(document.getElementById("valuen1").value);
                var second = parseInt(document.getElementById("valuen2").value);

                if (first <= 0 && first >= 9) {
                    alert("Enter Valid Number");
                }
            }
        </script>
    </body>
</html>
<% 
String s = request.getParameter("first"); 
int b = 0;
if (s != null && !s.equals("")) { 
    int a = Integer.parseInt(s); 
        String s1 = request.getParameter("second"); 
        if(s1 != null && !s1.equals(""))
        {      
            b = Integer.parseInt(s1); 
        }
        
        if(request.getParameter("cube") != null){
            int result = a*a*a;
            out.print(result);
        } else if (request.getParameter("fibbonacci") != null){ 
            int x=-1,y=1,result =0; 
            for(int i=1;i<=a;i++){ 
                result = x+y;
                x=y;
                y=result;
                out.print(result +" "); 
            }
        }else if(request.getParameter("voting") != null){
            if(a<=18){ 
                out.print("Not Eligable for voting"); 
            } else{ 
                out.print(" Eligable for voting");
            } 
        } else if(request.getParameter("LeapYear") != null){ 
            if((a%100!=0&&a%4==0)||a%400==0){
                out.print("Leap Year"); 
            } else{ 
                out.print("Normal Year");
            }
        }else if(request.getParameter("checkEvenOdd") != null){
            if(a%2==0){ 
                out.print("Even Number");
            } else{ 
                out.print("Odd Number");
            }
        }else if(request.getParameter("reverse") != null){
            int result =0;
            while(a>0){ 
                result =(result*10)+(a%10); 
                a/=10; 
            }
            out.println(result);
        } else if(request.getParameter("primeNumber") != null){
            int result =0;
            for(int i=1;i<=a;i++){ 
                if(a%i==0){ 
                    result++;
                } 
            }
            if(result ==2){   
                out.println("prime number"); 
             }else{ 
                out.println("not a prime number"); 
            } 
        }else if (request.getParameter("cartoon") != null){
            for(int i=1;i<=a;i++){
                for(int j=1;j<=i;j++){
                    out.print("* "); 
                } 
                out.print("<br>"); 
            }
        } else if (request.getParameter("factsub") != null){
            int fact =1;
            for(int i=1;i<=a;i++){
                fact*=i;
            }
            out.print(fact); 
        } else if (request.getParameter("add") != null){
           
            out.print(a+b); 
        }else if (request.getParameter("sub") != null){
           
            out.print(a-b); 
        } else if (request.getParameter("multi") != null){
           
            out.print(a*b); 
        }
        else if (request.getParameter("division") != null){
           
            out.print(a/b); 
        }
    }
%>