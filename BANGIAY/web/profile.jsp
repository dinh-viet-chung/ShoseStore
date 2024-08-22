 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
        <style>


        </style>
    </head>
    <body>



        <div class="container" style="max-width:1000px;height: 620px; " >
            <c:if test="${sessionScope.acc != null}">
                <div class="title" style="text-align: center">Profile of ${sessionScope.acc.userName}</div>
            </c:if>

            <div class="content">
                <form action="editp" method="get">
                    <img src="img/avatar/${lis.avatar}" style="height:100px; border-radius: 140px;margin-left: 40px; margin-top: -20px;"><!-- comment -->
                    <p style="">${lis.fullName}</p>
                    <input value="${lis.avatar}" style="" name="avatar" type="text" class="form-control" placeholder="change your avatar" required>change your avatar
        

                    <div class="user-details"  >
                        <div class="input-box " hidden>
                            <span class="details">ID</span>
                            <input name="id" value="${lis.id}" type="text" readonly required>
                        </div>
                        <div class="input-box">
                            <span class="details">Full Name</span>
                            <input name="fullName" value="${lis.fullName}" type="text" placeholder="Enter your name" required>
                        </div>
                        <div class="input-box">
                            <span class="details">Username</span>
                            <input name="userName" value="${lis.userName}" type="text" placeholder="Enter your username" required>
                        </div>
                        <div class="input-box">
                            <span class="details">Phone Number</span>
                            <input name="phone" value="${lis.phone}" title="Please enter valid phone number" type="text" placeholder="Enter your number" required>
                        </div>
                        <div class="input-box">
                            <span class="details">Password</span>
                            <input name="pass" value="${lis.pass}" type="password" placeholder="Enter your password" required>
                        </div>
                        <div class="input-box">
                            <span class="details">Date of Birth</span>
                            <input name="dob" value="${lis.dob}" type="date"   required>
                        </div>
                        <div class="input-box">
                            <span class="details">Confirm Password</span>
                            <input name="repeatPass" value="${lis.pass}" type="password" placeholder="Confirm your password" required>
                        </div>
                    </div> 
                        <div class="button" style="margin-top: -5px;">
                        <input type="submit" value="UPDATE">
                    </div>
                    <a href="home" id="cancel_signup"  >  Back</a>

                </form>
            </div>
        </div>

    </body>
</html>