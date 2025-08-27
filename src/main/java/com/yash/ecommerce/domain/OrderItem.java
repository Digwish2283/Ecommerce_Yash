package com.yash.ecommerce.domain;

public class OrderItem {
    private int orderItemId; // Auto-increment
    private int orderId; // Foreign key
    private int productId; // Foreign key
    private int quantity; // CHECK(quantity > 0)
    private double priceAtPurchase; // CHECK(priceAtPurchase >= 0)

    public OrderItem() {}

    public int getOrderItemId() {
        return orderItemId;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
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

    public double getPriceAtPurchase() {
        return priceAtPurchase;
    }

    public void setPriceAtPurchase(double priceAtPurchase) {
        this.priceAtPurchase = priceAtPurchase;
    }
}