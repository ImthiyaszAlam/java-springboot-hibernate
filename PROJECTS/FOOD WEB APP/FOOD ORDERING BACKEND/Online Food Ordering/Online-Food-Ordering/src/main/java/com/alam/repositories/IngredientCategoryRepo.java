package com.alam.repositories;

import com.alam.models.ingredientCategoryEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface IngredientCategoryRepo extends JpaRepository<ingredientCategoryEntity,Long> {
    List <ingredientCategoryEntity> findRestId(Long restId);
}
