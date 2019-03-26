/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.imagine.neatfeat.model.dal.dao;

import com.imagine.neatfeat.model.dal.dao.DAO;
import com.imagine.neatfeat.model.dal.entity.Brand;
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
public class BrandDAO implements DAO<Brand> {
    Session session;

    public BrandDAO(Session session) {
        this.session = session;
    }

    @Override
    public void persist(Brand brand) throws SQLException {
        session.persist(brand);
    }

    @Override
    public void update(Brand brand) throws SQLException {
       session.update(brand);
    }

    @Override
    public void delete(List<Object> primaryKey) throws SQLException {
        String brandId = (String)primaryKey.get(0);
        Brand brandToBeDeleted = session.load(Brand.class, brandId);
        session.delete(brandToBeDeleted);
    }

    @Override
    public Brand getByPrimaryKey(List<Object> primaryKeys) throws SQLException {
        String brandId = (String)primaryKeys.get(0);
        Brand neededBrand = session.get(Brand.class, brandId);
        return neededBrand;
    }

    @Override
    public List<Brand> getAll() throws SQLException {
        Criteria critera = session.createCriteria(Brand.class);
        List<Brand> allBrands = critera.list();
        return allBrands;
    }

    @Override
    public List<Brand> getByColumnNames(List<String> columnNames, List<Object> columnValues) throws SQLException {
        Criteria criteria = session.createCriteria(Brand.class);
        for(int i = 0; i<columnNames.size(); i++){
            criteria = criteria.add(Restrictions.eq(columnNames.get(i), columnValues.get(0)));
        }
        List<Brand> neededBrands = criteria.list();
        return neededBrands;
    }
    
}
