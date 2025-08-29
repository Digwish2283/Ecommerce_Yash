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
       private UserService userService = new UserServiceImpl() ;

//    @Override
//    public void init() throws ServletException {
//        super.init();
//        // Initialize UserService once when servlet is created
//        userService = new UserServiceImpl();
//        // You can also read servlet init parameters here if any
//        // String someParam = getServletConfig().getInitParameter("paramName");
//        System.out.println("UserController servlet initialized.");
//    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
          String userName= req.getParameter("name");
        String userEmail = req.getParameter("email");
        String userPassword = req.getParameter("password");
// storing
        User us = new User(userName,userEmail,userPassword);

            boolean success = userService.registerUser(us);

            if(success){
                resp.sendRedirect("index.jsp");
            }
            else{
                resp.sendRedirect("register.jsp");
            }
    }
}
