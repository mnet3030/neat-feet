package com.imagine.neatfeat.model.dal.dao;

import com.imagine.neatfeat.model.dal.entity.UserOrders;
import org.hibernate.Session;

public class UserOrdersDAO extends GenericDAO<UserOrders> {

    public UserOrdersDAO(Session session) {
        super(session, UserOrders.class);
    }
}
