
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Designined by CodingLab | www.youtube.com/codinglabyt -->
<html lang="en" dir="ltr">

    <head>
        <meta charset="UTF-8">
        <!--<title> Responsiive Admin Dashboard | CodingLab </title>-->
        <link rel="stylesheet" href="css/Admin_DashBoard.css">
        <!-- Boxicons CDN Link -->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <script src="https://code.iconify.design/iconify-icon/1.0.1/iconify-icon.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!--css table-->
        <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.13.2/css/dataTables.bootstrap5.min.css"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css"></script>
        <!--bang thong ke-->
        <script>
            $(document).ready(function () {
                $('#example1').DataTable({
                    pagingType: 'full_numbers',
                });
            });
        </script>
        <title>Dashboard</title>
    </head>

    <body>

        <div class="sidebar" id="sidebar">
            <div class="logo-details">
                <i class='bx bxl-c-plus-plus'></i>
                <span class="logo_name">GROUP 6</span>
            </div>
            <ul class="nav-links">
                <li>
                    <a href="loadDashBoard" class="active">
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
                <!-- <div class="search-box">
                    <input type="text" placeholder="Search...">
                    <i class='bx bx-search'></i>
                </div>
                <div class="profile-details">
                     <img src="images/profile.jpg" alt="">
                    <span class="admin_name"></span>
                    <i class='bx bx-chevron-down'></i>
                </div> -->
            </nav>

            <div class="home-content">
                <div class="overview-boxes">
                    <div class="box">
                        <div class="right-side">
                            <div class="box-topic">Products</div>
                            <h1>${TotalP}</h1>
                        </div>
                        <iconify-icon icon="carbon:product" style="color: #e14d2a;" width="50" height="50"></iconify-icon>
                    </div>
                    <div class="box">
                        <div class="right-side">
                            <div class="box-topic">Categories</div>
                            <h1>${TotalC}</h1>
                        </div>
                        <iconify-icon icon="ic:baseline-category" style="color: #0008c1;" width="50" height="50">
                        </iconify-icon>
                    </div>
                    <div class="box">
                        <div class="right-side">
                            <div class="box-topic">Customers</div>
                            <h1>${totalCus}</h1>
                        </div>
                        <iconify-icon icon="raphael:customer" style="color: green;" width="50" height="50"></iconify-icon>
                    </div>

                    <div class="box">
                        <div class="right-side">
                            <div class="box-topic">Total Order</div>
                            <h1>${totalO}</h1>
                        </div>
                        <iconify-icon icon="fe:list-order" style="color: #31e1f7;" width="50" height="50"></iconify-icon>
                    </div>
                </div>

                <!--table order and price-->
                <div class="table-total">
                    <h1>SALES STATISTICS IN DAY</h1>
                    <br>
                    <table id="example1" class="display" style="width:100%">
                        <thead>
                            <tr>
                                <th>Date</th>
                                <th>Bill</th>
                                <th>Sold</th>
                                <th>Renovue</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${ListOandP}" var='o'>
                                <tr>
                                    <td>${o.date}</td>
                                    <td>${o.total_in_day}</td>
                                    <td>${o.total_product_in_day}</td>
                                    <td>${o.total_price} VND</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th>Date</th>
                                <th>Bill</th>
                                <th>Sold</th>
                                <th>Revenue</th>
                            </tr>
                        </tfoot>
                    </table>
                </div>

                <!--products-->
                <div class="sales-boxes">
                    <div class="container-chart2">
                        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                        <div id="piechart_3d" style="width: 100%; height: 100%;"></div>
                        <script type="text/javascript">
            google.charts.load("current", {packages: ["corechart"]});
            google.charts.setOnLoadCallback(drawChart);
            function drawChart() {
                var data = google.visualization.arrayToDataTable([
                    ['Task', 'Hours per Day'],
                            <c:forEach items="${ListP}" var='o' >
                    ['${o.name}', ${o.amount}],
                            </c:forEach>
                ]);

                var options = {
                    title: 'TOTAL PRODUCTS IN STOCK (BY %)',
                    is3D: true,
                };

                var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
                chart.draw(data, options);
            }
                        </script>
                    </div>
                    <div class="container-chart3">
                        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js">
                        </script>
                        <script type="text/javascript">
                            google.charts.load('current', {packages: ['corechart']});
                        </script>
                        <div id="container" style="width: 100%; height: 100%; margin: 0 auto">
                        </div>
                        <script language="JavaScript">
                            function drawChart() {
                                // Define the chart to be drawn.
                                var data = google.visualization.arrayToDataTable([
                                    ['Year', 'Revenue'],
                            <c:forEach items="${ListSale}" var="o">
                                    ['${o.year}', ${o.total}],
                            </c:forEach>

                                ]);
                                var options = {title: 'REVENUE (BY YEAR)'};

                                // Instantiate and draw the chart.
                                var chart = new google.visualization.ColumnChart(document.getElementById('container'));
                                chart.draw(data, options);
                            }
                            google.charts.setOnLoadCallback(drawChart);
                        </script>
                    </div>
                </div>
                <!--column chart-->
                <div class="sales-boxes">
                    <div class="container-chart">
                        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                        <script type="text/javascript">
                            google.charts.load("current", {packages: ["corechart"]});
                            google.charts.setOnLoadCallback(drawChart);
                            function drawChart() {
                                var data = google.visualization.arrayToDataTable([
                                    ['Task', 'Hours per Day'],
                            <c:forEach items="${List6month}" var ='o'>
                                    ['${o.name}', ${o.total}],
                            </c:forEach>
                                ]);
                                var options = {
                                    title: 'TOP 5 BEST SELLING PRODUCT SOLD IN 6 MONTH(BY QUANTITY)',
                                    pieHole: 0.4,
                                };
                                var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
                                chart.draw(data, options);
                            }
                        </script>
                        <div id="donutchart" style="width: 100%; height: 100%; margin: 0 auto"></div>
                    </div>
                    <div class="container-chart1">
                        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                        <script type="text/javascript">
                            google.charts.load('current', {'packages': ['corechart']});
                            google.charts.setOnLoadCallback(drawChart);

                            function drawChart() {
                                var data = google.visualization.arrayToDataTable([
                                    ['Task', 'Hours per Day'],
                            <c:forEach items="${listSW}" var='o'>
                                    ['${o.productname}', ${o.totalquantity}],
                            </c:forEach>
                                ]);
                                var options = {
                                    title: 'TOP 5 BEST SELLING PRODUCTS OF THE WEEK(BY QUANTITY)'
                                };

                                var chart = new google.visualization.PieChart(document.getElementById('piechart'));

                                chart.draw(data, options);
                            }
                        </script>
                        <div id="piechart" style="width: 100%; height: 100%;"></div>
                    </div>
                </div>
                
                <div class="sales-boxes">
                    <div class="container-chart">
                        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                        <script type="text/javascript">
                            google.charts.load("current", {packages: ["corechart"]});
                            google.charts.setOnLoadCallback(drawChart);
                            function drawChart() {
                                var data = google.visualization.arrayToDataTable([
                                    ['Task', 'Hours per Day'],
                            <c:forEach items="${List6Cao}" var ='o'>
                                    ['${o.name}', ${o.revenue}],
                            </c:forEach>
                                ]);
                                var options = {
                                    title: 'TOP 5 PRODUCTS WITH HIGHEST REVENUE IN 6 MONTHS(BY REVENUE)',
                                    pieHole: 0.4,
                                };
                                var chart = new google.visualization.PieChart(document.getElementById('donutchart1'));
                                chart.draw(data, options);
                            }
                        </script>
                        <div id="donutchart1" style="width: 100%; height: 100%; margin: 0 auto"></div>
                    </div>
                    <div class="container-chart1">
                        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
                        <script type="text/javascript">
                            google.charts.load('current', {'packages': ['corechart']});
                            google.charts.setOnLoadCallback(drawChart);

                            function drawChart() {
                                var data = google.visualization.arrayToDataTable([
                                    ['Task', 'Hours per Day'],
                            <c:forEach items="${ListRw}" var='o'>
                                    ['${o.name}', ${o.revenue}],
                            </c:forEach>
                                ]);
                                var options = {
                                    title: 'TOP 5 PRODUCTS WITH THE HIGHEST REVENUE OF THE WEEK(BY REVENUE)'
                                };

                                var chart = new google.visualization.PieChart(document.getElementById('piechart1'));

                                chart.draw(data, options);
                            }
                        </script>
                        <div id="piechart1" style="width: 100%; height: 100%;"></div>
                    </div>
                </div>

                <div class="sales-boxes">
                    <!--dothi-->
                    
                    <!--table-->
                    <div class="table-total1">
                        <h1 style="margin-top: 5px;margin-bottom: 5px">CUSTOMER BEST SELL</h1>
                        <table id="example" class="table table-striped" style="width:100%">
                            <thead>
                                <tr>
                                    <th>User_id</th>
                                    <th>Username</th>
                                    <th>Email</th>
                                    <th>Total Sell</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${ListUserbest}" var='o'>
                                    <tr>
                                        <td>${o.user_id}</td>
                                        <td>${o.name}</td>
                                        <td>${o.email}</td>
                                        <td>${o.total_bestsell}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th>User_id</th>
                                    <th>Username</th>
                                    <th>Email</th>
                                    <th>Total Sell</th>
                                </tr>
                            </tfoot>
                        </table>
                        <script>
                            $(document).ready(function () {
                                $('#example').DataTable();
                            });
                        </script>
                    </div>
                </div>
            </div>
        </section>

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



    </body>


</html>
