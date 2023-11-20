<%!
    int eno;
     String ename;
     float esal;
     String eadd;

    %>
    
    <%
        try
        {
            eno = Integer.parseInt(request.getParameter("eno"));
            ename = request.getParameter("ename");
            esal  = Float.parseFloat(request.getParameter("esal"));
            eadd = request.getParameter("eadd");
        }
        catch( Exception e)
        {
            e.printStackTrace();
        }

        %>
        
        <jsp:useBean id="emp" class="com.vinod.bean" type="com.vinod.bean" scope="session" >
            <jsp:setProperty name="emp" property="eno" value= '<%!eno %>' />
            <jsp:setProperty name="emp" property="ename" value= '<%!ename%>' />
            <jsp:setProperty name="emp" property="esal" value= '<%!esal %>' />
            <jsp:setProperty name="emp" property="eadd" value= '<%!eadd %>' />
            
            <<html>
                
                <body>
                    <h2>Vinod Choudhary</h2>
                    <h3>Employee Registration Deatils </h3>
                    <table border="1">
                        <tr>
                            <td> Employee Number</td>
                            <td> <jsp:getProperty name="emp" property="eno"/></td>
                        </tr>
                        <tr>
                            <td> Employee Number</td>
                            <td> <jsp:getProperty name="emp" property="eno"/></td>
                        </tr>
                    </table>
                </body>
            </html>

            
            
            <jsp:setProperty/>
                 
            
            
            
        </jsp:useBean>