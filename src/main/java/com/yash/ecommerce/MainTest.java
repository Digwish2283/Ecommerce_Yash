package com.yash.ecommerce;

import com.yash.ecommerce.domain.Product;
import com.yash.ecommerce.service.ProductService;
import com.yash.ecommerce.serviceimpl.ProductServiceImpl;

public class MainTest {
    public static void main(String[] args) {
        // Create ProductService object (which internally uses DAO and JDBCUtil)
        ProductService productService = new ProductServiceImpl();

//         Example image path - can be a URL or absolute file path
        String imagePath = "https://www.freepik.com/free-photo/top-view-expensive-perfume-elegant-package-as-present-dark-table_17180361.htm#fromView=search&page=1&position=5&uuid=1e2622d5-fa18-44fa-bfa7-ba868ac0802a&query=Fogg+perfume+red"; // For web image
        // String imagePath = "C:/Users/youruser/images/product1.jpg"; // For local file path

        // Create Product object with test data
        Product p = new Product(
                "Wild Stone",
                "A scent of real success",
                imagePath,
                399.99,    // productPrice
                30.0,      // productDiscount
                15,        // productQuantity
                1          // categoryId
        );

        // Save product using service
        boolean isSaved = productService.saveProduct(p);

        if (isSaved) {
            System.out.println("Product saved successfully!");
        } else {
            System.out.println("Product could not be saved.");
        }

//        int productIdToDelete = 2;
//        boolean isDeleted = productService.deleteProduct(productIdToDelete);
//
//        // Output result
//        if (isDeleted) {
//            System.out.println("Product deleted successfully!");
//        } else {
//            System.out.println("Product could not be deleted (maybe not found).");
//        }

    }
}

