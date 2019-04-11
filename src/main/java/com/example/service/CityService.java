package com.example.service;

import com.example.bo.City;

import java.util.List;

public interface CityService {

    List<City> getAllCities();
    City addNewCity(City city);
}
