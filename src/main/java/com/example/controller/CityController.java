package com.example.controller;

import com.example.bo.City;
import com.example.service.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/city")
public class CityController {

    @Autowired
    CityService cityService;

    @GetMapping()
    public List<City> getAllCities(){
        return cityService.getAllCities();
    }
    @PostMapping()
    public City AddNewCity(@RequestBody City city){
        return cityService.addNewCity(city);
    }
}
