package com.imagine.neatfeat.model.dal.entity;
// Generated Mar 21, 2019 12:44:38 AM by Hibernate Tools 4.3.1


import org.hibernate.annotations.GenericGenerator;

import javax.persistence.Entity;
import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

/**
 * Brand generated by hbm2java
 */
@Entity
@Table(name="brand"
        ,catalog="\"ecommerce\""
        , uniqueConstraints = @UniqueConstraint(columnNames="description")
)
public class Brand  implements com.imagine.neatfeat.model.dal.entity.Entity {


    private UUID id;
    private String description;
    private Set<Product> products = new HashSet<Product>(0);

    public Brand() {
    }


    public Brand(UUID id, String description) {
        this.id = id;
        this.description = description;
    }
    public Brand(UUID id, String description, Set<Product> products) {
        this.id = id;
        this.description = description;
        this.products = products;
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


    @Column(name="description", unique=true, nullable=false, length=80)
    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @OneToMany(fetch=FetchType.LAZY, mappedBy="brand")
    public Set<Product> getProducts() {
        return this.products;
    }

    public void setProducts(Set<Product> products) {
        this.products = products;
    }



}


