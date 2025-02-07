package com.alam.services;

import com.alam.models.CategoryEntity;

import java.util.List;

public interface CategoryService {

    public CategoryEntity createCategory(String name, Long userId) throws Exception;
    public List<CategoryEntity> findCategoryByRestId(Long restId) throws Exception;

    public CategoryEntity findCategoryById(Long catId) throws Exception;
}
