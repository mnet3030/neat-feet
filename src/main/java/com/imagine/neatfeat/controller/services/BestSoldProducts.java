package com.imagine.neatfeat.controller.services;

import com.imagine.neatfeat.model.dal.dao.OrderProductsDAO;
import com.imagine.neatfeat.model.dal.entity.Product;
import org.hibernate.Session;

import java.util.Map;

public class BestSoldProducts implements GetProductsStrategy{
    Session session;
    public BestSoldProducts(Session session) {
        this.session = session;
    }

    @Override
    public Map<Product, Integer> getProducts(Map<String, Object> criteria) {
        OrderProductsDAO orderProductsDAO = new OrderProductsDAO(session);
        return orderProductsDAO.getBestSoldProducts((Integer)criteria.get("NoOfRows"));
    }
}
