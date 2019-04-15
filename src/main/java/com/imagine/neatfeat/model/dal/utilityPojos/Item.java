package com.imagine.neatfeat.model.dal.utilityPojos;

import com.imagine.neatfeat.model.dal.entity.Product;

import java.util.UUID;

public class Item {

    private UUID pId;
    private int quantity;

    public Item(UUID product, int quantity) {
        this.pId = product;
        this.quantity = quantity;
    }

    public UUID getProductId() {
        return pId;
    }

    public void setProduct(UUID product) {
        this.pId = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
