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

@WebServlet("/login")
public class UserLoginController extends HttpServlet {

     private UserService userService;

     @Override
    public void init() throws ServletException {
       userService = new UserServiceImpl();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

         String email = req.getParameter("useremail");
         String password = req.getParameter("userpassword");

        User us = userService.loginUser(email,password);

         if(us!=null){
             resp.sendRedirect("index.jsp");
         }
         else{
             resp.sendRedirect("login.jsp");
         }

    }
}
