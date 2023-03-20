
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="entity.*"%>
<%
    User auth = (User) request.getSession().getAttribute("auth");
    if (auth != null) {
        request.setAttribute("auth", auth);
    }
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="google-signin-client_id" content="643189138723-m7kakql1b20ukr8omknipih7su0111s7.apps.googleusercontent.com">
        <!-- ===== Iconscout CSS ===== -->
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
        <!-- ===== CSS ===== -->
        <link rel="stylesheet" href="css/login.css">
        <title>Login Page</title>
        <!--<title>Login & Registration Form</title>-->
    </head>

    <body>
        <div class="container">
            <div class="forms" method="post">
                <div class="form login">
                    <span class="title">Login</span>
                    <form action="login" method="post">
                        <div class="input-field">
                            <input type="text" placeholder="Enter your email" name="email" id="email" required
                                   onblur="checkEmail()">
                            <i class="uil uil-envelope icon"></i>
                        </div>
                        <div id="txtEmailMessage" style="color: red;"></div>
                        <div class="input-field">
                            <input type="password" class="password" placeholder="Enter your password" name="password" id="password" required>
                            <i class="uil uil-lock icon"></i>
                            <i class="uil uil-eye-slash showHidePw"></i>
                        </div>
                        <div class="checkbox-text">
                            <div class="checkbox-content">
                                <input type="checkbox" id="logCheck">
                                <label for="logCheck" class="text">Remember me</label>
                            </div>
                            <a href="#" class="text">Forgot password?</a>
                        </div>
                        <div class="input-field button">
                            <button id="button" style="submit">Login</button>
                        </div>
                    </form>
                    <div class="login-signup">
                        <span class="text">Not a member?
                            <a href="logup.jsp" class="text signup-link">Signup Now</a>
                        </span>
                    </div>
                </div>
            </div>
        </div>
        <script src="js/script.js"></script>
    </body>

</html>