<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title><c:choose><c:when test="${not empty product}">Edit</c:when><c:otherwise>Add</c:otherwise></c:choose> Product</title>
    <style>
        body { font-family: Arial, sans-serif; max-width: 500px; margin: 40px auto; }
        h2 { text-align: center; color: #34495e; }
        form { background: #f7f9fc; padding: 25px; border-radius: 8px; box-shadow: 0 0 15px #ddd; }
        label { display: block; margin: 15px 0 8px; font-weight: bold; }
        input, textarea { width: 100%; padding: 10px; font-size: 14px; border: 1px solid #ccc; border-radius: 6px; }
        textarea { resize: vertical; }
        input[type=submit] { background: #3498db; color: white; cursor: pointer; border: none; margin-top: 20px; font-size: 16px; }
        input[type=submit]:hover { background: #2980b9; }
        a { display: inline-block; margin-top: 15px; text-decoration: none; color: #3498db; }
        a:hover { text-decoration: underline; }
    </style>
</head>
<body>

<h2><c:choose><c:when test="${not empty product}">Edit</c:when><c:otherwise>Add</c:otherwise></c:choose> Product</h2>

<form action="products" method="post">
    <input type="hidden" name="action" value="<c:choose><c:when test='${not empty product}'>update</c:when><c:otherwise>insert</c:otherwise></c:choose>" />
    <c:if test="${not empty product}">
        <input type="hidden" name="id" value="${product.productId}" />
    </c:if>

    <label for="productTitle">Title:</label>
    <input type="text" name="productTitle" id="productTitle" value="${product.productTitle}" required />

    <label for="productDescription">Description:</label>
    <textarea name="productDescription" id="productDescription" rows="4" required>${product.productDescription}</textarea>

    <label for="productImage">Image URL:</label>
    <input type="text" name="productImage" id="productImage" value="${product.productImage}" placeholder="http://example.com/image.jpg" />

    <label for="productPrice">Price:</label>
    <input type="number" step="0.01" name="productPrice" id="productPrice" value="${product.productPrice}" required />

    <label for="productDiscount">Discount (%):</label>
    <input type="number" step="0.01" name="productDiscount" id="productDiscount" value="${product.productDiscount}" />

    <label for="productQuantity">Quantity:</label>
    <input type="number" name="productQuantity" id="productQuantity" value="${product.productQuantity}" required />

    <label for="categoryId">Category ID:</label>
    <input type="number" name="categoryId" id="categoryId" value="${product.categoryId}" required />

    <input type="submit" value="<c:choose><c:when test='${not empty product}'>Update</c:when><c:otherwise>Add</c:otherwise></c:choose> Product" />
</form>

<div style="text-align:center;">
    <a href="products?action=list">Back to Product List</a>
</div>

</body>
</html>
