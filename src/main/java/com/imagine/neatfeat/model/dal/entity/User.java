package com.imagine.neatfeat.model.dal.entity;
// Generated Mar 21, 2019 12:44:38 AM by Hibernate Tools 4.3.1


import org.hibernate.annotations.GenericGenerator;

import javax.persistence.Entity;
import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * User generated by hbm2java
 */
@Entity
@Table(name="user"
    ,catalog="\"e-commerce\""
    , uniqueConstraints = @UniqueConstraint(columnNames="email") 
)
public class User  implements com.imagine.neatfeat.model.dal.entity.Entity {


     private byte[] id;
     private Country country;
     private String email;
     private String password;
     private String name;
     private Date birthdate;
     private boolean gender;
     private int creditLimit;
     private String job;
     private String address;
     private String phone;
     private String photoUrl;
     private Set<ShoppingCart> shoppingCarts = new HashSet<ShoppingCart>(0);
     private Set<UserVisitProducts> userVisitProductses = new HashSet<UserVisitProducts>(0);
     private Set<UserOrders> userOrderses = new HashSet<UserOrders>(0);
     private Set<WishingList> wishingLists = new HashSet<WishingList>(0);

    public User() {
    }

	
    public User(byte[] id, String email, String password, String name, Date birthdate, boolean gender, int creditLimit) {
        this.id = id;
        this.email = email;
        this.password = password;
        this.name = name;
        this.birthdate = birthdate;
        this.gender = gender;
        this.creditLimit = creditLimit;
    }
    public User(byte[] id, Country country, String email, String password, String name, Date birthdate, boolean gender, int creditLimit, String job, String address, String phone, String photoUrl, Set<ShoppingCart> shoppingCarts, Set<UserVisitProducts> userVisitProductses, Set<UserOrders> userOrderses, Set<WishingList> wishingLists) {
       this.id = id;
       this.country = country;
       this.email = email;
       this.password = password;
       this.name = name;
       this.birthdate = birthdate;
       this.gender = gender;
       this.creditLimit = creditLimit;
       this.job = job;
       this.address = address;
       this.phone = phone;
       this.photoUrl = photoUrl;
       this.shoppingCarts = shoppingCarts;
       this.userVisitProductses = userVisitProductses;
       this.userOrderses = userOrderses;
       this.wishingLists = wishingLists;
    }

    @Id
    @GeneratedValue(generator = "uuid2")
    @GenericGenerator(name = "uuid2", strategy = "uuid2")
    @Column(columnDefinition = "BINARY(16)", name="id", unique=true, nullable=false)
    public byte[] getId() {
        return this.id;
    }
    
    public void setId(byte[] id) {
        this.id = id;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="country_id")
    public Country getCountry() {
        return this.country;
    }
    
    public void setCountry(Country country) {
        this.country = country;
    }

    
    @Column(name="email", unique=true, nullable=false, length=40)
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }

    
    @Column(name="password", nullable=false, length=45)
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }

    
    @Column(name="name", nullable=false, length=45)
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    @Temporal(TemporalType.DATE)
    @Column(name="birthdate", nullable=false, length=10)
    public Date getBirthdate() {
        return this.birthdate;
    }
    
    public void setBirthdate(Date birthdate) {
        this.birthdate = birthdate;
    }

    
    @Column(name="gender", nullable=false)
    public boolean isGender() {
        return this.gender;
    }
    
    public void setGender(boolean gender) {
        this.gender = gender;
    }

    
    @Column(name="credit_limit", nullable=false)
    public int getCreditLimit() {
        return this.creditLimit;
    }
    
    public void setCreditLimit(int creditLimit) {
        this.creditLimit = creditLimit;
    }

    
    @Column(name="job", length=45)
    public String getJob() {
        return this.job;
    }
    
    public void setJob(String job) {
        this.job = job;
    }

    
    @Column(name="address", length=80)
    public String getAddress() {
        return this.address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }

    
    @Column(name="phone", length=45)
    public String getPhone() {
        return this.phone;
    }
    
    public void setPhone(String phone) {
        this.phone = phone;
    }

    
    @Column(name="photo_url")
    public String getPhotoUrl() {
        return this.photoUrl;
    }
    
    public void setPhotoUrl(String photoUrl) {
        this.photoUrl = photoUrl;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="user")
    public Set<ShoppingCart> getShoppingCarts() {
        return this.shoppingCarts;
    }
    
    public void setShoppingCarts(Set<ShoppingCart> shoppingCarts) {
        this.shoppingCarts = shoppingCarts;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="user")
    public Set<UserVisitProducts> getUserVisitProductses() {
        return this.userVisitProductses;
    }
    
    public void setUserVisitProductses(Set<UserVisitProducts> userVisitProductses) {
        this.userVisitProductses = userVisitProductses;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="user")
    public Set<UserOrders> getUserOrderses() {
        return this.userOrderses;
    }
    
    public void setUserOrderses(Set<UserOrders> userOrderses) {
        this.userOrderses = userOrderses;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="user")
    public Set<WishingList> getWishingLists() {
        return this.wishingLists;
    }
    
    public void setWishingLists(Set<WishingList> wishingLists) {
        this.wishingLists = wishingLists;
    }




}


