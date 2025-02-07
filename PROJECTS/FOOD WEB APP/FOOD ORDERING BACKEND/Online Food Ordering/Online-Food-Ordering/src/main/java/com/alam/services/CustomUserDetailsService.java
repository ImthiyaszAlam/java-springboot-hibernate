package com.alam.services;


import com.alam.models.USER_ROLE;
import com.alam.models.UserEntity;
import com.alam.repositories.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CustomUserDetailsService implements UserDetailsService {

    @Autowired
    private UserRepo userRepo;
    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        UserEntity user = userRepo.findByEmail(email);
        if (user==null){
            throw new UsernameNotFoundException("user not found with email"+email);
        }
        USER_ROLE userRole = user.getRole();
//        if (userRole == null){
//            userRole = USER_ROLE.ROLE_CUSTOMER;
//        }
        List<GrantedAuthority> grantedAuthorities = new ArrayList<>();
        grantedAuthorities.add(new SimpleGrantedAuthority(userRole.toString()));
        return new User(user.getEmail(),user.getPassword(),grantedAuthorities);
    }
}
