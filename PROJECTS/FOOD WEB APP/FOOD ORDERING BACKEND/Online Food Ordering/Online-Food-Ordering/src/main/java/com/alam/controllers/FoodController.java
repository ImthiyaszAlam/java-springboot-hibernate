package com.alam.controllers;

import com.alam.models.FoodEntity;
import com.alam.models.UserEntity;
import com.alam.services.FoodService;
import com.alam.services.RestaurantService;
import com.alam.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/food")
public class FoodController {

    @Autowired
    private FoodService foodService;
    @Autowired
    private UserService userService;
    @Autowired
    private RestaurantService restaurantService;

    @GetMapping("/search")
    public ResponseEntity<List<FoodEntity>> searchFood(@RequestParam String name,
                                                 @RequestHeader("Authorization") String jwtToken) throws Exception {
        UserEntity user = userService.findUserByJwtToken(jwtToken);
        List<FoodEntity> food = foodService.searchFood(name);
        return new ResponseEntity<>(food, HttpStatus.CREATED);
    }

    @GetMapping("/restaurant/restId")
    public ResponseEntity<List<FoodEntity>> getRestFood(@RequestParam boolean isVeg,
                                                        @RequestParam boolean isNonVeg,
                                                        @RequestParam boolean isSeasonal,
                                                       @RequestParam(required = false) String foodCategory,
                                                       @PathVariable Long restId,
                                                       @RequestHeader("Authorization") String jwtToken) throws Exception {
        UserEntity user = userService.findUserByJwtToken(jwtToken);
        List<FoodEntity> food = foodService.getRestFood(restId,isVeg,isNonVeg,isSeasonal,foodCategory);
        return new ResponseEntity<>(food, HttpStatus.OK);
    }

}
