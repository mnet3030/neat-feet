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
public class CountryDao implements DAO<Country> {

    @Override
    public void persist(Country country) throws SQLException {
        SessionFactory factory = new Configuration()
       .configure("/hibernate.cfg.xml")
       .buildSessionFactory();
        Session session = factory.openSession();
        
        session.beginTransaction();
        session.persist(country);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void update(Country country) throws SQLException {
        
        
        SessionFactory factory = new Configuration()
       .configure()
       .buildSessionFactory();
        Session session = factory.openSession();
        
       session.beginTransaction();
       String countryName = country.getName();
       Country newCountry = new Country();
       
       Criteria criteria = session.createCriteria(Country.class);
       criteria.add(Restrictions.eq("name", countryName));
       
       newCountry = (Country) criteria.uniqueResult();
       newCountry.setUsers(country.getUsers());
       
       
       session.saveOrUpdate(newCountry);
       session.getTransaction().commit();
       session.close();
       
    }

    @Override
    public void delete(List<Object> primaryKey) throws SQLException {
        
        SessionFactory factory = new Configuration()
       .configure()
       .buildSessionFactory();
        Session session = factory.openSession();
        
        String countryName = (String)primaryKey.get(0);
        
        session.beginTransaction();
        Country country = (Country) session.createCriteria(Country.class)
                    .add(Restrictions.eq("name", countryName)).uniqueResult();
        
        session.delete(country);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public Country getByPrimaryKey(List<Object> primaryKeys) throws SQLException {
        
        SessionFactory factory = new Configuration()
       .configure()
       .buildSessionFactory();
        Session session = factory.openSession();
        

       String countryName = (String)primaryKeys.get(0); 
       
       session.beginTransaction();
       
      Country country = (Country) session.createCriteria(Country.class)
                    .add(Restrictions.eq("name", countryName)).uniqueResult();
      
      session.getTransaction().commit();
      session.close();
        
      return country;
    }

    @Override
    public List<Country> getAll() throws SQLException {
        
        SessionFactory factory = new Configuration()
       .configure()
       .buildSessionFactory();
        Session session = factory.openSession();
        
        session.beginTransaction();
        
        List<Country> countrys = new ArrayList<>();
        
        Criteria criteria = session.createCriteria(Country.class);
        
        countrys = criteria.list();
        session.getTransaction().commit();
        session.close();
        return countrys;
    }

    @Override
    public List<Country> getByColumnNames(List<String> columnNames, List<Object> columnValues) throws SQLException {
        
        SessionFactory factory = new Configuration()
       .configure()
       .buildSessionFactory();
        Session session = factory.openSession();
        
        session.beginTransaction();
        List<Country> countrys = new ArrayList<>();
        
        Criteria criteria = session.createCriteria(Country.class);
        
        for(int i =0 ;i<columnNames.size() ; i++)
        {
            criteria = criteria.add(Restrictions.eq(columnNames.get(i), columnValues.get(i)));
        }
        
        countrys = criteria.list();
        
        session.getTransaction().commit();
        session.close();
        
        return countrys;
    }
    
    
}
