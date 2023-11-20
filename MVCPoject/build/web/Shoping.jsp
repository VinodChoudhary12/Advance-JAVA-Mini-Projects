<%-- 
    Document   : Shoping
    Created on : Nov 18, 2023, 10:25:14 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
        integrity="sha512-…" crossorigin="anonymous" />
    <title>Document</title>
    <script type='text/javascript' src=''></script>
    <script type='text/javascript' src='https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js'></script>
    <script type='text/javascript'
        src='https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js'></script>
    
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <style>
            *{
    margin: 0;
    font-family: Arial;
     border: border-box;  /*hieht or wirth di hai usi ke andar border area cound hoga */
}
#navBackground{
    background-color: white;
    color: black !important;
    font-family: candara;
}
#firstOrder{
    background-color: whitesmoke;
}
#firstOrder img{
    border-radius: 50%;
}
#topBrand{
    background-color: white;
}
#topBrand img{
    border-radius: 30px;
}
#topBrand a{
    text-decoration: none;
    color: white;
}
#deliveryRestaurants a{
    color: white;
    text-decoration: none;
}

        </style>        



</head>

<body>
    
    <nav class="navbar navbar-expand-lg text-dark navbar-dark shadow fixed-top" id="navBackground">
        <div class="container-fluid px-4  text-light">
            <a class="navbar-brand  text-secondary" href="#">
                <h1 class="h2 fw-bolder">amazon</h1>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0 text-light">

                    <li class="nav-link ms-2">
                        <form class="d-flex position-relative">
                            <input class="form-control " type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline text-light" type="submit"><i
                                    class="fa fa-search position-absolute"
                                    style="color: orange;right: 40px; top: 0px;border-left: 1px solid black;height:38px;padding-top: 10px;padding-left: 10px;"
                                    aria-hidden="true"></i>
                            </button>
                        </form>
                    </li>

                    <li class="nav-item text-dark ms-2">
                        <a class="nav-link active fs-5  text-dark" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item text-dark ms-2">
                        <a class="nav-link fs-5  text-dark" href="#">Product</a>
                    </li>
                    <li class="nav-item ms-2">
                        <a class="nav-link disabled text-dark fs-5" href="#" tabindex="-1"
                            aria-disabled="true">Gallery</a>
                    </li>
                    <li class="nav-item text-dark ms-2">
                        <a class="nav-link active fs-5  text-dark" aria-current="page" href="UserLogin.jsp">Login</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    
    <div style="margin-top: 100px">
    
    <div class="container-fluid my-5">
        <div class="container row text-center">
            <div class="col-lg-7 col-md-12 col-sm-12">
                <img class="img-fluid h-100 w-100"
                    src="https://m.media-amazon.com/images/I/91TDtZiFW4L._AC_UY327_FMwebp_QL65_.jpg"
                    alt="">
            </div>
            <div class="col-lg-3 col-md-8 col-sm-8">
                <img class="img-fluid"
                    src="https://www.jagranimages.com/images/newimg/19052023/19_05_2023-best_fridge_brands_in_india_23417140.jpg"
                    alt="">
                <img class="container-fluid"
                    src="https://m.media-amazon.com/images/I/916acEhBkcL._AC_UL480_FMwebp_QL65_.jpg"
                    alt="">
            </div>
            <div class="col-lg-2 col-sm-4 col-md-4">
                <img class="img-fluid h-100"
                    src="https://m.media-amazon.com/images/I/51k+PK-N+hL._AC_UY327_FMwebp_QL65_.jpg"
                    alt="">
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="container">
            <h2 class="h1">McDonald's</h2>
            <span class="text-secondary">Burger, Fast Food, Beverages <br>
                Treasure Island Mall, South Tukoganj, Indore</span>
        </div>
    </div>

    <section class="pt-5">
        <div class="container">
            <div class="row">
                <div class="col-6">
                    <h3 class="mb-3">Order Online </h3>
                </div>
                <div class="col-6 text-right">
                    <a class="btn btn-primary mb-3 mr-1" href="#carouselExampleIndicators2" role="button"
                        data-slide="prev">
                        <i class="fa fa-arrow-left"></i>
                    </a>
                    <a class="btn btn-primary mb-3 " href="#carouselExampleIndicators2" role="button" data-slide="next">
                        <i class="fa fa-arrow-right"></i>
                    </a>
                </div>
                <div class="col-12">
                    <div id="carouselExampleIndicators2" class="carousel slide">

                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="row row-cols-lg-4 p-5">
                                    
                                    
                                    <div class="col mb-3">
                                        <div class="card h-100">
                                            <img class="img-fluid" alt="100%x280"
                                                src="https://m.media-amazon.com/images/I/81dT7CUY6GL._AC_UY327_FMwebp_QL65_.jpg">
                                            <div class="card-body">
                                                <h5>iPhone 15 Pro Max (256 GB) - Natural Titanium</h5>
                                                <nav aria-label="Page navigation example">
                                                    <h6 class="fw-normal text-start my-3">Price : <span class="Price">₹
                                       159900 </span></h6>
                                                    <ul class="pagination ">
                                                        <button class="page-item page-link decrease"><i
                                                                style="color: green;" class="fa fa-minus"></i></button>
                                                        <li class="page-link text-dark prototal" id="product">1</li>
                                                        <button class="page-item page-link increase"><i
                                                                style="color: green;" class="fa fa-plus"></i></button>
                                                    </ul>
                                                </nav>
                                                <h4 class="fw-normal text-end">Total : ₹<span
                                                        class="totalPriceProduct">159900 </span></h4>
                                            </div>
                                        </div>
                                    </div>

                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    <div class="col mb-3">
                                        <div class="card h-100">
                                            <img class="img-fluid" alt="100%x280"
                                                src="https://m.media-amazon.com/images/I/81c50PU+lpL._AC_UY327_FMwebp_QL65_.jpg">
                                            <div class="card-body">
                                                <h5>iPhone 15 Pro Max (256 GB) - White Titanium</h5><br>
                                                <nav aria-label="Page navigation example">
                                                    <h6 class="fw-normal text-start my-3">Price : <span class="Price">₹
                                                            159900 </span></h6>
                                                    <ul class="pagination ">
                                                        <button class="page-item page-link decrease"><i
                                                                style="color: green;" class="fa fa-minus"></i></button>
                                                        <li class="page-link text-dark prototal" id="product2">1</li>
                                                        <button class="page-item page-link increase"><i
                                                                style="color: green;" class="fa fa-plus"></i></button>
                                                    </ul>
                                                </nav>
                                                <h4 class="fw-normal text-end">Total : ₹<span
                                                        class="totalPriceProduct">159900</span></h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col mb-3">
                                        <div class="card h-100">
                                            <img class="img-fluid" alt="100%x280"
                                                src="https://m.media-amazon.com/images/I/619KDvHX9KL._AC_UY327_FMwebp_QL65_.jpg">
                                            <div class="card-body">
                                                <h5>DIZORO
