package com.alam.services;

import com.alam.models.CategoryEntity;
import com.alam.models.FoodEntity;
import com.alam.models.RestaurantEntity;
import com.alam.repositories.FoodRepo;
import com.alam.requests.CreateFoodRequest;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class FoodServiceImplement implements FoodService{

    private FoodRepo foodRepo;
    @Override
    public FoodEntity createFood(CreateFoodRequest foodRequest, CategoryEntity category, RestaurantEntity restaurant) {
        FoodEntity food = new FoodEntity();
        food.setFoodCategory(category);
        food.setRestaurant(restaurant);
        food.setDescription(foodRequest.getDesc());
        food.setImages(foodRequest.getImages());
        food.setName(foodRequest.getName());
        food.setPrice(foodRequest.getPrice());
        food.setSeasonable(foodRequest.isSeasonal());
        food.setVegetarian(foodRequest.isVegetarian());
        food.setIngredientItems(foodRequest.getFoodIngredients());
        FoodEntity savedFood = foodRepo.save(food);
        restaurant.getFoods().add(savedFood);
        return savedFood;
    }

    @Override
    public void deleteFood(Long foodId) throws Exception {
        FoodEntity food = findFoodById(foodId);
        food.setRestaurant(null);
        foodRepo.save(food);


    }

    @Override
    public List<FoodEntity> getRestFood(Long restId, boolean isVeg, boolean isNonVeg, boolean isSeasonal, String foodCategory) {
        List<FoodEntity> food = foodRepo.findByResId(restId);

        if (isVeg){
            food = filterByVeg(food,isVeg);
        }
        if (isNonVeg){
            food = filterByNonVeg(food,isNonVeg);
        }
        if (isSeasonal){
            food = filterBySeasonal(food,isSeasonal);
        }
        if (foodCategory !=null && !foodCategory.equals("")){
            food = filterByCategory(food,foodCategory);
        }
        return food;
    }

    private List<FoodEntity> filterByCategory(List<FoodEntity> food, String foodCategory) {
        return food.stream().filter(foods->{
            if (foods.getFoodCategory()!=null){
                return foods.getFoodCategory().getName().equals(foodCategory);
            }
            return false;
        }).collect(Collectors.toList());
    }

    private List<FoodEntity> filterBySeasonal(List<FoodEntity> food, boolean isSeasonal) {
        return food.stream().filter(foods->foods.isSeasonable() == isSeasonal).collect(Collectors.toList());
    }

    private List<FoodEntity> filterByNonVeg(List<FoodEntity> food, boolean isNonVeg) {
        return food.stream().filter(foods->foods.isVegetarian() ==false).collect(Collectors.toList());
    }

    private List<FoodEntity> filterByVeg(List<FoodEntity> food, boolean isVeg) {
        return food.stream().filter(foods->foods.isVegetarian() == isVeg).collect(Collectors.toList());
    }

    @Override
    public List<FoodEntity> searchFood(String keyword) {
        return foodRepo.searchFood(keyword);
    }

    @Override
    public FoodEntity findFoodById(Long foodId) throws Exception {
        Optional<FoodEntity> optionalFood = foodRepo.findById(foodId);
        if (optionalFood.isEmpty()){
            throw new Exception("food doesn't exist");
        }
        return optionalFood.get();
    }

    @Override
    public FoodEntity updateAvailabilityStatus(Long foodId) throws Exception {
        FoodEntity food = findFoodById(foodId);
        food.setAvailable(!food.isAvailable());
        return  foodRepo.save(food);

    }
}
