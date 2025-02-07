package com.alam.repositories;

import com.alam.models.CategoryEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CategoryRepo extends JpaRepository<CategoryEntity,Long> {
    public List<CategoryEntity> findByRestId(Long restId);
}
