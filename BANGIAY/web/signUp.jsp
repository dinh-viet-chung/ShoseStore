 

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr">
    <head>
        <meta charset="UTF-8">
        <title>Shoe</title>
        <link rel="shortcut icon" href="img/fav.png">

        <link rel="stylesheet" href="style.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>

        <div class="container">
            <div class="title">Sign-up</div>
            <div class="content">
                <form action="signup" method="post">
                    <div class="user-details">
                        <div class="input-box">
                            <span class="details">Full Name</span>
                            <input name="fullName" type="text" placeholder="Enter your name" required>
                        </div>
                        <div class="input-box">
                            <span class="details">Username</span>
                            <input name="userName" type="text" placeholder="Enter your username" required>
                        </div>
                        <div class="input-box">
                            <span class="details">Phone Number</span>
                            <input name="phone"    title="Please enter valid phone number" type="text" placeholder="Enter your number" required>
                        </div>
                        <div class="input-box">
                            <span class="details">Password</span>
                            <input name="pass" type="password" placeholder="Enter your password" required>
                        </div>

                        <div class="input-box">
                            <span class="details">Date of Birth</span>
                            <input name="date" type="date"   required>
                        </div>
                        <div class="input-box">
                            <span class="details">Confirm Password</span>
                            <input name="repeatPass" type="password" placeholder="Confirm your password" required>
                        </div>
                        <div class="input-box">
                            <span class="details">Avatar</span>
                            <input name="avatar" type="text" placeholder=" Your Avatar" required>
                        </div>
                    </div>

                    <!--  <div class="gender-details">
                        <input type="radio" name="gender" id="dot-1">
                        <input type="radio" name="gender" id="dot-2">
                        <input type="radio" name="gender" id="dot-3">
                        <span class="gender-title">Gender</span>
                        <div class="category">
                            <label for="dot-1">
                                <span class="dot one"></span>
                                <span class="gender">Male</span>
                            </label>
                            <label for="dot-2">
                                <span class="dot two"></span>
                                <span class="gender">Female</span>
                            </label>
                            <label for="dot-3">
                                <span class="dot three"></span>
                                <span class="gender">Prefer not to say</span>
                            </label>
                        </div>
                    </div> -->

                    <div class="button">
                        <input type="submit" value="Sign-up">
                    </div>
                    <a href="login.jsp" id="cancel_signup"><i class="fas fa-angle-left" ></i> Back</a>

                </form>
            </div>
        </div>

    </body>
</html>