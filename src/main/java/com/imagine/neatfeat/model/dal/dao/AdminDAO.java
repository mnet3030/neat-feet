/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.imagine.neatfeat.model.dal.dao;

import com.imagine.neatfeat.model.dal.entity.Admin;
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
public class AdminDAO implements DAO<Admin> {
    Session session;

    public AdminDAO(Session session) {
        this.session = session;
    }

    @Override
    public void persist(Admin admin) throws SQLException {
        session.persist(admin);
    }

    @Override
    public void update(Admin admin) throws SQLException {
       session.update(admin);
    }

    @Override
    public void delete(List<Object> primaryKey) throws SQLException {
        String adminId = (String)primaryKey.get(0);
        Admin adminToBeDeleted = session.load(Admin.class, adminId);
        session.delete(adminToBeDeleted);
    }

    @Override
    public Admin getByPrimaryKey(List<Object> primaryKeys) throws SQLException {
        String adminId = (String)primaryKeys.get(0);
        Admin neededAdmin = session.get(Admin.class, adminId);
        return neededAdmin;
    }

    @Override
    public List<Admin> getAll() throws SQLException {
        Criteria critera = session.createCriteria(Admin.class);
        List<Admin> allAdmins = critera.list();
        return allAdmins;
    }

    @Override
    public List<Admin> getByColumnNames(List<String> columnNames, List<Object> columnValues) throws SQLException {
        Criteria criteria = session.createCriteria(Admin.class);
        for(int i = 0; i<columnNames.size(); i++){
            criteria = criteria.add(Restrictions.eq(columnNames.get(i), columnValues.get(0)));
        }
        List<Admin> neededAdmins = criteria.list();
        return neededAdmins;
    }
    
}
