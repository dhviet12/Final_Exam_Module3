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
            margin-top: 30px;
        }
        form{
            margin-left: 300px;
            width: 600px;
            height: 600px;
        }
    </style>
</head>
<body>
<a type="button" class="btn btn-info" href="/product">Back to List Product</a>
<form method="post">
    <div class="mb-3">
        <label for="name" class="form-label">Name product</label>
        <input type="text" class="form-control" id="name" name="name" value="${product.getProductName()}">
    </div>
    <div class="mb-3">
        <label for="price" class="form-label">Price</label>
        <input type="text" class="form-control" id="price" name="price" value="${product.getPrice()}">
    </div>
    <div class="mb-3">
        <label for="quantity" class="form-label">Quantity</label>
        <input type="number" class="form-control" id="quantity" name="quantity" value="${product.getQuantity()}">
    </div>
    <div class="mb-3">
        <label for="color" class="form-label">Color</label>
        <input type="text" class="form-control" id="color" name="color" value="${product.getColor()}">
    </div>
    <div class="mb-3">
        <label for="description" class="form-label">Description</label>
        <textarea class="form-control" id="description" rows="3" name="description" ></textarea>
    </div>
    <div class="mb-3">
        <label for="category" class="form-label">Category</label>
        <input type="number" class="form-control" id="category" name="category" value="${product.getCategory()}">
    </div>
    <input class="btn btn-primary" type="submit" value="Edit">
</form>

</body>
</html>