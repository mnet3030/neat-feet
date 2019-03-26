package com.imagine.neatfeat.model.dal.entity;
// Generated Mar 21, 2019 12:44:38 AM by Hibernate Tools 4.3.1


import org.hibernate.annotations.GenericGenerator;

import javax.persistence.Entity;
import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

/**
 * Category generated by hbm2java
 */
@Entity
@Table(name="category"
    ,catalog="\"e-commerce\""
    , uniqueConstraints = @UniqueConstraint(columnNames="description") 
)
public class Category  implements com.imagine.neatfeat.model.dal.entity.Entity {


     private byte[] id;
     private Category category;
     private String description;
     private Set<Category> categories = new HashSet<Category>(0);
     private Set<Product> products = new HashSet<Product>(0);

    public Category() {
    }

	
    public Category(byte[] id, String description) {
        this.id = id;
        this.description = description;
    }
    public Category(byte[] id, Category category, String description, Set<Category> categories, Set<Product> products) {
       this.id = id;
       this.category = category;
       this.description = description;
       this.categories = categories;
       this.products = products;
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
    @JoinColumn(name="category_id")
    public Category getCategory() {
        return this.category;
    }
    
    public void setCategory(Category category) {
        this.category = category;
    }

    
    @Column(name="description", unique=true, nullable=false, length=80)
    public String getDescription() {
        return this.description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="category")
    public Set<Category> getCategories() {
        return this.categories;
    }
    
    public void setCategories(Set<Category> categories) {
        this.categories = categories;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="category")
    public Set<Product> getProducts() {
        return this.products;
    }
    
    public void setProducts(Set<Product> products) {
        this.products = products;
    }




}


