<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Product List</title>
    <style>
        * { font-family: Arial, sans-serif; }
        body { max-width: 900px; margin: 30px auto; }
        h2 { text-align: center; color: #2c3e50; }
        table { border-collapse: collapse; width: 100%; box-shadow: 0 0 15px #ddd; }
        th, td { padding: 12px 15px; border: 1px solid #ddd; }
        th { background-color: #3498db; color: white; }
        tr:nth-child(even) { background-color: #f3f6f8; }
        img.product-img { max-width: 100px; border-radius: 6px; }
        a.button { background: #3498db; color: white; padding: 8px 12px; text-decoration: none; border-radius: 4px; }
        a.button:hover { background: #2980b9; }
    </style>
</head>
<body>

<h2>All Products</h2>

<div style="text-align: right; margin-bottom: 15px;">
    <a href="products?action=new" class="button">Add New Product</a>
</div>

<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Title</th>
        <th>Description</th>
        <th>Image</th>
        <th>Price</th>
        <th>Discount (%)</th>
        <th>Quantity</th>
        <th>Category ID</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="product" items="${productList}">
        <tr>
            <td>${product.productId}</td>
            <td>${product.productTitle}</td>
            <td>${product.productDescription}</td>
            <td>
                <c:choose>
                    <c:when test="${not empty product.productImage}">
                        <img class="product-img" src="${product.productImage}" alt="Image"/>
                    </c:when>
                    <c:otherwise>No Image</c:otherwise>
                </c:choose>
            </td>
            <td>${product.productPrice}</td>
            <td>${product.productDiscount}</td>
            <td>${product.productQuantity}</td>
            <td>${product.categoryId}</td>
            <td>
                <a href="products?action=edit&id=${product.productId}" class="button" style="background:#1abc9c;">Edit</a>
                <a href="products?action=delete&id=${product.productId}" class="button" style="background:#e74c3c;" onclick="return confirm('Are you sure to delete this product?');">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
