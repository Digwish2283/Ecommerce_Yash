package com.yash.ecommerce.controller;

import com.yash.ecommerce.domain.User;
import com.yash.ecommerce.service.UserService;
import com.yash.ecommerce.serviceimpl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class UserController extends HttpServlet {
    private UserService userService = new UserServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName = req.getParameter("name");
        String userEmail = req.getParameter("email");
        String userPassword = req.getParameter("password");
        String confirmPassword = req.getParameter("confirmPassword");

        // Basic validation
        if (!userPassword.equals(confirmPassword)) {
            req.setAttribute("error", "Passwords do not match");
            req.getRequestDispatcher("register.jsp").forward(req, resp);
            return;
        }

        // Create user object
        User user = new User(userName, userEmail, userPassword);

        // Register user
        boolean success = userService.registerUser(user);

        if (success) {
            req.setAttribute("success", "Registration successful! Please login.");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        } else {
            req.setAttribute("error", "Registration failed. Try again.");
            req.getRequestDispatcher("register.jsp").forward(req, resp);
        }
    }
}