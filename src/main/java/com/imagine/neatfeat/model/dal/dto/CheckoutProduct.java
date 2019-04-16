package com.imagine.neatfeat.model.dal.dto;

import com.imagine.neatfeat.model.dal.entity.Product;

public class CheckoutProduct {
    private Product product;
    boolean different;
    int neededQuantity;

    public boolean getDifferent() {
        return different;
    }

    public void setDifferent(boolean different) {
        different = different;
    }

    public CheckoutProduct() {
    }

    public CheckoutProduct(Product product, boolean Different, int neededQuantity) {
        this.product = product;
        this.different = Different;
        this.neededQuantity = neededQuantity;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }


    public int getNeededQuantity() {
        return neededQuantity;
    }

    public void setNeededQuantity(int neededQuantity) {
        this.neededQuantity = neededQuantity;
    }
}
