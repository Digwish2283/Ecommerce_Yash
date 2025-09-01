<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.yash.ecommerce.domain.Product" %>
<%
    List<Product> products = (List<Product>) request.getAttribute("productList");
%>
<html>
<head>
    <title>Product Listing</title>
    <style>
        table { border-collapse: collapse; width: 100%; }
        th, td { border: 1px solid #ddd; padding: 8px; }
        th { background-color: #f2f2f2; }
        a.button { padding: 6px 12px; background: #4CAF50; color: white; border-radius: 4px; text-decoration: none; }
        a.button.delete { background: #f44336; }
        a.button.edit { background: #2196F3; }
    </style>
</head>
<body>
    <h2>Product Listing</h2>
    <a href="products?action=new" class="button">Add Product</a>
    <br/><br/>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Description</th>
                <th>Image</th>
                <th>Price</th>
                <th>Discount</th>
                <th>Quantity</th>
                <th>Category ID</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
        <%
            if (products != null && !products.isEmpty()) {
                for (Product product : products) {
        %>
            <tr>
                <td><%= product.getProductId() %></td>
                <td><%= product.getProductTitle() %></td>
                <td><%= product.getProductDescription() %></td>
                <td>
                    <% if (product.getProductImage() != null && !product.getProductImage().isEmpty()) { %>
                        <img src="<%= product.getProductImage() %>" alt="Image" style="width:60px;height:60px;"/>
                    <% } %>
                </td>
                <td><%= product.getProductPrice() %></td>
                <td><%= product.getProductDiscount() %></td>
                <td><%= product.getProductQuantity() %></td>
                <td><%= product.getCategoryId() %></td>
                <td>
                    <a href="products?action=edit&id=<%= product.getProductId() %>" class="button edit">Edit</a>
                    <a href="products?action=delete&id=<%= product.getProductId() %>" class="button delete" onclick="return confirm('Are you sure you want to delete this product?');">Delete</a>
                </td>
            </tr>
        <%
                }
            } else {
        %>
            <tr>
                <td colspan="9">No products found.</td>
            </tr>
        <%
            }
        %>
        </tbody>
    </table>
</body>
</html>