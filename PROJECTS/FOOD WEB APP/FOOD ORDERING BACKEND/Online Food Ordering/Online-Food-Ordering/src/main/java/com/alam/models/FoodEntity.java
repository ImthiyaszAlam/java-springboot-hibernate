package com.alam.models;

import com.alam.dto.RestaurantDTO;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Data
public class FoodEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String name;
    private String description;
    private Long price;

    @ManyToOne
    private CategoryEntity foodCategory;
    @Column(length = 1000)
    @ElementCollection
    private List<String>images;
    private boolean isAvailable;
    @ManyToOne
    private RestaurantEntity restaurant;
    private boolean isVegetarian;
    private  boolean isSeasonable;
    @ManyToMany
    private List<IngredientItemsEntity> ingredientItems = new ArrayList<>();
    private Date creationFood;


}
