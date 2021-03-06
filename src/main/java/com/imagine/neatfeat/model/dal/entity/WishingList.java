package com.imagine.neatfeat.model.dal.entity;
// Generated Mar 21, 2019 12:44:38 AM by Hibernate Tools 4.3.1


import org.hibernate.annotations.GenericGenerator;

import javax.persistence.Entity;
import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

/**
 * WishingList generated by hbm2java
 */
@Entity
@Table(name="wishing_list"
        ,catalog="\"ecommerce\""
        , uniqueConstraints = @UniqueConstraint(columnNames="user_id")
)
public class WishingList  implements com.imagine.neatfeat.model.dal.entity.Entity {


    private UUID id;
    private User user;
    private Set<WishingListProducts> wishingListProductses = new HashSet<WishingListProducts>(0);



    private UUID uuid;

    public WishingList() {
    }


    public WishingList(UUID id, User user) {
        this.id = id;
        this.user = user;
    }
    public WishingList(UUID id, User user, Set<WishingListProducts> wishingListProductses) {
        this.id = id;
        this.user = user;
        this.wishingListProductses = wishingListProductses;
    }

    @Id
    @GeneratedValue(generator = "uuid2")
    @GenericGenerator(name = "uuid2", strategy = "uuid2")
    @Column(columnDefinition = "BINARY(16)", name="id", unique=true, nullable=false)
    public UUID getId() {
        return this.id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="user_id", unique=true, nullable=false)
    public User getUser() {
        return this.user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @OneToMany(fetch=FetchType.LAZY, mappedBy="wishingList")
    public Set<WishingListProducts> getWishingListProductses() {
        return this.wishingListProductses;
    }

    public void setWishingListProductses(Set<WishingListProducts> wishingListProductses) {
        this.wishingListProductses = wishingListProductses;
    }
}


