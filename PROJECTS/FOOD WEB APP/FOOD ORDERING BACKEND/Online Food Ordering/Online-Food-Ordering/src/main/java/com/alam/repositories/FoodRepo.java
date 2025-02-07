package com.alam.repositories;

import com.alam.models.FoodEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface FoodRepo extends JpaRepository<FoodEntity , Long> {
    List<FoodEntity> findByResId(Long resId);
    @Query("SELECT f FROM FoodEntity f WHERE f.name LIKE %:keyword% OR f.foodCategory.name LIKE %:keyword% ")
    List<FoodEntity> searchFood(@Param("keyword")String keyword);
}
