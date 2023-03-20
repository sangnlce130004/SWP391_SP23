

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/styleedit2.css">
        <title>Edit Storage</title>
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form action="updateStorageControl" method="POST">





            <%@include file="adminmenu.jsp" %>

                    <div class="sales-boxes">
                        <div class="recent-sales box">
                            <div class ="title">
                                <h2>Edit Storage</h2>
                            </div>
                            <div class="formedit">
                                <form action="updateStorageControl" method="POST">
                                    <table>
                                        <input name="id" placeholder="ID" required="" value="${Storage.id}" hidden="">
                                        <br>


                                        <tr>
                                            <td>Manufacturer: </td>
                                            <td><input type="text" name="manufactured_date" placeholder="Manufactured" required="" value="${Storage.manufactured_date}"></td>
                                        </tr>
                                        <br>

                                        <tr>
                                            <td>Imported Date: </td>
                                            <td><input type="date" name="imported_date" placeholder="Imported Date" required="" value="${Storage.imported_date}"></td>
                                        </tr>
                                        <br>
                                        <tr>
                                            <td>Product:</td>
                                            <td>
                                            <select name="product_id">
                                                    <c:forEach var = "o" items = "${listP}">
                                                        <option value = "${o.id}">${o.name}</option>
                                                    </c:forEach>
                                            </select>
                                        </td>
                                        </tr>
                                        <br>



                                        <td><input type="text" name="quantity" placeholder="Product ID" required="" value="${Storage.product_id}" hidden=""></td>

                                        <br>




                                    </table>
                                    <br>
                                    <input type="submit" value="EDIT">
                                    <a href="storageControl">Back to Storage</a>

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
        </form>
    </body>
</html>
