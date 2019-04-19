package com.imagine.neatfeat.controller.services;

import com.imagine.neatfeat.model.dal.entity.Product;

import java.util.List;
import java.util.Map;

public interface GetProductsStrategy {
    public Map<Product, Integer> getProducts(Map<String, Object> criteria);
}
