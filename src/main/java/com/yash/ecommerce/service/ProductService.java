package com.yash.ecommerce.service;

import com.yash.ecommerce.domain.Product;
import java.util.List;

public interface ProductService {
    boolean saveProduct(Product product);
    boolean updateProduct(Product product);
    boolean deleteProduct(int productId);
    Product getProductById(int productId);
    List<Product> getAllProducts();
}
