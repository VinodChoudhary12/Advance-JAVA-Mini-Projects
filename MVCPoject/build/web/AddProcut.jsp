
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #head {
       width: 100%;
       padding: 15px;
       background: grey;
       display: flex;
       align-items: center;
       justify-content: center;
      
      }
      #head div {
      font-size: 20px;
      color: white;
      }
      nav {
      top: 0;
      left: 0;
      width: 100%;
      padding: 15px;
      background: teal;
    
      
      }
       .nav-content {
         height: 100%;
         margin: auto;
         display: flex;
         align-items: center;
         justify-content: space-between;
       }
       .logo a {
         font-weight: 500;
         font-size: 35px;
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
         margin: 8px;
         
       }
       .nav-links li a {
         text-decoration: none;
         color: white;
         font-size: 18px;
         font-weight: 500;
        padding: 10px 4px;
       }
       .nav-links li a:hover {
         color: black;
       }
       .middle
       {
            height: 700px;
            width: 60%;
            margin: 50px auto;
            border: 2px solid black;
            display: flex;
            justify-content: space-between;
            flex-direction: column;
            font-family: Arial, Helvetica, sans-serif
            

       }
       #btn
       {
        height: 40px;
        width: 100%;
        background-color: teal;
        color: white;
       }
       input,select
       {
            height: 30px;
            width: 190px;
       }
       
            </style>
    </head>
    <body>
         <nav>
            <div class='nav-content'>
              <div class='logo'>
                <a href='#'>My DashBoard</a>
              </div>
              <ul class='nav-links'>
                <li><a href='#'>DashBoard</a></li>
                <li><a href='#'>report</a></li>
                <li><a href='AllProduct.jsp'>all Product</a></li>
                
                  <li><a href='ProfilePage.jsp'><i class='fas fa-profile'></a></li>
                <li><a href='#'>Contact</a></li>
                
      
      
  
              </ul>
            </div>
          </nav>
        
        <form action="AddProduct"> 
        
          <div class="middle">
            <h2>Add Product</h2>
            <div>
                <h2>Product Name</h2>
                <input type="text" name="ProductName">
            </div>
            <div>
                <h2>Desciption</h2>
                <input type="text" name="Desciption">
          </div>
          <div>
            <h2>Category</h2>
            <select name="Category" id="">
                <option value="">Select Category</option>
                <option value="NewArrival">New Arrival</option>
                <option value="MostPopular">Most Popular</option>
                <option value="Recommended">Recommended</option>
            </select>

        </div>
            <div>
            <h2>date</h2>
            <input type="datetime-local" name="date">
            <h2>Prize</h2>
            <input type="number" min="0" name="prize">
        </div>
       
        <input type="submit" value="ADD PRODUCT NOW" id="btn">

          </div>



          </form>
    </body>
</html>
