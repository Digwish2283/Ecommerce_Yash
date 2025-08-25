package com.yash.ecommerce.domain;

public class CartItem {
    private int cartItemId; // Auto-increment
    private int cartId; // Foreign key
    private int productId; // Foreign key
    private int quantity; // CHECK(quantity > 0)

    public CartItem() {}

    public int getCartItemId() {
        return cartItemId;
    }

    public int getCartId() {
        return cartId;
    }

    public void setCartId(int cartId) {
        this.cartId = cartId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}