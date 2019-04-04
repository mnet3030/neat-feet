package com.imagine.neatfeat.model.dal.dao;

import com.imagine.neatfeat.model.dal.entity.DeliveryStatus;
import org.hibernate.Session;

public class DeliveryStatusDAO extends GenericDAO<DeliveryStatus> {
    public DeliveryStatusDAO(Session session) {
        super(session, DeliveryStatus.class);
    }
}
