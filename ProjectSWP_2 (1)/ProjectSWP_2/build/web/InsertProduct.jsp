

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/styleinsert_product.css">
        <title>Insert</title>
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>


        <%@include file="adminmenu.jsp" %>

                <div class="sales-boxes">
                    <div class="recent-sales box">
                        <div class="title">
                            <h2>Create Product</h2>
                        </div>
                        <div class="forminsert">
                            <form action="insertProductControl" method="post" enctype="multipart/form-data">
                                <table>
                                    <thead>
                                        
                                    </thead>
                                    <tbody>
                                        
                                        <tr>
                                            <td>Product Name</td>
                                            <td> <input type="text" name="name" required="true"> </td>
                                        </tr>
                                        <tr>
                                            <td>Unit Price</td>
                                            <td><input type="text" name="unit_price" required="true"></td>
                                        </tr>
                                        <tr>
                                            <td>Amount</td>
                                            <td><input type="text" name="amount" required="true"></td>
                                        </tr>
                                        <tr>
                                            <td>Description</td>
                                            <td><input type="text" name="description" required="true"></td>
                                        </tr>
                                        <tr>
                                            <td>Manufacturer</td>
                                            <td><input type="text" name="manufacturer" required="true"></td>
                                        </tr>
                                        <tr>
                                            <td>Category ID</td>
                                            <td>
                                                <select name="category_id">
                                                    <c:forEach var = "cate" items = "${listCate}">
                                                        <option value = "${cate.cid}">${cate.cname}</option>
                                                    </c:forEach>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Image</td>
                                            <td><input type="file" name="photo" required="true"></td>
                                        </tr>
                                        <tr>
                                            <td>
                                            <td>
                                                <input type="reset" value="Reset">
                                                <input type="submit" value="Submit">
                                            </td>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>

                            </form>
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
