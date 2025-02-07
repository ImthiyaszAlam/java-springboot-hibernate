package com.alam.services;

import com.alam.dto.RestaurantDTO;
import com.alam.models.AddressEntity;
import com.alam.models.RestaurantEntity;
import com.alam.models.UserEntity;
import com.alam.repositories.AddressRepo;
import com.alam.repositories.RestaurantRepo;
import com.alam.repositories.UserRepo;
import com.alam.requests.CreateRestaurantRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.naming.NamingEnumeration;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

@Service
public class RestaurantServiceImplement implements RestaurantService{

    @Autowired
    private RestaurantRepo restaurantRepo;
    @Autowired
    private AddressRepo addressRepo;
    @Autowired
    UserRepo userRepo;




    @Override
    public RestaurantEntity createRestaurant(CreateRestaurantRequest restaurantRequest, UserEntity user) {
        AddressEntity address = addressRepo.save(restaurantRequest.getAddress());
        RestaurantEntity restaurant =new RestaurantEntity();
        restaurant.setAddress(address);
        restaurant.setContactInfo(restaurantRequest.getContactInfo());
        restaurant.setCuisineType(restaurantRequest.getCuisineType());
        restaurant.setDescription(restaurantRequest.getDescription());
        restaurant.setImages(restaurantRequest.getImages());
        restaurant.setName(restaurantRequest.getName());
        restaurant.setOpeningHours(restaurantRequest.getOpeningHours());
        restaurant.setRegistrationDate(LocalDateTime.now());
        restaurant.setOwner(user);
        return restaurantRepo.save(restaurant);
    }

    @Override
    public RestaurantEntity updateRestaurant(Long restaurantId, CreateRestaurantRequest updateRestaurant) throws Exception {
        RestaurantEntity restaurant = findRestById(restaurantId);
        if (restaurant.getCuisineType()!=null){
            restaurant.setCuisineType(updateRestaurant.getCuisineType());
        }
        if (restaurant.getName()!=null){
            restaurant.setName(updateRestaurant.getName());
        }
        if (restaurant.getDescription()!=null){
            restaurant.setDescription(updateRestaurant.getDescription());
        }
        return restaurantRepo.save(restaurant);
    }

    @Override
    public void deleteRestaurant(Long restaurantId) throws Exception {
        RestaurantEntity restaurant = findRestById(restaurantId);
        restaurantRepo.delete(restaurant);
    }

    @Override
    public List<RestaurantEntity> getAllRestaurant() {
        return restaurantRepo.findAll();
    }

    @Override
    public List<RestaurantEntity> searchRestaurant(String keyword) {
        return restaurantRepo.searchResByQuery(keyword);
    }

    @Override
    public RestaurantEntity findRestById(Long id) throws Exception {
        Optional<RestaurantEntity> option = restaurantRepo.findById(id);
        if (option.isEmpty()){
            throw  new Exception("restaurant not found with id "+id);
        }
        return option.get();
    }

    @Override
    public RestaurantEntity getRestByUserId(Long userId) throws Exception {
        RestaurantEntity restaurant = restaurantRepo.findByOwnerId(userId);
        if (restaurant == null){
            throw new Exception("restaurant not found with owner id "+userId);
        }
        return restaurant;
    }

    @Override
    public RestaurantDTO addToFavourites(Long restId, UserEntity userId) throws Exception {
        RestaurantEntity restaurant = findRestById(restId);
        RestaurantDTO restaurantDTO = new RestaurantDTO();
        restaurantDTO.setDescription(restaurant.getDescription());
        restaurantDTO.setImages(restaurant.getImages());
        restaurantDTO.setTitle(restaurant.getName());
        restaurantDTO.setId(restaurant.getId());

        if (userId.getFavourites().contains(restaurantDTO)){
            userId.getFavourites().remove(restaurantDTO);
        }else {
            userId.getFavourites().add(restaurantDTO);
            userRepo.save(userId);
        }
        return restaurantDTO;
    }

    @Override
    public RestaurantEntity updateRestStatus(Long id) throws Exception {
        RestaurantEntity restaurant = findRestById(id);
        restaurant.setOpen(!restaurant.isOpen());
        return restaurantRepo.save(restaurant);
    }
}
