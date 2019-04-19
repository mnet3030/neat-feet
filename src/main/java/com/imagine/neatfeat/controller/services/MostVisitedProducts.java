package com.imagine.neatfeat.controller.services;

import com.imagine.neatfeat.model.dal.dao.UserVisitProductsDAO;
import com.imagine.neatfeat.model.dal.entity.Product;
import com.imagine.neatfeat.model.dal.entity.UserVisitProducts;
import org.hibernate.Session;

import java.util.List;
import java.util.Map;

public class MostVisitedProducts implements GetProductsStrategy {
    Session session;
    public MostVisitedProducts(Session session) {
        this.session = session;
    }

    @Override
    public Map<Product, Integer> getProducts(Map<String, Object> criteria) {
        UserVisitProductsDAO userVisitProductsDAO = new UserVisitProductsDAO(session);
        return userVisitProductsDAO.getMostVisitedProducts((Integer)criteria.get("NoOfRows"));
    }
}
