package com.alam.controllers;

import com.alam.dto.RestaurantDTO;
import com.alam.models.RestaurantEntity;
import com.alam.models.UserEntity;
import com.alam.services.RestaurantService;
import com.alam.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/restaurant")
public class RestaurantController {
    @Autowired
    private RestaurantService restaurantService;
    @Autowired
    private UserService userService;

    @GetMapping("/search")
    public ResponseEntity<List<RestaurantEntity>> searchRestaurant(
            @RequestHeader("Authorization") String authHeader,
            @RequestParam String keyword) throws Exception {
        String jwtToken = authHeader.startsWith("Bearer ") ? authHeader.substring(7) : authHeader;
        UserEntity user = userService.findUserByJwtToken(jwtToken);
        List<RestaurantEntity> restaurants = restaurantService.searchRestaurant(keyword);
        return new ResponseEntity<>(restaurants, HttpStatus.OK);
    }

    @GetMapping("")
    public ResponseEntity<List<RestaurantEntity>> getAllRestaurant(
            @RequestHeader("Authorization") String authHeader) throws Exception {
        String jwtToken = authHeader.startsWith("Bearer ") ? authHeader.substring(7) : authHeader;
        UserEntity user = userService.findUserByJwtToken(jwtToken);
        List<RestaurantEntity> restaurants = restaurantService.getAllRestaurant();
        return new ResponseEntity<>(restaurants, HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<RestaurantEntity> findRestById(
            @RequestHeader("Authorization") String authHeader,
            @PathVariable Long id) throws Exception {
        String jwtToken = authHeader.startsWith("Bearer ") ? authHeader.substring(7) : authHeader;
        UserEntity user = userService.findUserByJwtToken(jwtToken);
        RestaurantEntity restaurant = restaurantService.findRestById(id);
        return new ResponseEntity<>(restaurant, HttpStatus.OK);
    }

    @PutMapping("/{id}/addFav")
    public ResponseEntity<RestaurantDTO> addToFavourites(
            @RequestHeader("Authorization") String authHeader,
            @PathVariable Long id) throws Exception {
        String jwtToken = authHeader.startsWith("Bearer ") ? authHeader.substring(7) : authHeader;
        UserEntity user = userService.findUserByJwtToken(jwtToken);
        RestaurantDTO restaurantDTO = restaurantService.addToFavourites(id, user);
        return new ResponseEntity<>(restaurantDTO, HttpStatus.OK);
    }
}
