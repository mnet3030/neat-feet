package com.imagine.neatfeat.model.dal.servletDAO;

import com.imagine.neatfeat.model.dal.entity.Brand;
import com.imagine.neatfeat.model.dal.entity.Category;

import java.util.UUID;

public class ProductBean {


    private String brand;
    private String category;
    private String description;

    public int getBuyingCount() {
        return buyingCount;
    }

    public void setBuyingCount(int buyingCount) {
        this.buyingCount = buyingCount;
    }

    private String detailedDescription;
    private int price;
    private int quantity;
    private int buyingCount;
    private String short_lined_description;

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDetailedDescription() {
        return detailedDescription;
    }

    public void setDetailedDescription(String detailedDescription) {
        this.detailedDescription = detailedDescription;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getShort_lined_description() {
        return short_lined_description;
    }

    public void setShort_lined_description(String short_lined_description) {
        this.short_lined_description = short_lined_description;
    }
}
