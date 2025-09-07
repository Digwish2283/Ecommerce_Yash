package com.yash.ecommerce.domain;

import java.util.Date;

public class Order {
    private int orderId; // Auto-increment
    private int userId; // Foreign key
    private Date orderDate; // Default: CURRENT_TIMESTAMP
    private double totalAmount; // CHECK(totalAmount >= 0)
    private String status; // Default: 'pending'
    private String paymentStatus; // Default: 'unpaid'
    private int shippingAddressId; // Foreign key

    public Order() {}

    public int getOrderId() {
        return orderId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public double getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(double totalAmount) {
        this.totalAmount = totalAmount;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPaymentStatus() {
        return paymentStatus;
    }

    public void setPaymentStatus(String paymentStatus) {
        this.paymentStatus = paymentStatus;
    }

    public int getShippingAddressId() {
        return shippingAddressId;
    }

    public void setShippingAddressId(int shippingAddressId) {
        this.shippingAddressId = shippingAddressId;
    }
}