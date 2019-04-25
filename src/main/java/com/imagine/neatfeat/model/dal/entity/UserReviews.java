package com.imagine.neatfeat.model.dal.entity;
// Generated Mar 21, 2019 12:44:38 AM by Hibernate Tools 4.3.1


import org.hibernate.annotations.GenericGenerator;

import javax.persistence.Entity;
import javax.persistence.*;
import java.util.UUID;

/**
 * UserReviews generated by hbm2java
 */
@Entity
@Table(name="user_reviews"
        ,catalog="\"ecommerce\""
        , uniqueConstraints = @UniqueConstraint(columnNames={"user_id", "product_id"})
)
public class UserReviews  implements com.imagine.neatfeat.model.dal.entity.Entity {


    private UUID id;
    private OrderProducts orderProducts;
    private UserOrders userOrders;
    private byte rating;
    private String reviewDetails;

    private UUID uuid;

    public UserReviews() {
    }

    public UserReviews(UUID id, OrderProducts orderProducts, UserOrders userOrders, byte rating, String reviewDetails) {
        this.id = id;
        this.orderProducts = orderProducts;
        this.userOrders = userOrders;
        this.rating = rating;
        this.reviewDetails = reviewDetails;
    }

    @Id
    @GeneratedValue(generator = "uuid2")
    @GenericGenerator(name = "uuid2", strategy = "uuid2")
    @Column(columnDefinition = "uuid", name="id", unique=true, nullable=false)
    public UUID getId() {
        return this.id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="product_id", nullable=false)
    public OrderProducts getOrderProducts() {
        return this.orderProducts;
    }

    public void setOrderProducts(OrderProducts orderProducts) {
        this.orderProducts = orderProducts;
    }

    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="user_id", nullable=false)
    public UserOrders getUserOrders() {
        return this.userOrders;
    }

    public void setUserOrders(UserOrders userOrders) {
        this.userOrders = userOrders;
    }


    @Column(name="rating", nullable=false)
    public byte getRating() {
        return this.rating;
    }

    public void setRating(byte rating) {
        this.rating = rating;
    }


    @Column(name="review_details", nullable=false, length=400)
    public String getReviewDetails() {
        return this.reviewDetails;
    }

    public void setReviewDetails(String reviewDetails) {
        this.reviewDetails = reviewDetails;
    }

}


