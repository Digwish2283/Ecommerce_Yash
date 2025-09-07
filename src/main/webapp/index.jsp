<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ECommerce Store - Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
    <style>
        /* Carousel size adjustments */
        .custom-carousel {
            max-width: 1100px;
            margin: 2rem auto;
        }
        .custom-carousel .carousel-inner,
        .custom-carousel .carousel-item,
        .custom-carousel .d-block {
            height: 558px;
        }
        .custom-carousel .d-block {
            object-fit: cover;
            width: 100%;
            height: 100%;
        }
        @media (max-width: 700px) {
            .custom-carousel { max-width: 100%; }
            .custom-carousel .carousel-inner,
            .custom-carousel .carousel-item,
            .custom-carousel .d-block { height: 180px; }
        }
       /* Make Bootstrap carousel arrows black and use correct SVGs */
       .custom-carousel .carousel-control-prev-icon,
       .custom-carousel .carousel-control-next-icon {
           background-size: 100% 100%;
           width: 2.5rem;
           height: 2.5rem;
       }

   .custom-carousel .carousel-control-prev-icon {
       background-image: url("data:image/svg+xml;charset=utf8,<svg xmlns='http://www.w3.org/2000/svg' fill='black' viewBox='0 0 8 8'><path d='M5.5 0L4.79.71 1.5 4l3.29 3.29.71.71L2.21 4z'/></svg>");
       background-size: 100% 100%;
       width: 2.5rem;
       height: 2.5rem;
   }

   .custom-carousel .carousel-control-next-icon {
       background-image: url("data:image/svg+xml;charset=utf8,<svg xmlns='http://www.w3.org/2000/svg' fill='black' viewBox='0 0 8 8'><path d='M2.5 0l-.71.71L5.79 4l-3.99 3.29.71.71L7.5 4z'/></svg>");
       background-size: 100% 100%;
       width: 2.5rem;
       height: 2.5rem;
   }
        .custom-carousel .carousel-control-prev-icon,
        .custom-carousel .carousel-control-next-icon {
            width: 2.5rem;
            height: 2.5rem;
        }
    </style>
</head>
<body>
<%@ include file="navbar.jspf" %>

<div id="carouselExampleIndicators" class="carousel slide custom-carousel" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="https://149842033.v2.pressablecdn.com/wp-content/uploads/2018/03/mimosa-responsive-ecommerce-website-template-768x460.jpg" alt="First slide"/>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="https://sagartech.co.in/blogs/wp-content/uploads/2024/08/Ecommerce-Website-Design-Feature-Image-scaled.webp" alt="Second slide"/>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="https://mir-s3-cdn-cf.behance.net/projects/max_808/547b7a150168669.Y3JvcCw4NDMsNjYwLDc3LDA.png" alt="Third slide"/>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<!-- Page-specific dashboard content goes here -->

<%@ include file="footer.jspf" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>