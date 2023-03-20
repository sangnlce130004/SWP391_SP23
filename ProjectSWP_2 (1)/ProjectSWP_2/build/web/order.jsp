<%@page import="dao.OrderDAO"%>
<%@page import="dao.OrderDetailDAO"%>
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
    } else {
        response.sendRedirect("login.jsp");
    }

    ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
    if (cart_list != null) {
        DAO pDao = new DAO();
        double total = pDao.getTotalCartPrice(cart_list);
        total += 30000;
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

        <!-- custom css file link  -->
        <link rel="stylesheet" href="css/order.css">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <title>Order</title>
        <link rel="stylesheet" href="css/cart.css">
        <script src="https://kit.fontawesome.com/337f2c85fe.js" crossorigin="anonymous"></script>
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
        <div class="container">
            <form action="order" method="post">
                <input type="hidden" value="${total}" name="totalPrice">
                <div class="row">
                    <div class="col">
                        <h3 class="title">billing address</h3>

                        <div class="inputBox">
                            <span>full name :</span>
                            <input type="text" placeholder="Jonh Carter" required="" id="name">
                        </div>
                        <div class="inputBox">
                            <span>email :</span>
                            <input type="email" placeholder="example@example.com" required="" id="email">
                        </div>
                        <div class="inputBox">
                            <span>address :</span>
                            <input type="text" placeholder="room - street - locality" required="" name="address" id="address">
                        </div>
                        <div class="inputBox">
                            <span>phone number :</span>
                            <input type="text" placeholder="+84" required="" id="phone">
                        </div>
                        <div>
                            <span>Shipping method :</span>
                            <select name="shipping_method">
                                <c:forEach items="${ListShip}" var='o'>
                                    <option value="${o.ship_id == 0 ? "Slow":"Fast"}">${o.ship_name}</option>
                                </c:forEach>
                            </select>   
                        </div>

                    </div>

                    <!--                    <div class="col">
                                            <h3 class="title">payment</h3>
                    
                                            <div class="inputBox">
                                                <span>cards accepted :</span>
                                                <img src="images/card_img.png" alt="">
                                            </div>
                                            <div class="inputBox">
                                                <span>name on card :</span>
                                                <input type="text" placeholder="mr. john deo">
                                            </div>
                                            <div class="inputBox">
                                                <span>credit card number :</span>
                                                <input type="number" placeholder="1111-2222-3333-4444">
                                            </div>
                                        </div>-->
                    <div>                        
                        <input type="submit" value="Proceed to checkout" class="submit-btn" onclick="success()">                                            
                    </div>
                </div>                    
            </form>
        </div>  
        <script>
            function success() {
                var name = document.getElementById("name").value;
                var email = document.getElementById("email").value;
                var address = document.getElementById("address").value;
                var phone = document.getElementById("phone").value;
                if (name == "" || email == "" || address == "" || phone == "") {
                    alert("Please enter infomation");
                } else {
                    alert("Order success!!!");
                }
            }
        </script>
    </body>
</html>
