<%@page import="java.text.DecimalFormat"%>
<%@page import="dao.DAO"%>
<%@page import="java.util.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <title>Cart</title>
        <link rel="stylesheet" href="css/cart.css">
        <script src="https://kit.fontawesome.com/337f2c85fe.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/style.css">
        <!--Link owlcarousel-->
        <link rel="stylesheet" href="css/owl.carousel.min.css">
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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <!--Cart-->
            <section id="cart-home" class="pt-5 mt-5 container">
                <h2 class="font-weight-bold pt-5">Shopping Cart</h2><hr>
            </section>

            <section id="cart-container" class="container my-5">
                <table width="100%">
                    <thead>
                        <tr>                            
                            <td>Image</td>
                            <td>Product</td>                            
                            <td>Price</td>
                            <td>Quantity</td>
                            <td>Cancel</td>
<!--                            <td>Order</td>-->
                        </tr>
                    </thead>

                    <tbody>                    
                    <%
                        if (cart_list != null) {
                            for (Cart c : cartProduct) { 
                    %>  
                    <tr>                            
                        <td><image src="<%=c.getImage()%>"></td>
                        <td><%=c.getName()%></h7</td>
                        <td><%=df.format(c.getPrice())%> VND</td>
                        <td>
                            <form action="" method="post" class="form-inline">
                                <input type="hidden" name="id" value="<%=c.getId()%>" class="form-input">
                                <div class="form-group d-flex justify-content-between w-100">
                                    <a class="btn btn-sm btn-decre" href="quantity-adjust?action=dec&id=<%= c.getId()%>"><i class="fas fa-minus-square"></i></a>
                                    <input type="text" name="quantity" class="form-control" value="<%=c.getQuantity()%>" readonly>
                                    <a class="btn btn-sm btn-incre" href="quantity-adjust?action=inc&id=<%= c.getId()%>"><i class="fas fa-plus-square"></i></a>    
                                </div>
                            </form>
                        </td>                            
                        <td>
                            <a href="remove-from-cart?id=<%= c.getId()%>"><i class="fas fa-trash-alt"></i></a>
                        </td>
<!--                        <td>
                            <form action="order-now" method="post" class="form-inline">
                                <a href="">
                                    <button type="submit" class="btn-buy btn-primary btn-sm">Buy now</button>
                                </a>
                            </form>
                        </td>-->
                    </tr>
                    <%}
                        }%>
                </tbody>
            </table>
        </section>

        <section id="cart-bottom" class="container">
            <div class="row">
<!--                <div class="coupon col-lg-6 col-md-6 col-12 mb-4">
                    <div>
                        <h5>COUPON</h5>
                        <p>Enter your coupon code if you have one.</p>
                        <input type="text" placeholder="Coupon code">
                        <button type="submit" class="btn btn-primary btn-sm">APPLY COUPON</button>
                    </div>
                </div>-->
                <div class="total col-lg-6 col-md-6 col-12 mb-4">
                    <form action="order" method="get" class="form-inline">
                        <h5>CART TOTAL</h5>
                        <div class="d-flex justify-content-between">
                            <h6>Subtotal</h6>
                            <p> ${(total>0)?df.format(total):0} VND</p>
                            
                        </div>.
                        <div class="d-flex justify-content-between">
                            <h6> Shipping</h6>
                            <p> 30000 VND</p>
                        </div>
                        <hr class="second-hr">
                        <div class="d-flex justify-content-between">
                            <h6>Total</h6>
                            <p> ${(total>0)?df.format(total + 30000):0} VND</p>
                            
                        </div>

                        <form action="order" method="get" class="form-inline">
                                <a href="">
                                    <button type="submit" class="btn btn-primary btn-sm">PROCEED TO CHECKOUT</button>
                                </a>
                            </form>                        
                    </form>
                </div>
            </div>
        </section>
        <jsp:include page="fotter.jsp"></jsp:include>
    </body>
</html>
