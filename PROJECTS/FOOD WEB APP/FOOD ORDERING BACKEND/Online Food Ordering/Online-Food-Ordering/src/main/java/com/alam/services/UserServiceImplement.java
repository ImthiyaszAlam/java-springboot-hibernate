package com.alam.services;

import com.alam.configurations.JWTProviderConfig;
import com.alam.models.UserEntity;
import com.alam.repositories.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImplement implements UserService{

    @Autowired
    private UserRepo userRepo;
    @Autowired
    private JWTProviderConfig jwtProviderConfig;
    @Override
    public UserEntity findUserByJwtToken(String jwtToken) throws Exception {
        String email = jwtProviderConfig.getEmailFromJwtToken(jwtToken);
        UserEntity user =  findUserByEmail(email);
        return user;
    }

    @Override
    public UserEntity findUserByEmail(String email) throws Exception {
        UserEntity user = userRepo.findByEmail(email);
        if (user == null){
            throw new Exception("user not found ");
        }
        return  user;
    }
}
