

<%@page import="entity.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

    <head>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <link rel="stylesheet" href="css/styledisplay_product.css"> 
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Load fonts style after rendering the layout styles -->
        <script src="https://kit.fontawesome.com/337f2c85fe.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="css/style.css">
        <!--Link owlcarousel-->
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <title>ORDER HISTORY</title>
    </head>

    <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <!--table order and price-->
            <br>
            <div class="sales-boxes" style="margin-top: 100px">
                <div class="recent-sales box">
                    <div>
                        <table id="product-table">
                            <thead>
                                <tr>
                                    <th style="text-align: center">Date</th>
                                    <th style="text-align: center">Name</th>
                                    <th style="text-align: center">Image</th>
                                    <th style="text-align: center">quantity</th>
                                    <th style="text-align: center">Address</th>
                                    <th style="text-align: center">Total_price</th>
                                    <th style="text-align: center">Status</th>
                                </tr>
                            </thead>

                        <c:forEach items="${ListOH}" var='o'>
                            <tbody>
                                <tr>
                                    <td style="text-align: center">${o.date}</td>
                                    <td style="text-align: center">${o.namep}</td>
                                    <td style="width: 180px">
                                        <div class=img-product1>
                                            <img src="${o.img}">
                                        </div>
                                    </td> 
                                    <td style="text-align: center">${o.quantity}</td>
                                    <td style="text-align: center">${o.address}</td>
                                    <td style="text-align: center">${o.total_price}</td>
                                    <td style="text-align: center">${o.status}</td>
                                </tr>
                            </tbody>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
    </body>

</html>
