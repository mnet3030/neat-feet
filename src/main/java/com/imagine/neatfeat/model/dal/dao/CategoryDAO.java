/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.imagine.neatfeat.model.dal.dao;

import com.imagine.neatfeat.model.dal.dao.DAO;
import com.imagine.neatfeat.model.dal.entity.Category;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.imagine.neatfeat.model.dal.entity.Country;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Amer Salah
 */
public class CategoryDAO implements DAO<Category> {
    Session session;

    public CategoryDAO(Session session) {
        this.session = session;
    }

    @Override
    public void persist(Category category) throws SQLException {
        session.persist(category);
    }

    @Override
    public void update(Category category) throws SQLException {
       session.saveOrUpdate(category);
    }

    @Override
    public void delete(List<Object> primaryKey) throws SQLException {
        String categoryId = (String)primaryKey.get(0);
        Category categoryToBeDeleted = session.load(Category.class, categoryId);
        session.delete(categoryToBeDeleted);
    }

    @Override
    public Category getByPrimaryKey(List<Object> primaryKeys) throws SQLException {
        String categoryId = (String)primaryKeys.get(0);
        Category neededCategory = session.get(Category.class, categoryId);
        return neededCategory;
    }

    @Override
    public List<Category> getAll() throws SQLException {
        Criteria critera = session.createCriteria(Category.class);
        List<Category> allCategories = critera.list();
        return allCategories;
    }

    @Override
    public List<Category> getByColumnNames(List<String> columnNames, List<Object> columnValues) throws SQLException {
        Criteria criteria = session.createCriteria(Category.class);
        for(int i = 0; i<columnNames.size(); i++){
            criteria = criteria.add(Restrictions.eq(columnNames.get(i), columnValues.get(0)));
        }
        List<Category> neededCategories = criteria.list();
        return neededCategories;
    }
    
}
