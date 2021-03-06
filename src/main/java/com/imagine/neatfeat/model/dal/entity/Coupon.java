package com.imagine.neatfeat.model.dal.entity;
// Generated Mar 21, 2019 12:44:38 AM by Hibernate Tools 4.3.1


import org.hibernate.annotations.GenericGenerator;

import javax.persistence.Entity;
import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

/**
 * Coupon generated by hbm2java
 */
@Entity
@Table(name="coupon"
        ,catalog="\"ecommerce\""
        , uniqueConstraints = @UniqueConstraint(columnNames="code")
)
public class Coupon  implements com.imagine.neatfeat.model.dal.entity.Entity {


    private UUID id;
    private String code;
    private short discount;
    private Date startDate;
    private Date endDate;
    private Set<ShoppingCartProducts> shoppingCartProductses = new HashSet<ShoppingCartProducts>(0);
    private Set<OrderProducts> orderProductses = new HashSet<OrderProducts>(0);

    private UUID uuid;

    public Coupon() {
    }


    public Coupon(UUID id, String code, short discount, Date startDate, Date endDate) {
        this.id = id;
        this.code = code;
        this.discount = discount;
        this.startDate = startDate;
        this.endDate = endDate;
    }
    public Coupon(UUID id, String code, short discount, Date startDate, Date endDate, Set<ShoppingCartProducts> shoppingCartProductses, Set<OrderProducts> orderProductses) {
        this.id = id;
        this.code = code;
        this.discount = discount;
        this.startDate = startDate;
        this.endDate = endDate;
        this.shoppingCartProductses = shoppingCartProductses;
        this.orderProductses = orderProductses;
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


    @Column(name="code", unique=true, nullable=false, length=45)
    public String getCode() {
        return this.code;
    }

    public void setCode(String code) {
        this.code = code;
    }


    @Column(name="discount", nullable=false)
    public short getDiscount() {
        return this.discount;
    }

    public void setDiscount(short discount) {
        this.discount = discount;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="start_date", nullable=false, length=26)
    public Date getStartDate() {
        return this.startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="end_date", nullable=false, length=26)
    public Date getEndDate() {
        return this.endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    @OneToMany(fetch=FetchType.LAZY, mappedBy="coupon")
    public Set<ShoppingCartProducts> getShoppingCartProductses() {
        return this.shoppingCartProductses;
    }

    public void setShoppingCartProductses(Set<ShoppingCartProducts> shoppingCartProductses) {
        this.shoppingCartProductses = shoppingCartProductses;
    }

    @OneToMany(fetch=FetchType.LAZY, mappedBy="coupon")
    public Set<OrderProducts> getOrderProductses() {
        return this.orderProductses;
    }

    public void setOrderProductses(Set<OrderProducts> orderProductses) {
        this.orderProductses = orderProductses;
    }
}


