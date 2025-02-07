package com.alam.services;

import com.alam.models.IngredientItemsEntity;
import com.alam.models.ingredientCategoryEntity;

import java.util.List;

public interface IngredientsService {
    public ingredientCategoryEntity createIngredientCategory(String name, Long restId)throws Exception;
    public ingredientCategoryEntity findIngredientCategoryById(Long id) throws Exception;
    public List<ingredientCategoryEntity> findIngredientCategoryByRestId(Long restId) throws Exception;
    public IngredientItemsEntity createIngredientItem(Long restId, String ingredientName,Long categoryId) throws Exception;
    public List<IngredientItemsEntity> findRestaurantIngredients(Long restId);
    public IngredientItemsEntity upStock(Long id) throws Exception;

}
