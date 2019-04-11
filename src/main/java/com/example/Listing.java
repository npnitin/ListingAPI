package com.example;

import com.example.bo.Category;
import com.example.bo.City;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.util.Arrays;

@SpringBootApplication
public class Listing {

    public static void main(String[] args) throws JsonProcessingException {
        SpringApplication.run(Listing.class, args);

        Category c = new Category();
        c.setImageUrl("");
        c.setName("Transportation");
        c.setSubCategories(Arrays.asList("Car,Bike,Bus,Mini Bus,Tempo Traveller,Tempo,Truck"));

        System.out.println(new ObjectMapper().writeValueAsString(c));
    }
}
