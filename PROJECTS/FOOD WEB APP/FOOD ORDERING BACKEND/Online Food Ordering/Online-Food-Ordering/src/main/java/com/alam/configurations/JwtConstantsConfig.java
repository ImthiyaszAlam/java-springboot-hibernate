package com.alam.configurations;

import javax.crypto.KeyGenerator;
import java.security.NoSuchAlgorithmException;

public class JwtConstantsConfig {
    public static final String SECRET_KEY;

    static {
        try {
            SECRET_KEY = String.valueOf(KeyGenerator.getInstance("HmacSHA256"));
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

    public static final String JWT_HEADER="authorization";


}
