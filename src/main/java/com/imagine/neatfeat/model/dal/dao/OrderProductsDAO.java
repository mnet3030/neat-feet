package com.imagine.neatfeat.model.dal.dao;

import com.imagine.neatfeat.model.dal.entity.OrderProducts;
import org.hibernate.Session;

public class OrderProductsDAO extends GenericDAO<OrderProducts> {
    public OrderProductsDAO(Session session) throws ClassNotFoundException {
        super(session);
    }
}
