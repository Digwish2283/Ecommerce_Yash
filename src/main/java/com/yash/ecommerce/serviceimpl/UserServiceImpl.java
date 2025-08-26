package com.yash.ecommerce.serviceimpl;

import com.yash.ecommerce.dao.UserDAO;
import com.yash.ecommerce.daoimpl.UserDAOImpl;
import com.yash.ecommerce.domain.User;
import com.yash.ecommerce.service.UserService;
import com.yash.ecommerce.util.JdbcUtil;

import java.nio.channels.ScatteringByteChannel;
import java.sql.Connection;
import java.sql.SQLException;

public class UserServiceImpl implements UserService {

     private UserDAO userDAO;

   public   UserServiceImpl() {
       try {
           Connection conn = JdbcUtil.getConn();
           this.userDAO = new UserDAOImpl(conn);
       } catch (SQLException e) {
           e.printStackTrace();
       }
   }

     @Override
    public boolean registerUser(User u) {

//             if (u.getUserEmail() == null ) {
//                 System.out.println("Invalid email format");
//                 return false;
//             }
//             if (u.getUserPassword() == null || u.getUserPassword().length() < 6) {
//                 System.out.println("Password must be at least 6 characters");
//                 return false;
//             }
//             if (u.getUserName() == null || u.getUserName().trim().isEmpty()) {
//                 System.out.println("User name cannot be empty");
//                 return false;
//             }

        return userDAO.registerUser(u);
    }

    public User loginUser(String email,String password){


//        if (email == null || email.trim().isEmpty()) {
//            System.out.println("Email must not be empty");
//            return null;
//        }
//        if (password == null || password.length() < 6) {
//            System.out.println("Password must be at least 6 characters");
//            return null;
//        }

        //  Lookup user in database
       User user = userDAO.loginUser(email,password);



        //  Business logic
        if (user == null) {
            System.out.println("Invalid email or password");
            return null;
        }
  return user;
    }

}
