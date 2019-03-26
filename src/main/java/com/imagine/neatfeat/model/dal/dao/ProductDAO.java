package com.imagine.neatfeat.model.dal.dao;

import com.imagine.neatfeat.model.dal.entity.Product;
import org.hibernate.Session;

public class ProductDAO extends GenericDAO<Product> {

    public ProductDAO(Session session) throws ClassNotFoundException {
        super(session);
    }
}
