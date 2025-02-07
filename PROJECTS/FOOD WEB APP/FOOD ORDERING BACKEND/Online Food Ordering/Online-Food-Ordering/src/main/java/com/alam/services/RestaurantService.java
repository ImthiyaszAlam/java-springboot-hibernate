package com.alam.services;

import com.alam.dto.RestaurantDTO;
import com.alam.models.RestaurantEntity;
import com.alam.models.UserEntity;
import com.alam.requests.CreateRestaurantRequest;

import java.util.List;

public interface RestaurantService {
    public RestaurantEntity createRestaurant(CreateRestaurantRequest restaurantRequest, UserEntity user);
    public RestaurantEntity updateRestaurant(Long restaurantId, CreateRestaurantRequest updateRestaurant) throws Exception;
    public void deleteRestaurant(Long restaurantId) throws Exception;
    public List<RestaurantEntity>getAllRestaurant();
    public List<RestaurantEntity>searchRestaurant(String keyword);
    public RestaurantEntity findRestById(Long id) throws Exception;
    public RestaurantEntity getRestByUserId(Long userId) throws Exception;
    public RestaurantDTO addToFavourites(Long restId,UserEntity userId)throws Exception;
    public RestaurantEntity updateRestStatus(Long id)throws Exception;

}
