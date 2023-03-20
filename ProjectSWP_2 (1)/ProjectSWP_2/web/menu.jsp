<%@page import="dao.DAO"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="entity.*"%>
<%
    User auth = (User) request.getSession().getAttribute("auth");
    if (auth != null) {
        request.setAttribute("auth", auth);
    }
%>
<!--Start banner-->
<div class="banner">
    <nav class="navbar navbar-expand-lg ">
        <div class="container-fluid">
            <a class="navbar-brand" href="home"><img src="images/Logo1.png" style="width: 100px
                                                    ; height: 70px"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="home">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="shop">Shop</a>
                    </li>
                </ul>
                <div class="icon">
                    <div class="search-box">
                        <form action="search">
                            <input type="text" class="input" name="txt" placeholder="Search">
                            <button class="search-icon" type="submit">
                                <div class="btnSearch">
                                    <i class="fa-solid fa-magnifying-glass"></i>
                                </div>
                            </button>
                        </form>
                    </div>
                    <a class=" nav-icon position-relative text-decoration-none icon-items" href="cart.jsp">                            
                        <i class="fa-solid fa-cart-shopping"></i>
                        <span class="badge badge-danger" style="color: red;">${cart_list.size()}</span>
                    </a>                                          
                    <% if (auth != null) {%>
                    <% if (auth.getRole_id().trim().contains("R2")) {%>
                        <a class="nav-item nav-link" href="countTotalProduct">Admin</a> 
                        <a class="nav-icon position-relative text-decoration-none icon-items" href="logout">Logout</a>
                        <%} else {%>
                        <a class="nav-link" href="Orderhistory?uid=${auth.getId()}">History</a>
                        <a class="nav-icon position-relative text-decoration-none icon-items" href="logout">Logout</a>
                        <%}%>
                    <%} else {%>
                    <a class="nav-icon position-relative text-decoration-none icon-items" href="login">Login</a>
                    <%}%>                                              
                </div>
            </div>
        </div>
    </nav>
</div>
<!--End banner-->