package com.example.service;

import com.example.bo.City;
import com.example.repository.CityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CityServiceImpl implements CityService {

    @Autowired
    CityRepository cityRepository;
    @Override

    public List<City> getAllCities() {
        return cityRepository.findAll();
    }

    @Override
    public City addNewCity(City city) {
        return cityRepository.save(city);
    }
}
