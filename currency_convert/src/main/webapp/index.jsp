<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1>Convert Currency</h1>
<form action="/convert.jsp" method="get">
    <label>Rate: </label>
    <input type="text" name="rate" value="22000" placeholder="Rate">
    <label>USD: </label>
    <input type="text" name="usd" value="100000" placeholder="USD">
    <input type="submit" id="submit" value="Convert">
</form>
</body>
</html>