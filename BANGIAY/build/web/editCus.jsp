<%-- 
    Document   : ManagerProduct
    Created on : Dec 28, 2020, 5:19:02 PM
    Author     : trinh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="img/fav.png">
        <title> Shoe</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
                <link rel="stylesheet" href="css/main.css">

        <style>
            img{
                width: 200px;
                height: 120px;
            }
            .table-title {
                padding-bottom: 15px;
                background: hsl(26, 100%, 50%);
                color: #fff;
                padding: 25px 30px;
                margin: -20px -25px 10px;
                border-radius: 6px 9px 6px 6px;
            }
        </style>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <a href="custom">  <h2>Edit<b>Customer</b></h2></a>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editEmployeeModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <%
    String currentStatus = "Block"; // Replace this with your actual value
                        %>
                        <form action="ChangeStatus" method="post">
                            <div class="modal-header">						
                                <h4 class="modal-title">Edit Product</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">	

                                <div class="form-group">
                                    <label>ID</label>
                                    <input value="${lis.id}" name="id" type="text" class="form-control" readonly required readonly>
                                </div>
                                <div class="form-group">
                                    <label>UserName</label>
                                    <input value="${lis.userName}" name="price" type="text" class="form-control" required readonly>
                                </div>
                                <div class="form-group">
                                    <label>FullName</label>
                                    <input value="${lis.fullName}" name="sale" class="form-control" required readonly> 
                                </div>
                                <div class="form-group">
                                    <label>Phone</label>
                                    <input value="${lis.phone}" name="nameP" type="text" class="form-control" required readonly>
                                </div>
                                <div class="form-group">
                                    <label>Date Of Birth</label>
                                    <input value="${lis.dob}" name="quantity" type="date" class="form-control" required readonly>
                                </div>

                                <!--                                <div class="form-group">
                                                                    <label>Image</label>
                                                                    <input value="${detail.img}" name="img" type="text" class="form-control" required>
                                                                </div>-->
                                <div class="form-group">
                                    <c:if test="${lis.getStatus() == '1'}">
                                        <input type="radio" name="ca" value="1" checked >Action
                                        <input type="radio" name="ca" value="0">Ban
                                    </c:if>
                                     <c:if test="${lis.getStatus() == '0'}">
                                        <input type="radio" name="ca" value="1" >Action
                                        <input type="radio" name="ca" value="0" checked>Ban
                                    </c:if>
                                    
                                    
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <input type="submit" class="btn btn-success" value="Edit">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                </div>


                <script src="js/manager.js" type="text/javascript"></script>
            </body>
        </html>