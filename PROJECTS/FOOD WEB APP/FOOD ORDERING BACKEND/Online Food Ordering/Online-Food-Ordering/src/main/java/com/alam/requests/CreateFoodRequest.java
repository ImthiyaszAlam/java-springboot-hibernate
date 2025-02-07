package com.alam.requests;

import com.alam.models.CategoryEntity;
import com.alam.models.IngredientItemsEntity;
import lombok.Data;

import java.util.List;

@Data
public class CreateFoodRequest {
    private String name;
    private String desc;
    private Long price;
    private CategoryEntity category;
    private List<String> images;

    private Long restId;
    private boolean vegetarian;
    private boolean seasonal;

    private List<IngredientItemsEntity> foodIngredients;

}
