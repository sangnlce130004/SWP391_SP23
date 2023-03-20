

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/styleinsert2.css">
        <title>Storage</title>
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <%@include file="adminmenu.jsp" %>

                <div class="sales-boxes">
                    <div class="recent-sales box">
                        <div class="title">
                            <h2>Create Storage</h2>
                        </div>
                        <div class="forminsert">
                            <form action="insertStorageControl" method="post">
                                <table>
                                    <thead>
                                        
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>ID</td>
                                            <td> <input type="text" name="id"> </td>
                                        </tr>
                                        <tr>
                                            <td>Manufactured Date</td>
                                            <td> <input type="date" name="manufactured_date"> </td>
                                        </tr>
                                        <tr>
                                            <td>Imported Date</td>
                                            <td><input type="date" name="imported_date"></td>
                                        </tr>
                                        <tr>
                                            <td>Quantity</td>
                                            <td><input type="text" name="quantity"></td>
                                        </tr>
                                        <tr>
                                            <td>
                                            <td>
                                                <input type="reset" value="reset">
                                                <input type="submit" value="submit">
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
