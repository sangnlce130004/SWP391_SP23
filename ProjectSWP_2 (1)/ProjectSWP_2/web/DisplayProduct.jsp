<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Designined by CodingLab | www.youtube.com/codinglabyt -->
<html lang="en" dir="ltr">

    <head>
        <meta charset="UTF-8">
        <!--<title> Responsiive Admin Dashboard | CodingLab </title>-->
        <link rel="stylesheet" href="css/styledisplay_product.css">
        <!-- Boxicons CDN Link -->
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <script src="https://code.iconify.design/iconify-icon/1.0.1/iconify-icon.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!--css table-->
        <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
        <script>
            $(document).ready(function () {
            $('#example').DataTable({
            pagingType: 'full_numbers',
            });
            });
        </script>

        <script>
            $(document).ready(function () {
            $('#example1').DataTable({
            pagingType: 'full_numbers',
            });
            });
        </script>

        <!--column chart-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
        <title>DashBoard</title>

        <!--Pie chart-->
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script type="text/javascript">
            google.charts.load("current", {packages: ["corechart"]});
            google.charts.setOnLoadCallback(drawChart);
            function drawChart() {
            var data = google.visualization.arrayToDataTable([
            ['Language', 'Speakers (in millions)'],
            <c:forEach items="${ListP}" var ='o'>
            ['${o.id}', ${o.amount}],
            </c:forEach>
            ]);
            var options = {
            title: 'TOTAL PRODUCTS IN STOCK IN (%)',
                    legend: 'none',
                    pieSliceText: 'label',
                    slices: {

                    },
            };
            var chart = new google.visualization.PieChart(document.getElementById('piechart'));
            chart.draw(data, options);
            }
        </script>

        <script>
            // Add active class to the current button (highlight it)
            var header = document.getElementById("sidebar");
            var btns = header.getElementsByClassName("links_name");
            for (var i = 0; i < btns.length; i++) {
            btns[i].addEventListener("click", function () {
            var current = document.getElementsByClassName("active");
            current[0].className = current[0].className.replace(" active", "");
            this.className += " active";
            });
            }
        </script>

        <!--column chart-->
        <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
        <script>
            window.onload = function () {

            var chart = new CanvasJS.Chart("chartContainer", {
            animationEnabled: true,
                    theme: "light2", // "light1", "light2", "dark1", "dark2"
                    title: {
                    text: "Top 5 Products"
                    },
                    axisY: {
                    title: "Amount Products"
                    },
                    data: [{
                    type: "column",
                            showInLegend: true,
                            legendMarkerColor: "grey",
                            legendText: "Most sold products",
                            dataPoints: [
            <c:forEach items="${ListTop5}" var='o'>
                            {y: ${o.total_sales}, label: "${o.product_id}"},
            </c:forEach>
                            ]
                    }]
            });
            chart.render();
            }
        </script>
    </head>
    <body>
<%@include file="adminmenu.jsp" %>
                <!--table order and price-->
                <div class="sales-boxes">
                    <div class="recent-sales box">
                        <div class="title">
                            Products
                        </div>
                        <div>
                            <table id="product-table">
                                <tr>

                                <br>
                                </tr>
                                <tr>

                                    <th>Product Name</th>
                                    <th>Unit Price</th>
                                    <th>Amount</th>
                                    <th>Description</th>
                                    <th>Category</th>
                                    <th>Image</th>
                                    <th>Options</th>
                                </tr>

                                <c:forEach items="${listProduct}" var="x">
                                    <tr>

                                        <td>${x.name}</td>
                                        <td>${x.price}</td>
                                        <td>${x.amount}</td>
                                        <td>${x.description}</td>
                                        <c:forEach items="${listCate}" var="o">
                                            <c:if test="${o.cid == x.cate_id}">
                                                <td>${o.cname}</td>
                                            </c:if>
                                        </c:forEach>
                                        <td> 
                                            <div class = img-product1>
                                                <img  
                                                    src="${x.image}" >
                                            </div>
                                        </td>


                                        <td>

                                            <a href="updateProductControl?bid=${x.id}"><button type="submit">Edit</button></a> 
                                            <a href="deleteProductControl?bid=${x.id}"><button type="submit">Delete</button></a>

                                        </td>

                                    </tr>

                                </c:forEach>
                            </table>
                            <div class = "addbtn">
                                <a href="insertProductControl"><button type="submit">Add Product</button></a>
                            </div>
                        </div>

                        <div class="button">
                            <a href="#">See All</a>
                        </div>
                    </div>
                    <!-- <div class="top-sales box">
                      <div class="title">Top Seling Product</div>
                    </div> -->
                </div>
                <!--column chart-->
                
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
