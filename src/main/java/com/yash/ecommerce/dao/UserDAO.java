package com.yash.ecommerce.dao;

import com.yash.ecommerce.domain.User;

public interface UserDAO {
        public boolean registerUser(User u);
        public User loginUser(String email,String password);
}
