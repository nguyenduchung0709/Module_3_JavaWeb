<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h2>Calculator Discount</h2>
<form action="/display-discount" method="post">
    <input type="text" name="product_description" placeholder="Enter Product Name">
    <input type="number" name="price" placeholder="Enter Price">
    <input type="number" name="discount" placeholder="Enter Discount Amount">
    <input type="submit" value="Calculate">
</form>
</body>
</html>