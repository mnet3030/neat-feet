package com.imagine.neatfeat.model.dal.dao;

import com.imagine.neatfeat.model.dal.entity.ShoppingCart;
import org.hibernate.Session;

public class ShoppingCartDAO extends GenericDAO<ShoppingCart> {

    public ShoppingCartDAO(Session session) throws ClassNotFoundException {
        super(session);
    }
}
