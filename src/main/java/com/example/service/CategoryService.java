package com.example.service;

import com.example.bo.Category;

import java.util.List;

public interface CategoryService {

    List<Category> getAllCategories();
    Category addNewCategory(Category category);
}
