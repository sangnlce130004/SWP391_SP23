<%@page import="java.text.DecimalFormat"%>
<%@page import="dao.DAO"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="entity.*"%>
<%
    DecimalFormat df = new DecimalFormat("###,###");
    request.setAttribute("df", df);

    User auth = (User) request.getSession().getAttribute("auth");
    if (auth != null) {
        request.setAttribute("auth", auth);
    }

    ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
    if (cart_list != null) {
        request.setAttribute("cart_list", cart_list);
    }
%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <title>Document</title>
        <link rel="stylesheet" href="css/style.css">
        <script src="https://kit.fontawesome.com/337f2c85fe.js" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
                integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
                integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    </head>

    <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <div class="bg-light py-3 linkShop">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 mb-0"><a href="home" class="text-decoration-none">Home</a> <span
                                class="mx-2 mb-0">/</span> <strong class="text-black">Shop</strong></div>
                    </div>
                </div>
            </div>

            <!--Start products-->
            <div class="container">
                <div class="row">
                    <div class="col-md-3">               
                        <div class="border p-4 rounded mb-4">
                            <h3 class="mb-3 h6 text-uppercase text-black d-block">Categories</h3>
                            <ul class="list-unstyled mb-0">
                            <c:forEach items="${listCate}" var="o">
                                <li class="mb-1">
                                    <a href="filterCate?cate_id=${o.cid}" class="d-flex text-decoration-none"><span
                                            class="cateDetail">${o.cname}</span>

                                        <c:forEach items="${listAmountProducts}" var="i">
                                            <c:if test="${i.category_id == o.cid}">
                                                <span class="text-black ml-auto text-decoration-none">
                                                    (${i.total})
                                                </span>
                                            </c:if>
                                        </c:forEach>
                                    </a> 
                                </li>
                            </c:forEach>                                         
                        </ul>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="row">
                        <div class="col-md-12 mb-5 d-flex justify-content-between">
                            <div class="float-md-left mb-4">
                                <h2 class="text-black h5">Shop All</h2>
                            </div>
                            <div class="d-flex">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-secondary btn-sm dropdown-toggle"
                                            id="dropdownMenuReference" data-toggle="dropdown">Reference</button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuReference">
<!--                                        <a class="dropdown-item" href="#">Relevance</a>-->
                                        <a class="dropdown-item" href="loadmore?action=AZ">Name, A to Z</a>
                                        <a class="dropdown-item" href="loadmore?action=ZA">Name, Z to A</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="loadmore?action=lth">Price, low to high</a>
                                        <a class="dropdown-item" href="loadmore?action=htl">Price, high to low</a>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="row mb-4 product-items">
                        <c:forEach items="${listP}" var="o">                       
                            <!--Single product-->
                            <div class="col-sm-6 col-lg-4 mb-4 product" data-aos="fade-up" data-aos-delay="50" data-aos-duration="1000">
                                <div class="product-content">
                                    <div class="product-img">
                                        <a href="detail?id=${o.id}"><img
                                                src="${o.image}"
                                                alt="Image placeholder" class="img-fluid img-responsive"></a>
                                    </div>
                                    <div class="product-btns">
                                        <a href="add-to-cart?id=${o.id}" class="text-decoration-none">
                                            <button type="submit" class="btn-cart">Add to carts <span><i
                                                        class="fas fa-plus"></i></span></button>
                                        </a>
<!--                                        <a href="order-now?quantity=1&id=${o.id}" class="text-decoration-none">
                                            <button type="submit" class="btn-buy">Buy now
                                                <span><i class="fas fa-shopping-cart"></i></span></button>
                                        </a>-->
                                    </div>
                                </div>
                                <div class="product-info">
                                    <div class="product-info-top">
                                        <c:forEach items="${listCate}" var="i">
                                            <c:if test="${o.cate_id == i.cid}">
                                                <a href="filterCate?cate_id=${i.cid}" class="text-decoration-none title-product-name">${i.cname}</a>
                                            </c:if>
                                        </c:forEach>
                                        <p class="stock">Stocking</p>
                                    </div>
                                    <p class="product-name">${o.name}</p>
                                    <p class="product-price">₫${df.format(o.price)}</p>
                                </div>
                            </div>
                            <!--End single product-->
                        </c:forEach>
                    </div>
                    <div class="row" data-aos="fade-up">
                        <div class="col-md-12 text-center">
                            <div class="site-block-27">
                                <ul>  
                                    <!--Home shop page--> 
                                    <c:if test="${isPage eq 'HomeShop'}">
                                        <li><a href="shop?index=${index-1}">&lt;</a></li>
                                            <c:forEach begin="1" end="${endP}" var="o">
                                            <li class="${index == o?"active":""}"><a href="shop?index=${o}">${o}</a></li>                                
                                            </c:forEach>
                                        <li><a href="shop?index=${index+1}">&gt;</a></li>     
                                        </c:if>
                                    <!--Cate page-->
                                    <c:if test="${isPage eq 'CateShop'}">
                                        <li><a href="filterCate?index=${index-1}&cate_id=${cate_id}">&lt;</a></li>
                                            <c:forEach begin="1" end="${endP}" var="o">
                                            <li class="${index == o?"active":""}"><a href="filterCate?index=${o}&cate_id=${cate_id}">${o}</a></li>                                
                                            </c:forEach>
                                        <li><a href="filterCate?index=${index+1}&cate_id=${cate_id}">&gt;</a></li>     
                                        </c:if>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--End products-->
    <jsp:include page="fotter.jsp"></jsp:include>
</body>
<script src="js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="
crossorigin="anonymous"></script>
<script src="scripts/index.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
<script>
    AOS.init({
        once: false
    });
</script>
</html>