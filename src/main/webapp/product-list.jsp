<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Product List</title>
    <style>
        table {
            border-collapse: collapse;
            width: 90%;
            margin: 20px auto;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        img.product-img {
            max-width: 100px;
            height: auto;
        }
    </style>
</head>
<body>
<h2 style="text-align:center;">All Products</h2>

<table>
    <thead>
    <tr>
        <th>Product ID</th>
        <th>Title</th>
        <th>Description</th>
        <th>Image</th>
        <th>Price</th>
        <th>Discount</th>
        <th>Quantity</th>
        <th>Category ID</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="product" items="${productList}">
        <tr>
            <td><c:out value="${product.productId}"/></td>
            <td><c:out value="${product.productTitle}"/></td>
            <td><c:out value="${product.productDescription}"/></td>
            <td>
                <c:if test="${not empty product.productImage}">
                    <img class="product-img" src="${product.productImage}" alt="Product Image"/>
                </c:if>
                <c:if test="${empty product.productImage}">
                    No Image
                </c:if>
            </td>
            <td><c:out value="${product.productPrice}"/></td>
            <td><c:out value="${product.productDiscount}"/></td>
            <td><c:out value="${product.productQuantity}"/></td>
            <td><c:out value="${product.categoryId}"/></td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
