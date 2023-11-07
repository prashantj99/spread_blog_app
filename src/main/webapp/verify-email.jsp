<%@page import="com.prashant.webapp.entities.User"%>
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
            <form action="./SaveRegisterUser" method="POST" onsubmit="return validatePassword()">
                <div class="row">
                <!-- SIGN UP -->
                <div class="col align-items-center flex-col sign-up">
                    <div class="form-wrapper align-items-center">
                        <div class="form sign-up">
                            <div class="input-group">
                                <i class='bx bx-mail-send'></i>
                                <input type="email" placeholder="Email" name="email" value="<%
                                        User usr=(User)session.getAttribute("progress_usr");
                                        if(usr != null) out.print(usr.getEmail());
                                        else out.print("");
                                        %>">
                            </div>
                            <div class="input-group">
                                <i class='bx bxs-lock-alt'></i>
                                <input type="password" placeholder="OTP" name="otp">
                            </div>
                            <button type="submit">
                                verify
                            </button>
                            <p>
                                <span>
                                    wrong data?
                                </span>
                                <b class="pointer">
                                    <a href="./login-signup.jsp">back</a>
                                </b>
                            </p>
                        </div>
                    </div>

                </div>
                <!-- END SIGN UP -->
            </div>
            <!-- END FORM SECTION -->
            <!-- CONTENT SECTION -->
            <div class="row content-row">
                <!-- SIGN IN CONTENT -->
                <div class="col align-items-center flex-col">
                    <div class="text sign-in">
                        <h2>
                            
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
                            Confirm Email
                        </h2>

                    </div>
                </div>
                <!-- END SIGN UP CONTENT -->
            </div>
            <!-- END CONTENT SECTION -->
        </div>
        <script >
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


