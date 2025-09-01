<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><title>Delete Product</title></head>
<body>
<h2>Are you sure you want to delete this product?</h2>
<form action="products" method="post">
    <input type="hidden" name="action" value="delete" />
    <input type="hidden" name="id" value="${param.id}" />
    <input type="submit" value="Yes, Delete" />
</form>
<a href="products?action=list">Cancel</a>
</body>
</html>
