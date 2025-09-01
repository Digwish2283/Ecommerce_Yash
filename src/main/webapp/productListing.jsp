<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.yash.ecommerce.domain.Product" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products - ECommerce Store</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
<%@ include file="navbar.jspf" %>
    <!-- Page Header with rectangle style -->
    <div class="page-header">
        <div class="container-fluid">
            <div class="header-rectangle">
                <div class="header-title-group">
                    <h1 class="fw-bold">Our Products</h1>
                    <p class="lead">Discover amazing products at great prices</p>
                </div>
                <div>
                    <i class="fas fa-shopping-bag fa-5x opacity-25"></i>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <!-- Search, Sort, View section (keep as-is) -->
        <div class="row">
            <!-- Filter Sidebar (keep as-is) -->
            <div class="col-lg-3">
                <!-- ... sidebar code ... -->
            </div>
            <!-- Products Grid -->
            <div class="col-lg-9">
                <div class="row" id="productsContainer">
                    <%
                        List<Product> products = (List<Product>) request.getAttribute("productList");
                        if (products != null && !products.isEmpty()) {
                            for (Product product : products) {
                    %>
                    <div class="col-xl-4 col-md-6 mb-4 product-item"
                         data-category="category<%= product.getCategoryId() %>"
                         data-price="<%= product.getProductPrice() %>">
                        <div class="product-card h-100 d-flex flex-column">
                            <div class="product-badge <%= (product.getProductDiscount() == 0) ? "new" : "sale" %>">
                                <%= (product.getProductDiscount() == 0) ? "NEW" : "SALE" %>
                            </div>
                            <div class="product-image text-center">
                                <img src="<%= product.getProductImage() %>" alt="<%= product.getProductTitle() %>"
                                     style="width:100%;max-height:200px;object-fit:cover;"/>
                            </div>
                            <div class="product-info flex-grow-1">
                                <h5 class="product-title"><%= product.getProductTitle() %></h5>
                                <p class="product-description"><%= product.getProductDescription() %></p>
                                <div class="product-rating mb-2">
                                    <span class="stars">★★★★☆</span>
                                    <span class="text-muted">(No reviews)</span>
                                </div>
                                <div class="product-price mb-2">
                                    $<%= product.getProductPrice() - product.getProductDiscount() %>
                                    <% if (product.getProductDiscount() > 0) { %>
                                        <span class="original-price text-muted text-decoration-line-through ms-2">
                                            $<%= product.getProductPrice() %>
                                        </span>
                                    <% } %>
                                </div>
                                <button class="btn btn-primary w-100 mt-auto">
                                    <i class="fas fa-shopping-cart me-2"></i>Add to Cart
                                </button>
                            </div>
                        </div>
                    </div>
                    <%
                            }
                        } else {
                    %>
                    <div class="col-12">
                        <div class="alert alert-info text-center">No products available.</div>
                    </div>
                    <%
                        }
                    %>
                </div>
                <!-- Pagination (keep as-is or make dynamic as needed) -->
                <nav aria-label="Products pagination" class="mt-4">
                    <ul class="pagination pagination-custom justify-content-center">
                        <li class="page-item disabled">
                            <a class="page-link" href="#" tabindex="-1">Previous </a>
                        </li>
                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#">Next</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
<%@ include file="footer.jspf" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>