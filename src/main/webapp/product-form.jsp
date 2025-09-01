<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.yash.ecommerce.domain.Product" %>
<%
    Product product = (Product) request.getAttribute("product");
    boolean isEdit = (product != null && product.getProductId() > 0);
%>
<html>
<head>
    <title><%= isEdit ? "Edit" : "Add" %> Product</title>
    <style>
        form { width: 400px; margin: auto; }
        label { display: block; margin-top: 10px; }
        input, textarea { width: 100%; padding: 6px; margin-top: 2px; }
        button { margin-top: 15px; padding: 8px 16px; }
    </style>
</head>
<body>
    <h2><%= isEdit ? "Edit" : "Add" %> Product</h2>
    <form action="products" method="get">
        <% if (isEdit) { %>
            <input type="hidden" name="action" value="update"/>
            <input type="hidden" name="id" value="<%= product.getProductId() %>"/>
        <% } else { %>
            <input type="hidden" name="action" value="insert"/>
        <% } %>

        <label for="productTitle">Title</label>
        <input type="text" name="productTitle" id="productTitle" value="<%= isEdit ? product.getProductTitle() : "" %>" required/>

        <label for="productDescription">Description</label>
        <textarea name="productDescription" id="productDescription" rows="3"><%= isEdit ? product.getProductDescription() : "" %></textarea>

        <label for="productImage">Image URL</label>
        <input type="text" name="productImage" id="productImage" value="<%= isEdit ? product.getProductImage() : "" %>"/>

        <label for="productPrice">Price</label>
        <input type="number" step="0.01" name="productPrice" id="productPrice" value="<%= isEdit ? product.getProductPrice() : "" %>" required/>

        <label for="productDiscount">Discount</label>
        <input type="number" step="0.01" name="productDiscount" id="productDiscount" value="<%= isEdit ? product.getProductDiscount() : "0" %>"/>

        <label for="productQuantity">Quantity</label>
        <input type="number" name="productQuantity" id="productQuantity" value="<%= isEdit ? product.getProductQuantity() : "" %>" required/>

        <label for="categoryId">Category ID</label>
        <input type="number" name="categoryId" id="categoryId" value="<%= isEdit ? product.getCategoryId() : "" %>" required/>

        <button type="submit"><%= isEdit ? "Update" : "Add" %> Product</button>
        <a href="products?action=list">Cancel</a>
    </form>
</body>
</html>