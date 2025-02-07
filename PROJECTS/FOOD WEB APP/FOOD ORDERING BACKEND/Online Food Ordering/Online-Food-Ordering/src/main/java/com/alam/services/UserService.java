package com.alam.services;

import com.alam.models.UserEntity;

public interface UserService {

    public UserEntity findUserByJwtToken(String jwtToken) throws Exception;

    public UserEntity findUserByEmail(String email) throws Exception;

}
