
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/styledisplay2.css">
        <title>Storage Page</title>
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
    <%@include file="adminmenu.jsp" %>

                <div class="sales-boxes">
                    <div class="recent-sales box">
                        <div class="title">
                            Storage
                        </div>

                        <div>
                            <table id="table">
                                <tr>

                                <br>
                                </tr>
                                <tr>
                                    <th>ID</th>
                                    <th>Manufacturer</th>
                                    <th>Imported Date</th>
                                    <th>Product Name</th>
                                    <th>Options</th>

                                </tr>

                                <c:forEach items="${listStorage}" var="x">
                                    <tr>
                                        <td>${x.id}</td>                                        
                                        <td>${x.manufactured_date}</td>
                                        <td>${x.imported_date}</td>
                                        <c:forEach var="o" items="${listP}">
                                            <c:if test="${x.product_id == o.id}">
                                                <td>${o.name}</td>
                                            </c:if>
                                        </c:forEach>

                                        <td>

                                            <a href="updateStorageControl?bid=${x.id}"><button type="submit" class="btn btn-primary">Edit</button></a> 
                                            

                                        </td>

                                    </tr>

                                </c:forEach>
                            </table>
                            
                        </div>

                        
                    </div>
                    <!-- <div class="top-sales box">
                      <div class="title">Top Seling Product</div>
                    </div> -->
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
