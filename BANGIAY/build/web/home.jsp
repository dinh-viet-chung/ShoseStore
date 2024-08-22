 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="zxx" class="no-js">

    <head>
        <!-- Mobile Specific Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Favicon-->
        <link rel="shortcut icon" href="img/fav.png">
        <!-- Author Meta -->
        <meta name="author" content="CodePixar">
        <!-- Meta Description -->
        <meta name="description" content="">
        <!-- Meta Keyword -->
        <meta name="keywords" content="">
        <!-- meta character set -->
        <meta charset="UTF-8">
        <!-- Site Title -->
        <title>shoes </title>
        <!--
                CSS
                ============================================= -->
        <link rel="stylesheet" href="css/linearicons.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/themify-icons.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/nice-select.css">
        <link rel="stylesheet" href="css/nouislider.min.css">
        <link rel="stylesheet" href="css/ion.rangeSlider.css" />
        <link rel="stylesheet" href="css/ion.rangeSlider.skinFlat.css" />
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    </head>

    <body>

        <!-- Start Header Area -->
        <header class="header_area sticky-header">
            <div class="main_menu">
                <nav class="navbar navbar-expand-lg navbar-light main_box">
                    <div class="container">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <a class="navbar-brand " href="home">
                            <span style="color: orange">
                                store 
                            </span>
                        </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                            <ul class="nav navbar-nav menu_nav ml-auto">

                                <li class="nav-item active"><a class="nav-link" href="home">Home</a></li>




                                <li class="nav-item submenu dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                                       aria-expanded="false">Shop</a>
                                    <ul class="dropdown-menu">
                                        <li class="nav-item"><a class="nav-link" href="category">Shop Category</a></li>
                                        <li class="nav-item"><a class="nav-link" href="checkout.jsp">Product Checkout</a></li>
                                        <li class="nav-item"><a class="nav-link" href="cart.jsp">Shopping Cart</a></li>
                                        <li class="nav-item"><a class="nav-link" href="confirmation.jsp">Confirmation</a></li>
                                    </ul>
                                </li>

                                <li class="nav-item submenu dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                                       aria-expanded="false">Blog</a>
                                    <ul class="dropdown-menu">
                                        <li class="nav-item"><a class="nav-link" href="blog.jsp">Blog</a></li>
                                        <li class="nav-item"><a class="nav-link" href="single-blog.jsp">Blog Details</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item submenu dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                                       aria-expanded="false">Pages</a>
                                    <ul class="dropdown-menu">
                                        <li class="nav-item"><a class="nav-link" href="signUp.jsp">Sinup</a></li>
                                            <c:if test="${sessionScope.acc == null}">
                                            <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
                                            </c:if>
                                            
                                        <li class="nav-item"><a class="nav-link" href="tracking.jsp">Tracking</a></li>
                                        <li class="nav-item"><a class="nav-link" href="elements.jsp">Elements</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
                                <c:if test="${sessionScope.acc != null}">
                                            <li class="nav-item"><a class="nav-link " href="login.jsp">LogOut</a></li>
                                            </c:if>

                                <c:if test="${sessionScope.acc != null}">
                                    <li class="nav-item submenu dropdown"><a class="nav-link" href="profile?id=${sessionScope.acc.getId()}">WELCOME - ${sessionScope.acc.userName}</a></li>
                                    </c:if>

                                <c:if test="${sessionScope.acc.getRoleID() == 1}">
                                    <li class="nav-item submenu dropdown"><a class="nav-link" href="manager">Manager-Product</a></li>
                                    </c:if>
                                    
                                     <c:if test="${sessionScope.acc.getRoleID() == 1}">
                                    <li class="nav-item submenu dropdown"><a class="nav-link" href="custom">Manager-Customer</a></li>
                                    </c:if>

                            </ul>

                             
                            <ul class="nav navbar-nav navbar-right">
                                


                                <li class="nav-item">
                                    <button class="search"><span class="lnr lnr-magnifier" id="search"></span></button>
                                </li>
                            </ul>

                        </div>
                    </div>
                </nav>
            </div>

            <jsp:include page="menu.jsp"></jsp:include>
                <!-- End Header Area 

            <div class="container">

                <form action="search" method="post" class="d-flex justify-content-between" >
                    <input name="txt" type="text" class="form-control" id="search_input" placeholder="Search Here">
                    <button type="submit" class="btn"></button>
                    <span class="lnr lnr-cross" id="close_search" title="Close Search"></span>

                </form>
            </div>-->



            </header>
            <!-- End Header Area -->


            <!-- /////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->


            <!-- start banner Area -->
            <section class="banner-area">
                <div class="container">
                    <div class="row fullscreen align-items-center justify-content-start">
                        <div class="col-lg-12">
                            <div class="active-banner-slider owl-carousel">
                                <!-- single-slide -->
                                <div class="row single-slide align-items-center d-flex">
                                    <div class="col-lg-5 col-md-6">
                                        <div class="banner-content">
                                            <h1>ChungShoe<br>Collection!</h1>
                                            <p>Chúng tôi là đại diện cho sự hoàn chỉnh, không ngừng phấn đấu để mang đến cho khách hàng những sản phẩm vượt trội về chất lượng và thiết kế. Được làm từ những nguyên liệu tốt nhất, mỗi đôi giày của chúng tôi là kết quả của sự tôn trọng đối với nghệ thuật làm giày và cam kết về sự thoải mái cho đôi chân của bạn.</p>
                                            <div class="add-bag d-flex align-items-center">
                                                <a class="add-btn" href="category"><span class="lnr lnr-cross"></span></a>
                                                <a href="category"> <span class="add-text text-uppercase"  >Shopping Now!</span></a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="logo">
                                        <img class="logo__image" src="img/banner/nguyen.png" />
                                        <span class="logo__text">Hoàn hảo đến từng sản phẩm</span>
                                    </div>

                                </div>
                                <!-- single-slide -->
                                <div class="row single-slide">
                                    <div class="col-lg-5">
                                        <div class="banner-content">
                                            <h1>Nike New <br>Collection!</h1>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et
                                                dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
                                            <div class="add-bag d-flex align-items-center">
                                                <a class="add-btn" href=""><span class="lnr lnr-cross"></span></a>
                                                <span class="add-text text-uppercase">Add to Bag</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <div class="banner-img">
                                            <img class="img-fluid" src="img/banner/banner-img.png" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End banner Area -->

            <!-- start features Area -->
            <section class="features-area section_gap">
                <div class="container">
                    <div class="row features-inner">
                        <!-- single features -->
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="single-features">
                                <div class="f-icon">
                                    <img src="img/features/f-icon1.png" alt="">
                                </div>
                                <h6>Free Delivery</h6>
                                <p>Free Shipping on all order</p>
                            </div>
                        </div>
                        <!-- single features -->
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="single-features">
                                <div class="f-icon">
                                    <img src="img/features/f-icon2.png" alt="">
                                </div>
                                <h6>Return Policy</h6>
                                <p>Free Shipping on all order</p>
                            </div>
                        </div>
                        <!-- single features -->
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="single-features">
                                <div class="f-icon">
                                    <img src="img/features/f-icon3.png" alt="">
                                </div>
                                <h6>24/7 Support</h6>
                                <p>Free Shipping on all order</p>
                            </div>
                        </div>
                        <!-- single features -->
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="single-features">
                                <div class="f-icon">
                                    <img src="img/features/f-icon4.png" alt="">
                                </div>
                                <h6>Secure Payment</h6>
                                <p>Free Shipping on all order</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- end features Area -->

            <!-- Start category Area -->
            <section class="category-area">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-8 col-md-12">
                            <div class="row">
                                <div class="col-lg-8 col-md-8">
                                    <div class="single-deal">
                                        <div class="overlay"></div>
                                        <img class="img-fluid w-100" src="img/category/c1.jpg" alt="">
                                        <a href="img/category/c1.jpg" class="img-pop-up" target="_blank">
                                            <div class="deal-details">
                                                <h6 class="deal-title">Sneaker for Sports</h6>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <div class="single-deal">
                                        <div class="overlay"></div>
                                        <img class="img-fluid w-100" src="img/category/c2.jpg" alt="">
                                        <a href="img/category/c2.jpg" class="img-pop-up" target="_blank">
                                            <div class="deal-details">
                                                <h6 class="deal-title">Sneaker for Sports</h6>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4">
                                    <div class="single-deal">
                                        <div class="overlay"></div>
                                        <img class="img-fluid w-100" src="img/category/c3.jpg" alt="">
                                        <a href="img/category/c3.jpg" class="img-pop-up" target="_blank">
                                            <div class="deal-details">
                                                <h6 class="deal-title">Product for Couple</h6>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-lg-8 col-md-8">
                                    <div class="single-deal">
                                        <div class="overlay"></div>
                                        <img class="img-fluid w-100" src="img/category/c4.jpg" alt="">
                                        <a href="img/category/c4.jpg" class="img-pop-up" target="_blank">
                                            <div class="deal-details">
                                                <h6 class="deal-title">Sneaker for Sports</h6>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="single-deal">
                                <div class="overlay"></div>
                                <img class="img-fluid w-100" src="img/giay/${c.img}" alt="">
                            <a href="" class="img-pop-up" target="_blank">
                                <div class="deal-details">
                                    <h6 class="deal-title"> <a href="category">Black Friday</a></h6>
                                </div>
                            </a>
                        </div>
                        <div class="add-bag d-flex align-items-center" style="margin-left: 80px;">
                            <a class="add-btn" href="category"><span class="lnr lnr-cross"></span></a>
                            <a href="category"> <span class="add-text text-uppercase"  >Detail!</span></a>
                        </div>
                    </div>

                </div>
            </div>
        </section>
        <!-- End category Area -->

        <!-- start product Area -->

        <%--   /////////////////////////////////////////////////////////////////////////////////////////--%>

        <!-- single product slide -->
        <div class="single-product-slider">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-6 text-center">
                        <div class="section-title">
                            <h1>Sản Phẩm by Chungshoes</h1>
                            <p>Dòng sản phẩm này phản ánh tinh thần của sự đổi mới và sáng tạo, đồng thời đáp ứng đa dạng nhu cầu của người sử dụng từ hoạt động thể thao đến sử dụng hàng ngày. </p>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <!-- single product -->
                    <c:forEach items="${listP}" var="o">
                        <div class="col-lg-3 col-md-6">
                            <div class="single-product">
                                <img class="img-fluid" src="img/giay/${o.img}" alt="card image cap">
                                <div class="product-details">

                                    <h6><a a href="detail?pid=${o.id}" title="View Product">${o.nameP}</a></h6>
                                    <div class="price">
                                        <h6>${o.price}</h6>
                                        <h6 class="l-through">$210.00</h6>
                                    </div>
                                    
                                    <div class="prd-bottom">
                                        <c:if test="${sessionScope.acc.getRoleID() == 0}">
                                            <a href="buy?id=${o.id}" class="social-info">
                                                <span class="icon-cart"><i class="fa-solid fa-cart-shopping"></i></span>
                                                <p class="hover-text">add to bag</p>
                                            </a>
                                        </c:if>
                                        <c:if test="${sessionScope.acc.getRoleID() == 1}">
                                            <a href="loadProduct?pid=${o.id}" class="social-info">
                                                <span class="icon-cart"><i class="fa-regular fa-pen-to-square"></i></i></span>
                                                <p class="hover-text">EDIT</p>
                                            </a>
                                        </c:if>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>




        <!-- Start exclusive deal Area -->
        <section class="exclusive-deal-area">
            <div class="container-fluid">
                <div class="row justify-content-center align-items-center">
                    <div class="col-lg-6 no-padding exclusive-left">
                        <div class="row clock_sec clockdiv" id="clockdiv">
                            <div class="col-lg-12">
                                <h1>Exclusive Hot Deal Ends Soon!</h1>
                                <p>Who are in extremely love with eco friendly system.</p>
                            </div>
                            <div class="col-lg-12">
                                <div class="row clock-wrap">
                                    <div class="col clockinner1 clockinner">
                                        <h1 class="days">150</h1>
                                        <span class="smalltext">Days</span>
                                    </div>
                                    <div class="col clockinner clockinner1">
                                        <h1 class="hours">23</h1>
                                        <span class="smalltext">Hours</span>
                                    </div>
                                    <div class="col clockinner clockinner1">
                                        <h1 class="minutes">47</h1>
                                        <span class="smalltext">Mins</span>
                                    </div>
                                    <div class="col clockinner clockinner1">
                                        <h1 class="seconds">59</h1>
                                        <span class="smalltext">Secs</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a href="category" class="primary-btn">Shop Now</a>
                    </div>
                    <div class="col-lg-6 no-padding exclusive-right">
                        <!-- single exclusive carousel -->
                        <div class="single-exclusive-slider">
                            <img class="img-fluid" src="img/giay/${c.img}" alt="ok">
                            <div class="product-details">
                                <div class="price">
                                    <h6>${c.price}</h6>
                                    <h6 class="l-through">$210.00</h6>
                                </div>
                                <h4><a a href="detail?pid=${c.id}" title="View Product">${c.nameP}</a></h4>

                                <div class="add-bag d-flex align-items-center justify-content-center">
                                    <a class="add-btn" href=""><span class="ti-bag"></span></a>
                                    <span class="add-text text-uppercase">Add to Bag</span>
                                </div>
                            </div>
                            <h1>BEST SELLER</h1>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End exclusive deal Area -->

        <!-- Start brand Area -->
        <section class="brand-area section_gap">

        </section>
        <!-- End brand Area -->

        <!-- Start related-product Area -->
        <section class="related-product-area section_gap_bottom">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-6 text-center">
                        <div class="section-title">
                            <h1>Deals of the Week</h1>
                            <p>ƯU ĐÃI LÂU GIẢM GIÁ SÂU</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-9">
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-6 mb-20">
                                <div class="single-related-product d-flex">
                                    <a href="#"><img src="img/r1.jpg" alt=""></a>
                                    <div class="desc">
                                        <a href="#" class="title">Black lace Heels</a>
                                        <div class="price">
                                            <h6>$189.00</h6>
                                            <h6 class="l-through">$210.00</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-6 mb-20">
                                <div class="single-related-product d-flex">
                                    <a href="#"><img src="img/r2.jpg" alt=""></a>
                                    <div class="desc">
                                        <a href="#" class="title">Black lace Heels</a>
                                        <div class="price">
                                            <h6>$189.00</h6>
                                            <h6 class="l-through">$210.00</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-6 mb-20">
                                <div class="single-related-product d-flex">
                                    <a href="#"><img src="img/r3.jpg" alt=""></a>
                                    <div class="desc">
                                        <a href="#" class="title">Black lace Heels</a>
                                        <div class="price">
                                            <h6>$189.00</h6>
                                            <h6 class="l-through">$210.00</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-6 mb-20">
                                <div class="single-related-product d-flex">
                                    <a href="#"><img src="img/r5.jpg" alt=""></a>
                                    <div class="desc">
                                        <a href="#" class="title">Black lace Heels</a>
                                        <div class="price">
                                            <h6>$189.00</h6>
                                            <h6 class="l-through">$210.00</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-6 mb-20">
                                <div class="single-related-product d-flex">
                                    <a href="#"><img src="img/r6.jpg" alt=""></a>
                                    <div class="desc">
                                        <a href="#" class="title">Black lace Heels</a>
                                        <div class="price">
                                            <h6>$189.00</h6>
                                            <h6 class="l-through">$210.00</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-6 mb-20">
                                <div class="single-related-product d-flex">
                                    <a href="#"><img src="img/r7.jpg" alt=""></a>
                                    <div class="desc">
                                        <a href="#" class="title">Black lace Heels</a>
                                        <div class="price">
                                            <h6>$189.00</h6>
                                            <h6 class="l-through">$210.00</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-6">
                                <div class="single-related-product d-flex">
                                    <a href="#"><img src="img/r9.jpg" alt=""></a>
                                    <div class="desc">
                                        <a href="#" class="title">Black lace Heels</a>
                                        <div class="price">
                                            <h6>$189.00</h6>
                                            <h6 class="l-through">$210.00</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-6">
                                <div class="single-related-product d-flex">
                                    <a href="#"><img src="img/r10.jpg" alt=""></a>
                                    <div class="desc">
                                        <a href="#" class="title">Black lace Heels</a>
                                        <div class="price">
                                            <h6>$189.00</h6>
                                            <h6 class="l-through">$210.00</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-6">
                                <div class="single-related-product d-flex">
                                    <a href="#"><img src="img/r11.jpg" alt=""></a>
                                    <div class="desc">
                                        <a href="#" class="title">Black lace Heels</a>
                                        <div class="price">
                                            <h6>$189.00</h6>
                                            <h6 class="l-through">$210.00</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="ctg-right">
                            <a href="#" target="_blank">
                                <img class="img-fluid d-block mx-auto" src="img/category/c5.jpg" alt="">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End related-product Area -->

        <!-- start footer Area -->
        <footer class="footer-area section_gap">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3  col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h6>About Us</h6>
                            <p>
                                Tận tâm với từng sản phẩm là trách nghiệm và bổn phận của chúng tôi với khách hàng của mình.<br> 
                                "Chungstore không lo về giá!".
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-4  col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h6>Newsletter</h6>
                            <p>Stay update with our latest</p>
                            <div class="" id="mc_embed_signup">

                                <form target="_blank" novalidate="true" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
                                      method="get" class="form-inline">

                                    <div class="d-flex flex-row">

                                        <input class="form-control" name="EMAIL" placeholder="Enter Email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Email '"
                                               required="" type="email">


                                        <button class="click-btn btn btn-default"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></button>
                                        <div style="position: absolute; left: -5000px;">
                                            <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
                                        </div>

                                        <!-- <div class="col-lg-4 col-md-4">
                                                                <button class="bb-btn btn"><span class="lnr lnr-arrow-right"></span></button>
                                                        </div>  -->
                                    </div>
                                    <div class="info"></div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3  col-md-6 col-sm-6">
                        <div class="single-footer-widget mail-chimp">
                            <h6 class="mb-20">Instragram Feed</h6>
                            <ul class="instafeed d-flex flex-wrap">
                                <li><img src="img/i1.jpg" alt=""></li>
                                <li><img src="img/i2.jpg" alt=""></li>
                                <li><img src="img/i3.jpg" alt=""></li>
                                <li><img src="img/i4.jpg" alt=""></li>
                                <li><img src="img/i5.jpg" alt=""></li>
                                <li><img src="img/i6.jpg" alt=""></li>
                                <li><img src="img/i7.jpg" alt=""></li>
                                <li><img src="img/i8.jpg" alt=""></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h6>Follow Us</h6>
                            <p>Let us be social</p>
                            <div class="footer-social d-flex align-items-center">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-dribbble"></i></a>
                                <a href="#"><i class="fa fa-behance"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-bottom d-flex justify-content-center align-items-center flex-wrap">
                    <p class="footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Made by Chungstore &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved 

                    </p>
                </div>
            </div>
        </footer>
        <!-- End footer Area -->

        <script src="js/vendor/jquery-2.2.4.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
        crossorigin="anonymous"></script>
        <script src="js/vendor/bootstrap.min.js"></script>
        <script src="js/jquery.ajaxchimp.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/nouislider.min.js"></script>
        <script src="js/countdown.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <!--gmaps Js-->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
        <script src="js/gmaps.min.js"></script>
        <script src="js/main.js"></script>
        <script>
            let logout = document.querySelector('.rmsess');
            logout.addEventListener('click',()=>{
                <% 
                    HttpSession sess = request.getSession();
                    sess.removeAttribute("list");
                            sess.removeAttribute("total");

                %>
            });
        </script>
    </body>
    
</html>
