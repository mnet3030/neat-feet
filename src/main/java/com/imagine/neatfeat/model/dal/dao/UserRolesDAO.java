package com.imagine.neatfeat.model.dal.dao;

import com.imagine.neatfeat.model.dal.entity.UserRoles;
import org.hibernate.Session;

public class UserRolesDAO extends GenericDAO<UserRoles>{
    public UserRolesDAO(Session session) {
        super(session, UserRoles.class);
    }
}
