<%@page import="dao.DAO"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="entity.*"%>
<%
    User auth = (User) request.getSession().getAttribute("auth");
    if (auth != null) {
        request.setAttribute("auth", auth);
    }

    ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
    List<Cart> cartProduct = null;
    if (cart_list != null) {
        DAO pDao = new DAO();
        cartProduct = pDao.getCartProducts(cart_list);
        double total = pDao.getTotalCartPrice(cart_list);
        request.setAttribute("cart_list", cart_list);
        request.setAttribute("total", total);
    }
%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Load fonts style after rendering the layout styles -->
        <script src="https://kit.fontawesome.com/337f2c85fe.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/style.css">
        <!--Link owlcarousel-->
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <title>BICYCLES SHOP</title>
    </head>

    <body>    
        <!--Video-->
        <div>
            <video src="images/clipdapxe.mp4" class="video" autoplay
                   loop muted></video>
        </div>
        <jsp:include page="menu.jsp"></jsp:include>

            <!--Start categories of the month-->
            <div class="container cate">
                <div class="row text-center pt-5">
                    <div class="col-lg-6 m-auto">
                        <h1 class="h1">New Product</h1>
                    </div>
                </div>
                <div class="categories row">
                <c:forEach items="${listTop3}" var="o">
                    <div class="content col-md-4 col-sm-6">
                        <h2 class="name">${o.name}</h2>
                        <a href="detail?id=${o.id}" class="buy">Buy now</a>
<!--                        <div class="circle"></div>-->
                        <img src="${o.image}" class="img-product">
                    </div> 
                </c:forEach>         
            </div>
        </div>
        <!--End categories of the month-->

        <!--Start -->
        <section id="slider" class="pt-5 mb-5">
            <div class="row text-center pb-5">
                <div class="col-lg-6 m-auto">
                    <h1 class="h1">Categories</h1>
                </div>
            </div>
            <div class="slider">
                <div class="owl-carousel">
                    <c:forEach var="o" items="${listCate}">
                        <div class="slider-card">
                            <a href="filterCate?cate_id=${o.cid}">
                                <div class="d-flex justify-content-center align-items-center mb-4">
                                    <img src="${o.cimage}" alt="">
                                </div>
                                <h5 class="text-center pb-3">${o.cname}</h5>
                            </a>
                        </div>    
                    </c:forEach>          
                </div>
            </div>
        </section>
        <!--End-->
        <jsp:include page="fotter.jsp"></jsp:include>

    </body>
    <!-- Start Script -->

    <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="
    crossorigin="anonymous"></script>
    <script src="scripts/index.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="scripts/vanilla-tilt.js"></script>
    <!--Owl carousel-->
    <script src="js/owl.carousel.min.js"></script>
    <script type="text/javascript">
        VanillaTilt.init(document.querySelector(".content"), {
            max: 15,
            speed: 400,
        });

        //It also supports NodeList
        VanillaTilt.init(document.querySelectorAll(".content"));
    </script>
    <!-- End Script -->
    <script>
        $(document).ready(function () {
            $(".owl-carousel").owlCarousel({
                loop: true,
                margin: 10,
                responsiveClass: true,
                center: true,
                nav: true,
                navText: [
                    "<i class='fa fa-angle-left'></i>",
                    "<i class='fa fa-angle-right'></i>",
                ],
                responsive: {
                    0: {
                        items: 1,
                    },
                    600: {
                        items: 3,
                    },
                    1000: {
                        items: 3,
                    },
                },
            });
        });

    </script>

</html>