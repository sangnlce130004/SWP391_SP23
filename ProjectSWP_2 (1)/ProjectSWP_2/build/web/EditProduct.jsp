

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/styleedit_product.css">
        <title>Edit Product</title>
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
    <%@include file="adminmenu.jsp" %>

                <div class="sales-boxes">
                    <div class="recent-sales box">
                        <div class ="title">
                            <h2>Edit Product</h2>
                        </div>
                        <div class="formedit">
                            <form action="updateProductControl" method="POST" enctype="multipart/form-data">
                                <table>
                                    <input name="product_id" placeholder="ID" required="" value="${Product.id}" hidden="">    
                                    <br>
                                    <tr>
                                        <td>Product Name: </td>
                                        <td><input type="text" name="name" placeholder="Name" required="" value="${Product.name}"></td>
                                    </tr>
                                    <br>
                                    <tr>
                                        <td>Unit Price: </td>
                                        <td><input type="text" name="unit_price" placeholder="Price" required="" value="${Product.price}"></td>
                                    </tr>
                                    <br>
                                    <tr>
                                        <td>Product Amount: </td>
                                        <td><input type="text" name="amount" placeholder="Price Amount" required="" value="${Product.amount}"></td>
                                    </tr>
                                    <br>
                                    <tr>
                                        <td>Description: </td>
                                        <td><input type="text" name="description" placeholder="Description" required="" value="${Product.description}"></td>
                                    </tr>
                                    <br>
                                    <tr>
                                        <td>Category ID: </td>
                                        <td>
                                            <select name="category_id">
                                                    <c:forEach var = "cate" items = "${listCate}">
                                                        <option value = "${cate.cid}">${cate.cname}</option>
                                                    </c:forEach>
                                            </select>
                                        </td>
                                    </tr>
                                    <br>
                                    <tr>
                                        <td>Image: </td>
                                        <td><input type="file" name="photo" placeholder="Image" required="" value="${Product.image}"></td>
                                    </tr>
                                </table>
                                <br>
                                <input type="submit" value="EDIT">
                                <a href="productControl">Back to Product</a>
                            </form>
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
