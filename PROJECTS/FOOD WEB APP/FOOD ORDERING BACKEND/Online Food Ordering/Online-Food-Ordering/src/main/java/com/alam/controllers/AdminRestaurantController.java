package com.alam.controllers;

import com.alam.models.RestaurantEntity;
import com.alam.models.UserEntity;
import com.alam.requests.CreateRestaurantRequest;
import com.alam.responses.MessageResponse;
import com.alam.services.RestaurantService;
import com.alam.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/admin/restaurant")
public class AdminRestaurantController {
    @Autowired
    RestaurantService restaurantService;
    @Autowired
    UserService userService;

    @PostMapping("/")
    public ResponseEntity<RestaurantEntity> createRestaurant(@RequestBody CreateRestaurantRequest restaurantRequest, @RequestHeader ("auhtorization")String jwtToken) throws Exception {
        UserEntity user = userService.findUserByJwtToken(jwtToken);
        RestaurantEntity restaurant = restaurantService.createRestaurant(restaurantRequest,user);
        return new ResponseEntity<>(restaurant, HttpStatus.CREATED);
    }

    @PutMapping("/{id}")
    public ResponseEntity<RestaurantEntity> updateRestaurant(@RequestBody CreateRestaurantRequest restaurantRequest, @RequestHeader ("auhtorization")String jwtToken,@PathVariable Long id) throws Exception {
        UserEntity user = userService.findUserByJwtToken(jwtToken);
        RestaurantEntity restaurant = restaurantService.updateRestaurant(id,restaurantRequest);
        return new ResponseEntity<>(restaurant, HttpStatus.CREATED);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<MessageResponse> deleteRestaurant(@RequestHeader ("auhtorization")String jwtToken,@PathVariable Long id) throws Exception {
        UserEntity user = userService.findUserByJwtToken(jwtToken);
        restaurantService.deleteRestaurant(id);

        MessageResponse messageResponse = new MessageResponse();
        messageResponse.setMesssage("deleted");
        return new ResponseEntity<>(messageResponse, HttpStatus.CREATED);
    }


    @PutMapping("/{id}/status")
    public ResponseEntity<RestaurantEntity> updateRestaurantStatus( @RequestHeader ("auhtorization")String jwtToken,@PathVariable Long id) throws Exception {
        UserEntity user = userService.findUserByJwtToken(jwtToken);
        RestaurantEntity restaurant = restaurantService.updateRestStatus(id);
        return new ResponseEntity<>(restaurant, HttpStatus.OK);
    }



    @PutMapping("/user")
    public ResponseEntity<RestaurantEntity> getRestByUserId( @RequestHeader ("auhtorization")String jwtToken) throws Exception {
        UserEntity user = userService.findUserByJwtToken(jwtToken);
        RestaurantEntity restaurant = restaurantService.getRestByUserId(user.getId());
        return new ResponseEntity<>(restaurant, HttpStatus.OK);
    }







}
