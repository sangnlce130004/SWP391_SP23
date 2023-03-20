
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <title>REGISTER FORM</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <script
            type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
        </script>
        <!-- Custom Theme files -->
        <link href="css/logup.css" rel="stylesheet" type="text/css" media="all" />
        <!-- Custom Theme files -->
        <!-- web font -->
        <link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
        <!-- web font -->

        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" />
        <!-- font awesome 5.13.1 -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css" />
    </head>

    <body>
        <!-- main -->
        <div class="main-w3layouts wrapper">
            <h1>REGISTER FORM</h1>
            <div class="main-agileinfo">
                <div class="agileits-top">
                    <form action="logup" method="post">
                        <input class="text" type="text" name="username" placeholder="Username" required="">
                        <input class="text email" type="email" name="email" placeholder="Email" required="">
                        <input class="text" type="text" name="phone" placeholder="Phone" required="">
                        <div class="input-group mb-3">
                            <input type="password" name="password" placeholder="Password" id="ipnPassword" required="" >
                            <div class="input-group-append">
                                <button class="btn btn-outline-secondary" type="button" id="btnPassword">
                                    <span class="fas fa-eye"></span>
                                </button>
                            </div>
                        </div>
                        <div class="input-group mb-3">
                            <input type="password" name="re-password" placeholder="Confirm Password" id="iipnPassword" required="">
                            <div class="input-group-append">
                                <button class="btn btn-outline-secondary" type="button" id="bbtnPassword">
                                    <span class="fas fa-eye"></span>
                                </button>
                            </div>
                        </div>
                        <input type="submit" value="Logup">
                    </form>
                    <p>Don't have an Account? <a href="login"> Login Now!</a></p>
                </div>
            </div>
        </div>
        <!--password-->
        <script> // step 1
            const ipnElement = document.querySelector('#ipnPassword')
            const btnElement = document.querySelector('#btnPassword')

            // step 2
            btnElement.addEventListener('click', function () {
                // step 3
                const currentType = ipnElement.getAttribute('type')
                // step 4
                ipnElement.setAttribute(
                        'type',
                        currentType === 'password' ? 'text' : 'password'
                        )
            })
        </script>
        <!--re-password-->
        <script> // step 1
            const iipnElement = document.querySelector('#iipnPassword')
            const bbtnElement = document.querySelector('#bbtnPassword')

            // step 2
            bbtnElement.addEventListener('click', function () {
                // step 3
                const currentType = iipnElement.getAttribute('type')
                // step 4
                iipnElement.setAttribute(
                        'type',
                        currentType === 'password' ? 'text' : 'password'
                        )
            })
        </script>
    </body>

</html>