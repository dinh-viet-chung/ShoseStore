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
                            <a href="manager"><h2>Edit<b>Product</b></h2></a>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editEmployeeModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="edit" method="post">
                            <div class="modal-header">						
                                <h4 class="modal-title">Edit Product</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">	

                                <div class="form-group">
                                    <label>ID</label>
                                    <input value="${detail.id}" name="id" type="text" class="form-control" readonly required>
                                </div>
                                <div class="form-group">
                                    <label>Price</label>
                                    <input value="${detail.price}" name="price" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Sale</label>
                                    <input value="${detail.sale}" name="sale" class="form-control" required></input>
                                </div>
                                <div class="form-group">
                                    <label>Name</label>
                                    <input value="${detail.nameP}" name="nameP" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Quantity</label>
                                    <input value="${detail.quantity}" name="quantity" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Brand</label>
                                    <input value="${detail.brand}" name="brand" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Image</label>
                                    <input value="${detail.img}" name="img" type="text" class="form-control" required>
                                </div>

                                <div class="form-group">
                                    <label>Description</label>
                                    <textarea  value="${detail.descriptions}" name="descriptions" class="form-control" required>${detail.descriptions}</textarea>
                                </div>
                                <div class="form-group">
                                    <label>Category</label><br>
                                    <!--                                    <select name="category" class="form-select" aria-label="Default select example">
                                    <%--<c:forEach items="${listC}" var="o">--%>
                                        <option value="${o.id}">${o.name}</option>
                                    <%--</c:forEach>--%>
                                </select>-->

                                    <c:if test="${detail.getCateid() == '1'}">
                                        <input type="radio" name="ca" value="1" checked >SPORT SHOES<br>
                                        <input type="radio" name="ca" value="2">BASIC SHOES<br>
                                        <input type="radio" name="ca" value="3">LEATHER SHOES<br>

                                    </c:if>
                                    <c:if test="${detail.getCateid() == '2'}">
                                        <input type="radio" name="ca" value="1"  >SPORT SHOES<br>
                                        <input type="radio" name="ca" value="2"checked>BASIC SHOES<br>
                                        <input type="radio" name="ca" value="3">LEATHER SHOES<br>
                                    </c:if>
                                        <c:if test="${detail.getCateid() == '3'}">
                                         <input type="radio" name="ca" value="1"  >SPORT SHOES<br>
                                        <input type="radio" name="ca" value="2">BASIC SHOES<br>
                                        <input type="radio" name="ca" value="3"checked>LEATHER SHOES<br>
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