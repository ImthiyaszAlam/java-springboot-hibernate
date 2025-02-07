package com.alam.repositories;

import com.alam.models.IngredientItemsEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface IngredientItemRepo extends JpaRepository<IngredientItemsEntity,Long> {
    List<IngredientItemsEntity> findRestById(Long restId);
}
