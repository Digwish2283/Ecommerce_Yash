package com.yash.ecommerce.daoimpl;

import com.yash.ecommerce.dao.UserDAO;
import com.yash.ecommerce.domain.User;

import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.ResultSet;

public class UserDAOImpl implements UserDAO {

    private Connection conn;

//    public UserDAOImpl(Connection conn) {
//        this.conn = conn;
//    }

    public UserDAOImpl(Connection conn) {
        this.conn = conn;
    }

    @Override
    public boolean registerUser(User u) {
        boolean f = false;
         try{
               String query = "insert into users(userName,userEmail,userPassword) values (?,?,?)";
              PreparedStatement pst = conn.prepareStatement(query);
              pst.setString(1,u.getUserName());

               pst.setString(2,u.getUserEmail());
               pst.setString(3,u.getUserPassword());

               int i = pst.executeUpdate();
                if(i>0){
                     f=true;
                }
         } catch (Exception e) {
             e.printStackTrace();
         }
         return f;

    }

    @Override
    public User loginUser(String email, String password) {
          User us = null;
          try{
              String query = "select * from users where UserEmail=? and UserPassword=?";
               PreparedStatement pst = conn.prepareStatement(query);
             pst.setString(1,email);
             pst.setString(2, password);

           ResultSet rs = pst.executeQuery();
              if(rs.next()){
                   us = new User();

                    us.setUserId(rs.getInt(1));
                    us.setUserName(rs.getString(2));
                    us.setUserEmail(rs.getString(3));
                    us.setUserRole(rs.getString(4));

              }

          } catch (Exception e) {
              e.printStackTrace();
          }
          return  us;
    }
}
