<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
        body {
            margin-top: 100px;
        }
    </style>
</head>
<body>
<form method="post" action="/product?action=search">
    <input type="text" name="search" id ="search" placeholder="type name product">
    <input type="submit" name="submit" id="submit" value="Search">
</form>


<table class="table">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">ProductName</th>
        <th scope="col">ProductPrice</th>
        <th scope="col">Quantity</th>
        <th scope="col">Color</th>
        <th scope="col">Description</th>
        <th scope="col">Category</th>
        <th scope="col">Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="product">
    <tr>
        <th scope="row">${product.getProductId()}</th>
        <td> ${product.getProductName()}</td>
        <td>${product.getPrice()}</td>
        <td>${product.getQuantity()}</td>
        <td>${product.getColor()}</td>
        <td>${product.getDescription()}</td>
        <td>${product.getCategory()}</td>
        <td>
            <a href="/product?action=edit&id=${product.productId}">Edit</a>
            <a href="/product?action=delete&id=${product.productId}">Delete</a>
        </td>

    </tr>
    </c:forEach>
    </tbody>
</table>
<a class="btn btn-primary" href="/product?action=create" role="button">Create Product</a>

</body>
</html>