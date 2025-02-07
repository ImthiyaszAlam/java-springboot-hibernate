package com.alam.services;

import com.alam.models.CategoryEntity;
import com.alam.models.FoodEntity;
import com.alam.models.RestaurantEntity;
import com.alam.requests.CreateFoodRequest;

import java.util.List;

public interface FoodService {
    public FoodEntity createFood(CreateFoodRequest foodRequest, CategoryEntity category, RestaurantEntity restaurant);
    void deleteFood(Long foodId) throws Exception;
    public List<FoodEntity> getRestFood(Long restId, boolean isVeg,boolean isNonVeg,boolean isSeasonal,String foodCategory);
    public List<FoodEntity> searchFood(String keyword);
    public FoodEntity findFoodById(Long foodId) throws Exception;
    public FoodEntity updateAvailabilityStatus(Long foodId) throws Exception;
}
