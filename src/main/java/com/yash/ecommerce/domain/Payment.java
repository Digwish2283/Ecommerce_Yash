package com.yash.ecommerce.domain;
import java.util.Date;

public class Payment {
    private int paymentId; // Auto-increment
    private int orderId; // Unique foreign key
    private String paymentMethod; // ENUM('credit_card', 'debit_card', 'UPI', 'netbanking', 'cod')
    private double amount; // CHECK(amount >= 0)
    private Date paymentDate; // Default: CURRENT_TIMESTAMP
    private String status; // ENUM('success', 'failed', 'pending')

    public Payment() {}

    public int getPaymentId() {
        return paymentId;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public Date getPaymentDate() {
        return paymentDate;
    }

    public void setPaymentDate(Date paymentDate) {
        this.paymentDate = paymentDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}