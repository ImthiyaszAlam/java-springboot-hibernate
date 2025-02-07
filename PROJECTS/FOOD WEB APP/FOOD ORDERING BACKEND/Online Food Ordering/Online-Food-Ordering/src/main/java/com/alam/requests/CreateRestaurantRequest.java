package com.alam.requests;

import com.alam.models.AddressEntity;
import com.alam.models.ContactInfoEntity;
import lombok.Data;

import java.util.List;

@Data
public class CreateRestaurantRequest {
    private Long id;
    private String name;
    private String description;
    private String cuisineType;
    private AddressEntity address;
    private ContactInfoEntity contactInfo;
    private String openingHours;
    private List<String>images;

}
