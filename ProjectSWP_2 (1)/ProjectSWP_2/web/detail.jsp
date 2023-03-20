<%@page import="java.text.DecimalFormat"%>
<%@page import="dao.DAO"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="entity.*"%>
<%
    DecimalFormat df = new DecimalFormat("#.##");
    request.setAttribute("df", df);
    
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
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Detail</title>
        <!--Link css and bt-->
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="https://kit.fontawesome.com/337f2c85fe.js" crossorigin="anonymous"></script>
    </head>

    <body>
        <jsp:include page="menu.jsp"></jsp:include>

            <div class="main-wrapper">
                <div class="container container-detail">
                    <div class="product-div">
                        <div class="product-div-left">
                            <div class="img-container">
                                <img src="${detail.image}" alt="" class="img-item">
                        </div>
                        <div class="hover-container">
                            <c:forEach items="${image_product}" var="c">
                                <div><img src="${c.img}" alt=""
                                          class="img-item"></div>
                                </c:forEach>

                        </div>
                    </div>
                    <div class="product-div-right">
                        <span class="product-name-detail">${detail.name}</span>
                        <span class="product-price-detail">₫ ${df.format(detail.price)}</span>
                        <p class="product-description">${detail.description}</p>
                        <div class="btn-group-detail">
                            <a href="add-to-cart?id=${detail.id}" class="text-decoration-none">
                                <button type="submit" class="add-cart-btn">
                                    <i class="fas fa-shopping-cart"> Add to cart</i>
                                </button>
                            </a>
<!--                            <a href="order-now?quantity=1&id=${detail.id}" class="text-decoration-none">
                                <button type="submit" class="buy-now-btn">
                                    <i class="fas fa-wallet"> Buy now</i>
                                </button>
                            </a>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="fotter.jsp"></jsp:include>
    </body>
    <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="
    crossorigin="anonymous"></script>
    <script src="scripts/index.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="scripts/detail.js"></script>


</html>
