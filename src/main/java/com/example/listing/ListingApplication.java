package com.example.listing;

import com.example.bo.City;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class ListingApplication {

	public static void main(String[] args) throws JsonProcessingException {
		SpringApplication.run(ListingApplication.class, args);
		City city = new City();
		city.setName("Pune");
		System.out.println(new ObjectMapper().writeValueAsString(city));
	}

}
