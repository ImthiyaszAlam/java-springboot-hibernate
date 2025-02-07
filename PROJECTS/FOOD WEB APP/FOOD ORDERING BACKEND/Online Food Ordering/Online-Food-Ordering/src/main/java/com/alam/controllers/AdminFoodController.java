package com.alam.controllers;


import com.alam.models.FoodEntity;
import com.alam.models.RestaurantEntity;
import com.alam.models.UserEntity;
import com.alam.requests.CreateFoodRequest;
import com.alam.responses.MessageResponse;
import com.alam.services.FoodService;
import com.alam.services.RestaurantService;
import com.alam.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/admin/food")
public class AdminFoodController {

    @Autowired
    private FoodService foodService;
    @Autowired
    private UserService userService;
    @Autowired
    private RestaurantService restaurantService;

    @PostMapping
    public ResponseEntity<FoodEntity> createFood(@RequestBody CreateFoodRequest foodRequest,
                                                 @RequestHeader ("Authorization") String jwtToken) throws Exception {
        UserEntity user = userService.findUserByJwtToken(jwtToken);
        RestaurantEntity restaurant = restaurantService.findRestById(foodRequest.getRestId());
        FoodEntity food = foodService.createFood(foodRequest,foodRequest.getCategory(),restaurant);
        return new ResponseEntity<>(food, HttpStatus.CREATED);

    }

    @DeleteMapping("/{id}")
    public ResponseEntity<MessageResponse> deleteFood(@PathVariable Long id,
                                                 @RequestHeader ("Authorization") String jwtToken) throws Exception {
        UserEntity user = userService.findUserByJwtToken(jwtToken);
        foodService.deleteFood(id);
        MessageResponse messageResponse = new MessageResponse();
        messageResponse.setMesssage("food deleted successfully");
        return new ResponseEntity<>(messageResponse, HttpStatus.CREATED);

    }


    @PutMapping("/{id}")
    public ResponseEntity<FoodEntity> updateFoodAvailability(@PathVariable Long id,
                                                      @RequestHeader ("Authorization") String jwtToken) throws Exception {
        UserEntity user = userService.findUserByJwtToken(jwtToken);
        FoodEntity food = foodService.updateAvailabilityStatus(id);
        return new ResponseEntity<>(food, HttpStatus.FOUND);

    }
}
