

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <link rel="stylesheet" href="css/orderlist.css">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <title>ORDER LIST</title>
    </head>

    <body>
        <div class="sidebar" id="sidebar">
            <div class="logo-details">
                <i class='bx bxl-c-plus-plus'></i>
                <span class="logo_name">GROUP 6</span>
            </div>
            <ul class="nav-links">
                <li>
                    <a href="countTotalProduct" class="active">
                        <i class='bx bx-grid-alt'></i>
                        <span class="links_name">Dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="productControl">
                        <i class='bx bx-box'></i>
                        <span class="links_name">Product</span>
                    </a>
                </li>
                <li>
                    <a href="OrderListControl">
                        <i class='bx bx-list-ul'></i>
                        <span class="links_name">Order list</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-pie-chart-alt-2'></i>
                        <span class="links_name">Analytics</span>
                    </a>
                </li>
                <li>
                    <a href="storageControl">
                        <i class='bx bx-box'></i>
                        <span class="links_name">Storage</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-book-alt'></i>
                        <span class="links_name">Total order</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-user'></i>
                        <span class="links_name">Customers</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-message'></i>
                        <span class="links_name">Messages</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-heart'></i>
                        <span class="links_name">Favrorites</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-cog'></i>
                        <span class="links_name">Setting</span>
                    </a>
                </li>
                <li class="log_out">
                    <a href="home">
                        <i class='bx bx-log-out'></i>
                        <span class="links_name">Log out</span>
                    </a>
                </li>
            </ul>
        </div>
        <section class="home-section">
            <nav>
                <div class="sidebar-button">
                    <i class='bx bx-menu sidebarBtn'></i>
                    <span class="dashboard">Dashboard</span>
                </div>
            </nav>
            <!--table order and price-->
            <div class="sales-boxes">
                <div class="recent-sales box">
                    <div>
                        <table id="product-table" style="margin-top: 55px;">
                            <tr>
                            <br>
                            </tr>
                            <thead>
                                <tr>
                                    <th>User_id</th>
                                    <th>Order_id</th>
                                    <th>Quantity</th>
                                    <th>Total_price</th>
                                    <th>Shipping Method</th>

                                </tr>
                            </thead>

                            <c:forEach items="${listOr}" var='o'>
                                <tbody>
                                    <tr>
                                        <td>${o.user_id}</td>
                                        <td>${o.oder_id}</td>
                                        <td>${o.quantity}</td>
                                        <td>${o.total_price}</td>
                                        <td>${o.shippping_method}</td>
                                    </tr>
                                </tbody>
                            </c:forEach>
                        </table>
                    </div>
                </div>
            </div>
            <script>
                let sidebar = document.querySelector(".sidebar");
                let sidebarBtn = document.querySelector(".sidebarBtn");
                sidebarBtn.onclick = function () {
                    sidebar.classList.toggle("active");
                    if (sidebar.classList.contains("active")) {
                        sidebarBtn.classList.replace("bx-menu", "bx-menu-alt-right");
                    } else
                        sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
                }
            </script>
        </section>
    </body>

</html>
