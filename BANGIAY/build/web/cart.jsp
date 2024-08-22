 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
        <title>Shoe</title>

        <!--
                CSS
                ============================================= -->
        <link rel="stylesheet" href="css/linearicons.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/themify-icons.css">
        <link rel="stylesheet" href="css/nice-select.css">
        <link rel="stylesheet" href="css/nouislider.min.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/main.css">
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        
          

   </head>

    <body>
       
        <!-- Start Header Area -->
        <header class="header_area sticky-header">
            <div class="main_menu">
                <nav class="navbar navbar-expand-lg navbar-light main_box">
                    <div class="container">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <a class="navbar-brand logo_h" href="home"> <span style="color: orange">
                                store 
                            </span></a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                            <ul class="nav navbar-nav menu_nav ml-auto">
                                <li class="nav-item"><a class="nav-link" href="home">Home</a></li>
                                <li class="nav-item submenu dropdown active">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                                       aria-expanded="false">Shop</a>
                                    <ul class="dropdown-menu">
                                        <li class="nav-item"><a class="nav-link" href="category">Shop Category</a></li>

                                        <li class="nav-item"><a class="nav-link" href="checkout.jsp">Product Checkout</a></li>
                                        <li class="nav-item active"><a class="nav-link" href="cart.jsp">Shopping Cart</a></li>
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
                                        <li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>
                                            <c:if test="${sessionScope.acc != null}">
                                            <li class="nav-item"><a class="nav-link" href="login.jsp">LogOut</a></li>
                                            </c:if>
                                        <li class="nav-item"><a class="nav-link" href="tracking.jsp">Tracking</a></li>
                                        <li class="nav-item"><a class="nav-link" href="elements.jsp">Elements</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
                                    <c:if test="${sessionScope.acc != null}">
                                    <li class="nav-item submenu dropdown"><a class="nav-link" href="profile?id=${sessionScope.acc.getId()}">WELCOME - ${sessionScope.acc.userName}</a></li>
                                    </c:if>

                                <c:if test="${sessionScope.acc.getRoleID() == 1}">
                                    <li class="nav-item submenu dropdown"><a class="nav-link" href="manager">Manager-Product</a></li>
                                    </c:if>
                            </ul>
                            <c:set value="${sessionScope.list.size()}" var="q"/> 

                            <ul class="nav navbar-nav navbar-right">
                                <li class="nav-item"><a href="cart.jsp" class="cart"><img src="img/avatar/cart.png" style="height: 30px;margin-top: 20px"> ${q}   </a></li>

                                <li class="nav-item">
                                    <button class="search"><span class="lnr lnr-magnifier" id="search"></span></button>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
            <jsp:include page="menu.jsp"></jsp:include>

            </header>
            <!-- End Header Area -->

            <!-- Start Banner Area -->
            <section class="banner-area organic-breadcrumb">
                <div class="container">
                    <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                        <div class="col-first">
                            <h1>Shopping Cart</h1>
                            <nav class="d-flex align-items-center">
                                <a href="home">Home<span class="lnr lnr-arrow-right"></span></a>
                                <a href="category.jsp">Cart</a>
                            </nav>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End Banner Area -->

            <!--================Cart Area =================-->
            <section class="cart_area">
                <div class="container">
                    <div class="cart_inner">
                        <div class="table-responsive">
                            <table class="table">

                                <thead>
                                    <tr>
                                        <th scope="col">Product</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Quantity</th>
                                        <th scope="col">Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${sessionScope.list}" var="l">
                                    <tr>
                                        <td>
                                            <div class="media">
                                                <div class="d-flex">
                                                    <img src="img/giay/${l.product.img}" alt="">
                                                </div>
                                                <div class="media-body">
                                                    <p>${l.product.nameP}</p>
                                                </div>
                                            </div>
                                        </td>
                                        <td>
                                            <h5>${l.product.price}</h5>
                                        </td>
                                        <td>
                                            <div class="product_count">
                                                <input type="text" name="quan" id="sst" maxlength="12" value="${sessionScope.quantity}" title="Quantity:"
                                                       class="input-text qty">
                                                <button onclick="var result = document.getElementById('sst');
                                                        var sst = result.value;
                                                        if (!isNaN(sst))
                                                            result.value++;
                                                        return false;"
                                                        class="increase items-count" type="button"><i class="lnr lnr-chevron-up"></i></button>
                                                <button onclick="var result = document.getElementById('sst'); 
                                                    var sst = result.value;
                                                    if (!isNaN(sst) && sst > 0)
                                                        result.value--;
                                                        return false;"
                                                        class="reduced items-count" type="button"><i class="lnr lnr-chevron-down"></i></button>
                                            </div>
                                        </td>

                                        <td>
                                            <h5>${l.product.price}</h5>
                                        </td>
                                        <td>
                                <li class="nav-item"><a href="deletee?id=${l.product.id}" class="cart"><img src="img/avatar/dele2.png" title="Delete" style=" height: 30px; margin-top: 0px"> </a></li>

                                </td>
                                </tr>
                                 
                            </c:forEach>


                            <tr>
                                <td>

                                </td>
                                <td>

                                </td>
                            <c:set value="${sessionScope.total}" var="o"></c:set>
                            
                                <td>
                                    <h5>Subtotal</h5>
                                </td>
                                <td>
                                    <h5>${o}</h5>
                                    
                                </td>
                            </tr>

                            <tr class="out_button_area">
                                <td>

                                </td>
                                <td>

                                </td>
                                <td>

                                </td>
                                <td>
                                    <div class="checkout_btn_inner d-flex align-items-center">
                                        <a class="gray_btn" href="category">Continue Shopping</a>
                                        <a class="primary-btn" href="check">Proceed to checkout</a>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>
        <!--================End Cart Area =================-->

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

                                        <input class="form-control" name="EMAIL" placeholder="Enter Email" onfocus="this.placeholder = ''"
                                               onblur="this.placeholder = 'Enter Email '" required="" type="email">


                                        <button class="click-btn btn btn-default"><i class="fa fa-long-arrow-right"
                                                                                     aria-hidden="true"></i></button>
                                        <div style="position: absolute; left: -5000px;">
                                            <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value=""
                                                   type="text">
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
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <!--gmaps Js-->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
        <script src="js/gmaps.min.js"></script>
        <script src="js/main.js"></script>
    </body>

</html>
