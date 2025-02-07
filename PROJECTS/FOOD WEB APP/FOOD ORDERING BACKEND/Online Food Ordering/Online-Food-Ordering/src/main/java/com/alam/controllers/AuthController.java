package com.alam.controllers;


import com.alam.configurations.JWTProviderConfig;
import com.alam.models.CartEntity;
import com.alam.models.USER_ROLE;
import com.alam.models.UserEntity;
import com.alam.repositories.CartRepo;
import com.alam.repositories.UserRepo;
import com.alam.requests.LoginRequest;
import com.alam.responses.AuthResponse;
import com.alam.services.CustomUserDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Collection;

@RestController
@RequestMapping("/auth")
public class AuthController {

    @Autowired
    private UserRepo userRepo;
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private JWTProviderConfig jwtProvider;
    @Autowired
    private CustomUserDetailsService customUserDetailsService;
    @Autowired
    private CartRepo cartRepo;

    @PostMapping("/signup")
    public ResponseEntity<AuthResponse> createUserHandler(@RequestBody UserEntity userEntity) throws Exception {
         UserEntity isUserExist = userRepo.findByEmail(userEntity.getEmail());
         if (isUserExist !=null){
             throw new Exception("email already used");
         }

         UserEntity createedUser = new UserEntity();
         createedUser.setEmail(userEntity.getEmail());
         createedUser.setFullName(userEntity.getFullName());
         createedUser.setRole(userEntity.getRole());
         createedUser.setPassword(passwordEncoder.encode(userEntity.getPassword()));
         UserEntity savedUser = userRepo.save(createedUser);

        CartEntity cartEntity = new CartEntity();
        cartEntity.setCustomer(savedUser);
        cartRepo.save(cartEntity);

        Authentication authentication = new UsernamePasswordAuthenticationToken(userEntity.getEmail(),userEntity.getPassword());
        SecurityContextHolder.getContext().setAuthentication(authentication);
        String jwt = JWTProviderConfig.generateToken(authentication);

        AuthResponse authResponse = new AuthResponse();
        authResponse.setJwtToken(jwt);
        authResponse.setMessage("Registered successfully");
        authResponse.setUserRole(savedUser.getRole());

        return new ResponseEntity<>(authResponse, HttpStatus.CREATED);
    }
    @PostMapping("/signin")
    public ResponseEntity<AuthResponse>signIn(@RequestBody LoginRequest loginRequest) throws Exception{
        String username = loginRequest.getEmail();
        String password = loginRequest.getPassword();

        Authentication authentication = authenticate(username,password);
        Collection<?extends GrantedAuthority> authoirty = authentication.getAuthorities();
        String role = authoirty.isEmpty()?null:authoirty.iterator().next().getAuthority();
        String jwt = JWTProviderConfig.generateToken(authentication);
        AuthResponse authResponse = new AuthResponse();
        authResponse.setJwtToken(jwt);
        authResponse.setUserRole(USER_ROLE.valueOf(role));
        authResponse.setMessage("Logged In");
        return new ResponseEntity<>(authResponse,HttpStatus.OK);

    }

    private Authentication authenticate(String username, String password) {
        UserDetails userDetails = customUserDetailsService.loadUserByUsername(username);
        if (userDetails ==null){
            throw new BadCredentialsException("User doesn't exist");
        }
        if (!passwordEncoder.matches(password,userDetails.getPassword())){
            throw  new BadCredentialsException("password doesn't match");
        }
        return new UsernamePasswordAuthenticationToken(userDetails,null,userDetails.getAuthorities());
    }


}
