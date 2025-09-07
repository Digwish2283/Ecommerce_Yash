package com.yash.ecommerce.domain;

public class Cart {
    private int cartId; // Auto-increment
    private int userId; // Unique foreign key

    public Cart() {}

    public int getCartId() {
        return cartId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
}