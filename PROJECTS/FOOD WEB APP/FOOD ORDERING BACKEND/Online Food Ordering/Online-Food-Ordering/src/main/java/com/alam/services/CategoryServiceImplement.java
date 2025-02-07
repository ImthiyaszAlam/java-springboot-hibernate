package com.alam.services;

import com.alam.models.CategoryEntity;
import com.alam.models.RestaurantEntity;
import com.alam.repositories.CategoryRepo;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Optional;

public class CategoryServiceImplement implements CategoryService{
    @Autowired
    private RestaurantService restaurantService;
    @Autowired
    private CategoryRepo categoryRepo;
    @Override
    public CategoryEntity createCategory(String name, Long userId) throws Exception {
        RestaurantEntity restaurant = restaurantService.getRestByUserId(userId);
        CategoryEntity category = new CategoryEntity();
        category.setName(name);
        category.setRestaurant(restaurant);
        return categoryRepo.save(category);
    }

    @Override
    public List<CategoryEntity> findCategoryByRestId(Long restId) throws Exception {
        RestaurantEntity restaurant = restaurantService.findRestById(restId);
        return categoryRepo.findByRestId(restaurant.getId());
    }

    @Override
    public CategoryEntity findCategoryById(Long catId) throws Exception {
        Optional<CategoryEntity> optionalCategory = categoryRepo.findById(catId);
        if (optionalCategory.isEmpty()){
            throw new Exception("category not found");
        }
        return optionalCategory.get();
    }
}
