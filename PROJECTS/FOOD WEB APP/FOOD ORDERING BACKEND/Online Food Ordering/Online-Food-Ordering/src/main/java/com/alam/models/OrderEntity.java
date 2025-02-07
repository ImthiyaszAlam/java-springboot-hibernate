package com.alam.models;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.util.List;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "orders")
public class OrderEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @ManyToOne
    private UserEntity customer;

    @JsonIgnore
    @ManyToOne
    private RestaurantEntity restaurant;

    private Long totalAmount;
    private String orderStatus;
    private Date createdDate;

    @ManyToOne
    private AddressEntity deliveryAddress;

    @OneToMany
    private List<OrderItemEntitiy> orderItems;
    private int totalItem;
    private int totalPrice;
}
