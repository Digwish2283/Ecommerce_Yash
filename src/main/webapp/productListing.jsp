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
        <div class="search-section mb-4">
            <form class="search-form row gx-2 gy-2">
                <div class="search-group col-lg-6 col-md-12 mb-2 mb-lg-0">
                    <input type="text" class="form-control" placeholder="Search products..." id="searchInput">
                    <button class="btn-search" type="button">
                        <i class="fas fa-search"></i>
                    </button>
                </div>
                <div class="sort-group col-lg-3 col-md-6 mb-2 mb-lg-0">
                    <select class="form-select" id="sortSelect">
                        <option value="">Sort by...</option>
                        <option value="name">Name A-Z</option>
                        <option value="price-low">Price: Low to High</option>
                        <option value="price-high">Price: High to Low</option>
                        <option value="rating">Highest Rated</option>
                        <option value="newest">Newest First</option>
                    </select>
                </div>
                <div class="view-group col-lg-3 col-md-6 text-end">
                    <div class="view-toggle">
                        <button class="view-btn active" type="button" id="gridView">
                            <i class="fas fa-th"></i>
                        </button>
                        <button class="view-btn" type="button" id="listView">
                            <i class="fas fa-list"></i>
                        </button>
                    </div>
                    <span class="product-count ms-2">
                        <span id="productCount">2</span> products
                    </span>
                </div>
            </form>
        </div>
        <div class="row">
            <!-- Filter Sidebar -->
            <div class="col-lg-3">
                <div class="filter-sidebar">
                    <h5 class="fw-bold mb-3">
                        <i class="fas fa-filter me-2"></i>Filters
                    </h5>
                    <!-- Categories -->
                    <div class="mb-4">
                        <h6 class="fw-bold">Categories</h6>
                        <div class="list-group list-group-flush">
                            <button class="category-filter active">
                                <i class="fas fa-th me-2"></i>All Categories
                            </button>
                            <button class="category-filter">
                                <i class="fas fa-laptop me-2"></i>Category 1
                            </button>
                            <button class="category-filter">
                                <i class="fas fa-tshirt me-2"></i>Category 2
                            </button>
                            <button class="category-filter">
                                <i class="fas fa-book me-2"></i>Category 3
                            </button>
                            <button class="category-filter">
                                <i class="fas fa-home me-2"></i>Category 4
                            </button>
                            <button class="category-filter">
                                <i class="fas fa-dumbbell me-2"></i>Category 5
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Products Grid -->
            <div class="col-lg-9">
                <div class="row" id="productsContainer">
                    <!-- PRODUCT 1 -->
                    <div class="col-xl-4 col-md-6 mb-4 product-item" data-category="electronics" data-price="799">
                        <div class="product-card">
                            <div class="product-badge new">NEW</div>
                            <div class="product-image">
                                <img src="https://cdn.vox-cdn.com/thumbor/gRRyI6jZSAeMRq3C1is36HtvFfs=/3x0:1017x676/1200x800/filters:focal(3x0:1017x676)/cdn.vox-cdn.com/imported_assets/1575983/smartphone-lineup_1020.jpg"/>
                            </div>
                            <div class="product-info">
                                <h5 class="product-title">Smartphone X200</h5>
                                <p class="product-description">Latest generation smartphone with amazing camera and battery life.</p>
                                <div class="product-rating">
                                    <span class="stars">4 stars</span>
                                    <span class="text-muted">(123 reviews)</span>
                                </div>
                                <div class="product-price">
                                    $799
                                    <span class="original-price">$899</span>
                                </div>
                                <button class="btn-add-cart" >
                                    <i class="fas fa-shopping-cart me-2"></i>Add to Cart
                                </button>
                            </div>
                        </div>
                    </div>
                    </div>
                </div>
                <!-- Pagination -->
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