Compatible with iPhone 15 Pro Max Case </h5>
                                                <nav aria-label="Page navigation example">
                                                    <h6 class="fw-normal text-start my-3">Price : <span class="Price">₹
                                                            449  </span></h6>
                                                    <ul class="pagination ">
                                                        <button class="page-item page-link decrease"><i
                                                                style="color: green;" class="fa fa-minus"></i></button>
                                                        <li class="page-link text-dark prototal" id="product3">1</li>
                                                        <button class="page-item page-link increase"><i
                                                                style="color: green;" class="fa fa-plus"></i></button>
                                                    </ul>
                                                </nav>
                                                <h4 class="fw-normal text-end">Total : ₹<span
                                                        class="totalPriceProduct">449 </span></h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col mb-3">
                                        <div class="card">
                                            <img class="img-fluid" alt="100%x280"
                                                src="https://m.media-amazon.com/images/I/71SvUu-dVXL._AC_UY327_FMwebp_QL65_.jpg">
                                            <div class="card-body">
                                                <h5>Polycarbonate+TPU Case for iPhone 15 Pro Max 6.7" Compatible with MagSafe Wireless Charging, </h5>
                                                <nav aria-label="Page navigation example">
                                                    <h6 class="fw-normal text-start my-3">Price : RS<span class="Price">
                                                            329 </span></h6>
                                                    <ul class="pagination ">
                                                        <button class="page-item page-link decrease"><i
                                                                style="color: green;" class="fa fa-minus"></i></button>
                                                        <li class="page-link text-dark prototal" id="product4">1</li>
                                                        <button class="page-item page-link increase"><i
                                                                style="color: green;" class="fa fa-plus"></i></button>
                                                    </ul>
                                                </nav>
                                                <h4 class="fw-normal text-end">Total : ₹<span
                                                        class="totalPriceProduct"> 329</span></h4>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="container-fluid ">
        <div class="container p-5 pt-0">
            <div class="p-2 pt-0">
                <h4 class="" id="totalPrice">₹ 1100 </h4>
                <button class="btn btn-success" onclick="redirectToRegistration()">Order Now</button>
            </div>
        </div>
    </div>

       <!-- Footer -->

       <footer>
      <div class="foot-panel1">Back To Top</div>
      <div class="foot-panel2">
        <ul>
          <p>Get To Know Us</p>
          <a>Careers </a>
          <a>Blog</a>
          <a>About Amazon</a>
          <a>Investor Relations</a>
          <a>Amazon Devices</a>
          <a>Amazon Science</a>
        </ul>
        <ul>
          <p>Make Money with Us</p>
          <a>Sell products on Amazon </a>
          <a>Sell on Amazon Business</a>
          <a>Sell apps on Amazon</a>
          <a>Become an Affiliate</a>
          <a>Advertise Your Products</a>
          <a>Self-Publish with Us</a>
          <a>Host an Amazon Hub</a>
          <a>See More Make Money with Us</a>
        </ul>
        <ul>
          <p>Amazon Payment Products</p>
          <a> Amazon Business Card </a>
          <a>Shop with Points</a>
          <a>Reload Your Balance</a>
          <a>Amazon Currency Converter</a>
        </ul>
        <ul>
          <p>Let Us Help You</p>
          <a>Amazon and COVID-19 </a>
          <a>Your Account</a>
          <a>Your Orders</a>
          <a>Shipping Rates & Policies</a>
          <a>Returns & Replacements</a>
          <a>Manage Your Content and Devices</a>
          <a>Amazon Assistant</a>
          <a>Help</a>
        </ul>
      </div>

      <div class="foot-panel3">
        <div class="logo"></div>
      </div>
      <div class="foot-panel4">
        <div class="pages">
          <a> Condition of Use</a>
          <a> Privicy Notice</a>
          <a> Your Ads Privicy Choices</a>
        </div>
        <div class="copyright">
          © 1996-2023, Amazon.com, Inc. or its affiliates
        </div>
      </div>
    </footer>


    <!-- Footer -->

    <script>
        var decrease = document.getElementsByClassName("decrease");
        var increase = document.getElementsByClassName("increase");
        var totalpriceallpro = document.getElementsByClassName("totalPriceProduct");

        for (var i = 0; i < decrease.length; i++) {
            decrease[i].addEventListener('click', function () {
                console.log("Decreased");
                var quantityElement = this.nextElementSibling;
                if (quantityElement.innerHTML != 0) {
                    quantityElement.innerHTML = parseInt(quantityElement.innerHTML) - 1;
                    updateProductTotal(this);
                }
            });

            increase[i].addEventListener('click', function () {
                console.log("Increased");
                var quantityElement = this.previousElementSibling;
                if (quantityElement.innerHTML != 5) {
                    quantityElement.innerHTML = parseInt(quantityElement.innerHTML) + 1;
                    updateProductTotal(this);
                }
            });
        }

        function updateProductTotal(button) {
            var quantityElement = button.parentElement.querySelector('.page-link.text-dark');
            var productInfo = button.closest('.card-body').querySelector('h5').innerText;
            var price = button.closest('.card-body').querySelector('.Price').innerText;
            var totalElement = button.closest('.card-body').querySelector('.totalPriceProduct');
            var totalPrice = parseInt(quantityElement.innerHTML) * parseInt(price.replace('₹ ', ''));
            totalElement.innerText = totalPrice;
            totalprice();
        }

        function totalprice() {
            var totalpriceofpro = 0;
            for (var i = 0; i < totalpriceallpro.length; i++) {
                var number = totalpriceallpro[i].innerHTML;
                totalpriceofpro = parseInt(number) + totalpriceofpro;
            }
            var cc = document.getElementById("totalPrice");
            cc.innerHTML = '₹' + totalpriceofpro;
            if (totalpriceofpro == 0) {
                cc.innerHTML = "";
            }
        }

        function redirectToRegistration() {
            var protot = document.getElementsByClassName("prototal");
            var price = document.getElementsByClassName("Price");
            var Product1 = protot[0].innerHTML;
            var Product2 = protot[1].innerHTML;
            var Product3 = protot[2].innerHTML;
            var Product4 = protot[3].innerHTML;

            var price1 = price[0].innerText;
            var price2 = price[1].innerText;
            var price3 = price[2].innerText;
            var price4 = price[3].innerText;

            var url = "invoice.jsp";

            for(var i=0;i<totalpriceallpro.length;i++){
                if(totalpriceallpro[i].innerHTML!==0){
                    url += "?Product"+i+"=" + encodeURIComponent(protot[i].innerHTML) + "&Price1=" + encodeURIComponent( price[i].innerText);
                }
            }

            // url += "?Product1=" + encodeURIComponent(Product1) + "&Price1=" + encodeURIComponent(price1);
            // url += "&Product2=" + encodeURIComponent(Product2) + "&Price2=" + encodeURIComponent(price2);
            // url += "&Product3=" + encodeURIComponent(Product3) + "&Price3=" + encodeURIComponent(price3);
            // url += "&Product4=" + encodeURIComponent(Product4) + "&Price4=" + encodeURIComponent(price4);


            window.location.href = url;
        }

    </script>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous"></script>
</div>
</body>

</html>
