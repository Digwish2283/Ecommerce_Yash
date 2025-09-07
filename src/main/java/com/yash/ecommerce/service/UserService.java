package com.yash.ecommerce.service;

import com.yash.ecommerce.domain.User;

public interface UserService {
        boolean registerUser(User u);
         User loginUser(String email, String password);
}
