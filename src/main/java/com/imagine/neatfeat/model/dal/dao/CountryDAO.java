/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.imagine.neatfeat.model.dal.dao;

import com.imagine.neatfeat.model.dal.dao.DAO;
import com.imagine.neatfeat.model.dal.entity.Country;
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
 * @author Aly
 */
public class CountryDAO implements DAO<Country> {
    Session session;

    public CountryDAO(Session session) {
        this.session = session;
    }

    @Override
    public void persist(Country country) throws SQLException {
        session.persist(country);
    }

    @Override
    public void update(Country country) throws SQLException {
       session.update(country);
    }

    @Override
    public void delete(List<Object> primaryKey) throws SQLException {
        String countryId = (String)primaryKey.get(0);
        Country countryToBeDeleted = session.load(Country.class, countryId);
        session.delete(countryToBeDeleted);
    }

    @Override
    public Country getByPrimaryKey(List<Object> primaryKeys) throws SQLException {
        String countryId = (String)primaryKeys.get(0);
        Country neededCountry = session.get(Country.class, countryId);
        return neededCountry;
    }

    @Override
    public List<Country> getAll() throws SQLException {
        Criteria critera = session.createCriteria(Country.class);
        List<Country> allCountries = critera.list();
        return allCountries;
    }

    @Override
    public List<Country> getByColumnNames(List<String> columnNames, List<Object> columnValues) throws SQLException {
        Criteria criteria = session.createCriteria(Country.class);
        for(int i = 0; i<columnNames.size(); i++){
            criteria = criteria.add(Restrictions.eq(columnNames.get(i), columnValues.get(0)));
        }
        List<Country> neededCountries = criteria.list();
        return neededCountries;
    }
    
    
}
