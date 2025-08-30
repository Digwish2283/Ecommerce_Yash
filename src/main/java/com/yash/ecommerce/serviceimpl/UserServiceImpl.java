package com.yash.ecommerce.serviceimpl;

import com.yash.ecommerce.dao.UserDAO;
import com.yash.ecommerce.daoimpl.UserDAOImpl;
import com.yash.ecommerce.domain.User;
import com.yash.ecommerce.service.UserService;
import com.yash.ecommerce.util.JdbcUtil;

import java.sql.Connection;

public class UserServiceImpl implements UserService {

    @Override
    public boolean registerUser(User user) {
        try {
            Connection conn = JdbcUtil.getConn();
            UserDAO userDAO = new UserDAOImpl(conn);
            return userDAO.registerUser(user);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public User loginUser(String email, String password) {
        try {
            Connection conn = JdbcUtil.getConn();
            UserDAO userDAO = new UserDAOImpl(conn);
            return userDAO.loginUser(email, password);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}