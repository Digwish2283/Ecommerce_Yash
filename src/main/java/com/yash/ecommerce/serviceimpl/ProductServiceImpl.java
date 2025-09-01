package com.yash.ecommerce.serviceimpl;

import com.yash.ecommerce.dao.ProductDao;
import com.yash.ecommerce.daoimpl.ProductDaoImpl;
import com.yash.ecommerce.domain.Product;
import com.yash.ecommerce.service.ProductService;
import com.yash.ecommerce.util.JdbcUtil;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public class ProductServiceImpl implements ProductService {

    private ProductDao productDao;

    public ProductServiceImpl() {
        try {
            Connection conn = JdbcUtil.getConnection();
            productDao = new ProductDaoImpl(conn);
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle or propagate as needed
        }
    }

    @Override
    public boolean saveProduct(Product product) {
        return productDao.saveProduct(product);
    }

    @Override
    public boolean updateProduct(Product product) {
        return productDao.updateProduct(product);
    }

    @Override
    public boolean deleteProduct(int productId) {
        return productDao.deleteProduct(productId);
    }

    @Override
    public Product getProductById(int productId) {
        return productDao.getProductById(productId);
    }

    @Override
    public List<Product> getAllProducts() {
        return productDao.getAllProducts();
    }
}