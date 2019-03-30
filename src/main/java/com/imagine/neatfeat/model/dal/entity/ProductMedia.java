package com.imagine.neatfeat.model.dal.entity;
// Generated Mar 21, 2019 12:44:38 AM by Hibernate Tools 4.3.1


import com.imagine.neatfeat.model.dal.utility.UuidUtility;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.Entity;
import javax.persistence.*;
import java.util.UUID;

/**
 * ProductMedia generated by hbm2java
 */
@Entity
@Table(name="product_media"
        ,catalog="\"e-commerce\""
)
public class ProductMedia  implements com.imagine.neatfeat.model.dal.entity.Entity {


    private byte[] id;
    private Product product;
    private String url;

    private UUID uuid;

    public ProductMedia() {
    }

    public ProductMedia(byte[] id, Product product, String url) {
        this.id = id;
        this.product = product;
        this.url = url;
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
    @JoinColumn(name="product_id", nullable=false)
    public Product getProduct() {
        return this.product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }


    @Column(name="url", nullable=false)
    public String getUrl() {
        return this.url;
    }

    public void setUrl(String url) {
        this.url = url;
    }



    @Transient
    public UUID getUuid() {
        return uuid;
    }

    public void setUuid(UUID uuid) {
        this.uuid = uuid;
    }

    @PostLoad
    public void setUUIDFromId(){
        uuid = UuidUtility.getUUIDFromBytes(getId());
    }

}


