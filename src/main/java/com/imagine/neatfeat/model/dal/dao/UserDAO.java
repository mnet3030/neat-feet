/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.imagine.neatfeat.model.dal.dao;

import com.imagine.neatfeat.model.dal.entity.User;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Amer Salah
 */
public class UserDAO implements DAO<User>{
    Session session;

    public UserDAO(Session session) {
        this.session = session;
    }

    @Override
    public void persist(User user) throws SQLException {
        session.persist(user);
    }

    @Override
    public void update(User user) throws SQLException {
       session.saveOrUpdate(user);
    }

    @Override
    public void delete(List<Object> primaryKey) throws SQLException {
        String userId = (String)primaryKey.get(0);
        User userToBeDeleted = session.load(User.class, userId);
        session.delete(userToBeDeleted);
    }

    @Override
    public User getByPrimaryKey(List<Object> primaryKeys) throws SQLException {
        String userId = (String)primaryKeys.get(0);
        User neededUser = session.get(User.class, userId);
        return neededUser;
    }

    @Override
    public List<User> getAll() throws SQLException {
        Criteria critera = session.createCriteria(User.class);
        List<User> allUsers = critera.list();
        return allUsers;
    }

    @Override
    public List<User> getByColumnNames(List<String> columnNames, List<Object> columnValues) throws SQLException {
        Criteria criteria = session.createCriteria(User.class);
        for(int i = 0; i<columnNames.size(); i++){
            criteria = criteria.add(Restrictions.eq(columnNames.get(i), columnValues.get(0)));
        }
        List<User> neededUsers = criteria.list();
        return neededUsers;
    }
    
}
