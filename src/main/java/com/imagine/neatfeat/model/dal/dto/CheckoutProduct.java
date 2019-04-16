package com.imagine.neatfeat.model.dal.dto;

import com.imagine.neatfeat.model.dal.entity.Product;

public class CheckoutProduct {
    private Product product;
    boolean isDifferent;
    int neededQuantity;

    public CheckoutProduct() {
    }

    public CheckoutProduct(Product product, boolean isDifferent, int neededQuantity) {
        this.product = product;
        this.isDifferent = isDifferent;
        this.neededQuantity = neededQuantity;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public boolean isDifferent() {
        return isDifferent;
    }

    public void setDifferent(boolean different) {
        isDifferent = different;
    }

    public int getNeededQuantity() {
        return neededQuantity;
    }

    public void setNeededQuantity(int neededQuantity) {
        this.neededQuantity = neededQuantity;
    }
}
