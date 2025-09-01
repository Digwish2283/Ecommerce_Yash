package com.yash.ecommerce.daoimpl;

import com.yash.ecommerce.dao.ProductDao;
import com.yash.ecommerce.domain.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDaoImpl implements ProductDao {
    private Connection conn;

    public ProductDaoImpl(Connection conn) {
        this.conn = conn;
    }

    @Override
    public boolean saveProduct(Product product) {
        boolean flag = false;
        String sql = "INSERT INTO product (productTitle, productDescription, productImage, productPrice, productDiscount, productQuantity, categoryId) VALUES (?, ?, ?, ?, ?, ?, ?)";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, product.getProductTitle());
            pstmt.setString(2, product.getProductDescription());
            pstmt.setString(3, product.getProductImage());
            pstmt.setDouble(4, product.getProductPrice());
            pstmt.setDouble(5, product.getProductDiscount());
            pstmt.setInt(6, product.getProductQuantity());
            pstmt.setInt(7, product.getCategoryId());

            int rows = pstmt.executeUpdate();
            if (rows > 0) flag = true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public boolean updateProduct(Product product) {
        boolean flag = false;
        String sql = "UPDATE product SET productTitle=?, productDescription=?, productImage=?, productPrice=?, productDiscount=?, productQuantity=?, categoryId=? WHERE productId=?";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, product.getProductTitle());
            pstmt.setString(2, product.getProductDescription());
            pstmt.setString(3, product.getProductImage());
            pstmt.setDouble(4, product.getProductPrice());
            pstmt.setDouble(5, product.getProductDiscount());
            pstmt.setInt(6, product.getProductQuantity());
            pstmt.setInt(7, product.getCategoryId());
            pstmt.setInt(8, product.getProductId());

            int rows = pstmt.executeUpdate();
            if (rows > 0) flag = true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public boolean deleteProduct(int productId) {
        boolean flag = false;
        String sql = "DELETE FROM product WHERE productId=?";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, productId);
            int rows = pstmt.executeUpdate();
            if (rows > 0) flag = true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public Product getProductById(int productId) {
        Product product = null;
        String sql = "SELECT * FROM product WHERE productId=?";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, productId);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    product = new Product();
                    product.setProductId(rs.getInt("productId"));
                    product.setProductTitle(rs.getString("productTitle"));
                    product.setProductDescription(rs.getString("productDescription"));
                    product.setProductImage(rs.getString("productImage"));
                    product.setProductPrice(rs.getDouble("productPrice"));
                    product.setProductDiscount(rs.getDouble("productDiscount"));
                    product.setProductQuantity(rs.getInt("productQuantity"));
                    product.setCategoryId(rs.getInt("categoryId"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return product;
    }

    @Override
    public List<Product> getAllProducts() {
        List<Product> products = new ArrayList<>();
        String sql = "SELECT * FROM product";
        try (Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {
            while (rs.next()) {
                Product product = new Product();
                product.setProductId(rs.getInt("productId"));
                product.setProductTitle(rs.getString("productTitle"));
                product.setProductDescription(rs.getString("productDescription"));
                product.setProductImage(rs.getString("productImage"));
                product.setProductPrice(rs.getDouble("productPrice"));
                product.setProductDiscount(rs.getDouble("productDiscount"));
                product.setProductQuantity(rs.getInt("productQuantity"));
                product.setCategoryId(rs.getInt("categoryId"));
                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }
}