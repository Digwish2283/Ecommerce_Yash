package com.yash.ecommerce.domain;

public class Review {
    private int reviewId;
    private int productId;
    private int userId;
    private int rating;
    private String comment;
    private java.sql.Timestamp reviewDate;

    // Constructors
    public Review() {}

    public Review(int reviewId, int productId, int userId, int rating, String comment, java.sql.Timestamp reviewDate) {
        this.reviewId = reviewId;
        this.productId = productId;
        this.userId = userId;
        this.rating = rating;
        this.comment = comment;
        this.reviewDate = reviewDate;
    }

    // Getters and Setters
    public int getReviewId() { return reviewId; }
    public void setReviewId(int reviewId) { this.reviewId = reviewId; }

    public int getProductId() { return productId; }
    public void setProductId(int productId) { this.productId = productId; }

    public int getUserId() { return userId; }
    public void setUserId(int userId) { this.userId = userId; }

    public int getRating() { return rating; }
    public void setRating(int rating) { this.rating = rating; }

    public String getComment() { return comment; }
    public void setComment(String comment) { this.comment = comment; }

    public java.sql.Timestamp getReviewDate() { return reviewDate; }
    public void setReviewDate(java.sql.Timestamp reviewDate) { this.reviewDate = reviewDate; }
}
