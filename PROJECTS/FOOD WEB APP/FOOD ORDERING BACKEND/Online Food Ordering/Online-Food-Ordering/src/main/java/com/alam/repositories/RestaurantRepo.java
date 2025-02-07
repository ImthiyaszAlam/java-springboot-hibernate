package com.alam.repositories;

import com.alam.models.RestaurantEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface RestaurantRepo extends JpaRepository<RestaurantEntity,Long> {


    @Query("SELECT res FROM RestaurantEntity res WHERE lower(res.name) LIKE lower(concat('%',:query,'%')) OR lower(res.cuisineType) LIKE lower(concat('%',:query,'%')) ")
    List<RestaurantEntity> searchResByQuery(String query);
    RestaurantEntity findByOwnerId(Long ownerId);
}
