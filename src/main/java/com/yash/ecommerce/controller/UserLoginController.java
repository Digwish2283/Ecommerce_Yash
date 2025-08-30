package com.yash.ecommerce.controller;

import com.yash.ecommerce.domain.User;
import com.yash.ecommerce.service.UserService;
import com.yash.ecommerce.serviceimpl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class UserLoginController extends HttpServlet {
    private UserService userService = new UserServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("useremail");
        String password = req.getParameter("userpassword");

        // Login user
        User user = userService.loginUser(email, password);

        if (user != null) {
            // Create session
            HttpSession session = req.getSession();
            session.setAttribute("user", user);
            session.setAttribute("userId", user.getUserId());
            session.setAttribute("userName", user.getUserName());
            session.setAttribute("userRole", user.getUserRole());

            // Redirect based on role
            if ("admin".equals(user.getUserRole())) {
                resp.sendRedirect("admin/dashboard.jsp");
            } else {
                resp.sendRedirect("index.jsp");
            }
        } else {
            req.setAttribute("error", "Invalid email or password");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
        }
    }
}