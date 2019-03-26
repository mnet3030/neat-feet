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
public class BrandDao implements DAO<Brand> {

    @Override
    public void persist(Brand brand) throws SQLException {
        SessionFactory factory = new Configuration()
       .configure("/hibernate.cfg.xml")
       .buildSessionFactory();
        Session session = factory.openSession();
        
        session.beginTransaction();
        session.persist(brand);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void update(Brand brand) throws SQLException {
        SessionFactory factory = new Configuration()
       .configure()
       .buildSessionFactory();
        Session session = factory.openSession();
        
       session.beginTransaction();
       
       
       
       session.saveOrUpdate(brand);
       
       session.getTransaction().commit();
       session.close();
       
    }

    @Override
    public void delete(List<Object> primaryKey) throws SQLException {

        SessionFactory factory = new Configuration()
       .configure()
       .buildSessionFactory();
        Session session = factory.openSession();
        
        String discribtion = (String)primaryKey.get(0);
        
        session.beginTransaction();
        Brand brand = (Brand) session.createCriteria(Brand.class)
                    .add(Restrictions.eq("description", discribtion)).uniqueResult();
        
        session.delete(brand);
        session.getTransaction().commit();
        session.close();
        
    }

    @Override
    public Brand getByPrimaryKey(List<Object> primaryKeys) throws SQLException {

        SessionFactory factory = new Configuration()
       .configure()
       .buildSessionFactory();
        Session session = factory.openSession();
        

       String discribtion = (String)primaryKeys.get(0); 
       
       session.beginTransaction();
       
      Brand brand = (Brand) session.createCriteria(Brand.class)
                    .add(Restrictions.eq("description", discribtion)).uniqueResult();
      
      session.getTransaction().commit();
      session.close();
        
      return brand;
    }

    @Override
    public List<Brand> getAll() throws SQLException {

        SessionFactory factory = new Configuration()
       .configure()
       .buildSessionFactory();
        Session session = factory.openSession();
        
        session.beginTransaction();
        
        List<Brand> brands = new ArrayList<>();
        
        Criteria criteria = session.createCriteria(Brand.class);
        
        brands = criteria.list();
        session.getTransaction().commit();
        session.close();
        return brands;
    }

    @Override
    public List<Brand> getByColumnNames(List<String> columnNames, List<Object> columnValues) throws SQLException {

        SessionFactory factory = new Configuration()
       .configure()
       .buildSessionFactory();
        Session session = factory.openSession();
        
        session.beginTransaction();
        List<Brand> brands = new ArrayList<>();
        
        Criteria criteria = session.createCriteria(Brand.class);
        
        for(int i =0 ;i<columnNames.size() ; i++)
        {
            criteria = criteria.add(Restrictions.eq(columnNames.get(i), columnValues.get(i)));
        }
        
        brands = criteria.list();
        
        session.getTransaction().commit();
        session.close();
        
        return brands;
    }
    
}
