<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login/SignUp Page | Spread</title>
        <link rel="stylesheet" href="./css/login-signup-style.css"/>
    </head>
    <body>
        <div id="container" class="container">
            <!-- FORM SECTION -->
            <div class="row">
                <!-- SIGN UP -->
                <div class="col align-items-center flex-col sign-up">
                    <div class="form-wrapper align-items-center">
                        <div class="form sign-up">
                            <form action="./RegisterServlet" method="POST" onsubmit="return validatePassword()">
                                <div class="input-group">
                                    <i class='bx bxs-user'></i>
                                    <input type="text" placeholder="FirstName" name="firstName">
                                </div>
                                <div class="input-group">
                                    <i class='bx bxs-user'></i>
                                    <input type="text" placeholder="LastName" name="lastName">
                                </div>
                                <div class="input-group">
                                    <i class='bx bx-mail-send'></i>
                                    <input type="email" placeholder="Email" name="email">
                                </div>
                                <div class="input-group">
                                    <i class='bx bxs-lock-alt'></i>
                                    <input type="password" placeholder="Password" name="password">
                                </div>
                                <div class="input-group">
                                    <i class='bx bxs-lock-alt'></i>
                                    <input type="password" placeholder="Confirm password" name="confirmpassword">
                                </div>
                                <button type="submit">
                                    Sign up
                                </button>
                                <p>
                                    <span>
                                        Already have an account?
                                    </span>
                                    <b onclick="toggle()" class="pointer">
                                        Sign in here
                                    </b>
                                </p>
                            </form>
                        </div>
                    </div>

                </div>
                <!-- END SIGN UP -->
                <!-- SIGN IN -->
                <div class="col align-items-center flex-col sign-in">
                    <div class="form-wrapper align-items-center">
                        <div class="form sign-in">
                            <form action="./LoginHandler" method="POST">
                                <div class="input-group">
                                    <i class='bx bxs-user'></i>
                                    <input type="email" placeholder="email" name="email">
                                </div>
                                <div class="input-group">
                                    <i class='bx bxs-lock-alt'></i>
                                    <input type="password" placeholder="Password" name="password">
                                </div>
                                <button type="submit">
                                    Sign in
                                </button>
                                <p>
                                    <b>
                                        Forgot password?
                                    </b>
                                </p>
                                <p>
                                    <span>
                                        Don't have an account?
                                    </span>
                                    <b onclick="toggle()" class="pointer">
                                        Sign up here
                                    </b>
                                </p>
                            </form>
                        </div>
                    </div>
                    <div class="form-wrapper">

                    </div>
                </div>
                <!-- END SIGN IN -->
            </div>

            <!-- END FORM SECTION -->
            <!-- CONTENT SECTION -->
            <div class="row content-row">
                <!-- SIGN IN CONTENT -->
                <div class="col align-items-center flex-col">
                    <div class="text sign-in">
                        <h2>
                            Welcome
                        </h2>

                    </div>
                    <div class="img sign-in">

                    </div>
                </div>
                <!-- END SIGN IN CONTENT -->
                <!-- SIGN UP CONTENT -->
                <div class="col align-items-center flex-col">
                    <div class="img sign-up">

                    </div>
                    <div class="text sign-up">
                        <h2>
                            Join with us
                        </h2>

                    </div>
                </div>
                <!-- END SIGN UP CONTENT -->
            </div>
            <!-- END CONTENT SECTION -->
        </div>
        <script >
            function validatePassword() {
                var password = document.getElementsByName("password")[0].value;
                var confirmPassword = document.getElementsByName("confirmpassword")[0].value;

                if (password !== confirmPassword) {
                    alert("Password and Confirm Password do not match.");
                    return false;
                }
                return true;
            }

            let container = document.getElementById('container');

            let toggle = () => {
                container.classList.toggle('sign-in');
                container.classList.toggle('sign-up');
            };

            setTimeout(() => {
                container.classList.add('sign-up');
            }, 200);
        </script>
    </body>
</html>


