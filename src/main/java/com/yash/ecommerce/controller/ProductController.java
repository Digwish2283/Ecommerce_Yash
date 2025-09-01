package com.yash.ecommerce.controller;

import com.yash.ecommerce.domain.Product;
import com.yash.ecommerce.service.ProductService;
import com.yash.ecommerce.serviceimpl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/products")
public class ProductController extends HttpServlet {
    private ProductService productService;

    @Override
    public void init() throws ServletException {
        productService = new ProductServiceImpl();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) action = "list";

        switch (action) {
            case "new":
                request.getRequestDispatcher("product-form.jsp").forward(request, response);
                break;
            case "insert":
                insertProduct(request, response);
                break;
            case "delete":
                deleteProduct(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "update":
                updateProduct(request, response);
                break;
            default:
                listProducts(request, response);
                break;
        }
    }

    private void listProducts(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> products = productService.getAllProducts();
        request.setAttribute("productList", products);
        request.getRequestDispatcher("product-list.jsp").forward(request, response);
    }

    private void insertProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Product product = extractProductFromRequest(request);
        productService.saveProduct(product);
        response.sendRedirect("products?action=list");
    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        productService.deleteProduct(id);
        response.sendRedirect("products?action=list");
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product existingProduct = productService.getProductById(id);
        request.setAttribute("product", existingProduct);
        request.getRequestDispatcher("product-form.jsp").forward(request, response);
    }

    private void updateProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Product product = extractProductFromRequest(request);
        product.setProductId(Integer.parseInt(request.getParameter("id")));
        productService.updateProduct(product);
        response.sendRedirect("products?action=list");
    }

    private Product extractProductFromRequest(HttpServletRequest request) {
        String title = request.getParameter("productTitle");
        String description = request.getParameter("productDescription");
        String image = request.getParameter("productImage");
        double price = Double.parseDouble(request.getParameter("productPrice"));
        double discount = 0;
        String discountStr = request.getParameter("productDiscount");
        if (discountStr != null && !discountStr.isEmpty()) {
            discount = Double.parseDouble(discountStr);
        }
        int quantity = Integer.parseInt(request.getParameter("productQuantity"));
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));

        return new Product(title, description, image, price, discount, quantity, categoryId);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}