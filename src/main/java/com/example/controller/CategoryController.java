package com.example.controller;

import com.example.bo.Category;
import com.example.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/category")
public class CategoryController {

    @Autowired
    CategoryService categoryService;

    @GetMapping()
    public List<Category> getAllCategories(){
        return categoryService.getAllCategories();
    }
    @PostMapping()
    public Category addNewCategory(@RequestBody Category category){
        return categoryService.addNewCategory(category);
    }
}
