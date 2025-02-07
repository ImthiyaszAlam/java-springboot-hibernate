package com.alam.controllers;

import com.alam.models.CategoryEntity;
import com.alam.models.UserEntity;
import com.alam.services.CategoryService;
import com.alam.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/admin/category")
public class CategoryController {

    @Autowired
    private CategoryService categoryService;
    @Autowired
    private UserService userService;

    @PutMapping("admin/category")
    public ResponseEntity<CategoryEntity> createCategory(@RequestBody CategoryEntity category, @RequestHeader ("Authorization") String jwtToken) throws Exception {
        UserEntity user = userService.findUserByJwtToken(jwtToken);
        CategoryEntity createCategory = categoryService.createCategory(category.getName(), user.getId());
        return new ResponseEntity<>(createCategory, HttpStatus.CREATED);
    }


    @GetMapping("category/restaurant")
    public ResponseEntity<List<CategoryEntity>> getRestaurantCategory(@RequestBody CategoryEntity category, @RequestHeader ("Authorization") String jwtToken) throws Exception {
        UserEntity user = userService.findUserByJwtToken(jwtToken);
       List<CategoryEntity>  category1 = categoryService.findCategoryByRestId(user.getId());
        return new ResponseEntity<>(category1, HttpStatus.CREATED);
    }
}
