package com.alam.services;

import com.alam.models.IngredientItemsEntity;
import com.alam.models.RestaurantEntity;
import com.alam.models.ingredientCategoryEntity;
import com.alam.repositories.IngredientCategoryRepo;
import com.alam.repositories.IngredientItemRepo;
import com.sun.jdi.PrimitiveValue;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class IngredientServiceImplement implements IngredientsService {
    @Autowired
    private IngredientCategoryRepo ingredientCategoryRepo;
    @Autowired
    private IngredientItemRepo ingredientItemRepo;
    private RestaurantService restaurantService;
    @Override
    public ingredientCategoryEntity createIngredientCategory(String name, Long restId) throws Exception {
        RestaurantEntity restaurant = restaurantService.findRestById(restId);
        ingredientCategoryEntity category = new ingredientCategoryEntity();
        category.setRestaurant(restaurant);
        category.setName(name);
        return ingredientCategoryRepo.save(category);
    }

    @Override
    public ingredientCategoryEntity findIngredientCategoryById(Long id) throws Exception {
        Optional<ingredientCategoryEntity> ingredientCategory = ingredientCategoryRepo.findById(id);
        if (ingredientCategory.isEmpty()){
            throw new Exception("category not found");
        }
        return ingredientCategory.get();
    }

    @Override
    public List<ingredientCategoryEntity> findIngredientCategoryByRestId(Long restId) throws Exception {
        restaurantService.findRestById(restId);
        return ingredientCategoryRepo.findRestId(restId);
    }

    @Override
    public IngredientItemsEntity createIngredientItem(Long restId, String ingredientName, Long categoryId) throws Exception {
        ingredientCategoryEntity ingredientCategory = findIngredientCategoryById(categoryId);
        RestaurantEntity restaurant = restaurantService.findRestById(restId);
        IngredientItemsEntity ingredientItems = new IngredientItemsEntity();
        ingredientItems.setName(ingredientName);
        ingredientItems.setRestaurant(restaurant);
        ingredientItems.setIngredientCategory(ingredientCategory);
        IngredientItemsEntity ingredientItems1 = ingredientItemRepo.save(ingredientItems);
        ingredientCategory.getIngredients().add(ingredientItems1);
        return ingredientItems1;
    }

    @Override
    public List<IngredientItemsEntity> findRestaurantIngredients(Long restId) {
        return ingredientItemRepo.findRestById(restId);
    }

    @Override
    public IngredientItemsEntity upStock(Long id) throws Exception {
        Optional<IngredientItemsEntity> ingredientItems = ingredientItemRepo.findById(id);
        if (ingredientItems.isEmpty()){
            throw new Exception("ingredient not found");
        }
        IngredientItemsEntity ingredientItems1 = ingredientItems.get();
        ingredientItems1.setInStock(!ingredientItems1.isInStock());
        return ingredientItemRepo.save(ingredientItems1);
    }
}
