package com.alam.responses;

import com.alam.models.USER_ROLE;
import lombok.Data;

@Data
public class AuthResponse {

    private String jwtToken;
    private String message;
    private USER_ROLE userRole;
}
