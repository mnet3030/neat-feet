/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.imagine.neatfeat.model.dal.dao;

import com.imagine.neatfeat.model.dal.entity.ShoppingCartProducts;
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
public class ShoppingCartProductsDao implements DAO<ShoppingCartProducts> {

    @Override
    public void persist(ShoppingCartProducts cartProducts) throws SQLException {

        SessionFactory factory = new Configuration()
                .configure("/hibernate.cfg.xml")
                .buildSessionFactory();
        Session session = factory.openSession();

        session.beginTransaction();
        session.persist(cartProducts);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void update(ShoppingCartProducts cartProducts) throws SQLException {

        SessionFactory factory = new Configuration()
                .configure()
                .buildSessionFactory();
        Session session = factory.openSession();

        session.beginTransaction();

        session.saveOrUpdate(cartProducts);
        session.getTransaction().commit();
        session.close();

    }

    @Override
    public void delete(List<Object> primaryKey) throws SQLException {

        SessionFactory factory = new Configuration()
       .configure()
       .buildSessionFactory();
        Session session = factory.openSession();
        
        String pKey = (String)primaryKey.get(0);
        
        ShoppingCartProducts cartProducts = session.get(ShoppingCartProducts.class, pKey);
        
        session.delete(cartProducts);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public ShoppingCartProducts getByPrimaryKey(List<Object> primaryKeys) throws SQLException {

        SessionFactory factory = new Configuration()
       .configure()
       .buildSessionFactory();
        Session session = factory.openSession();
        
        session.beginTransaction();
        String pKey = (String)primaryKeys.get(0);
        
        ShoppingCartProducts cartProduct = session.get(ShoppingCartProducts.class, pKey);
        
        session.getTransaction().commit();
        session.close();
        return cartProduct;
        
    }

    @Override
    public List<ShoppingCartProducts> getAll() throws SQLException {

        SessionFactory factory = new Configuration()
       .configure()
       .buildSessionFactory();
        Session session = factory.openSession();
        
        session.beginTransaction();
        
        Criteria criteria = session.createCriteria(ShoppingCartProducts.class);
        List<ShoppingCartProducts> cartProductses  = criteria.list();
        
        
        session.getTransaction().commit();
        session.close();
        return cartProductses;
    }

    @Override
    public List<ShoppingCartProducts> getByColumnNames(List<String> columnNames, List<Object> columnValues) throws SQLException {

        SessionFactory factory = new Configuration()
       .configure()
       .buildSessionFactory();
        Session session = factory.openSession();
        
        session.beginTransaction();
        List<ShoppingCartProducts> cartProductses = new ArrayList<>();
        
        Criteria criteria = session.createCriteria(ShoppingCartProducts.class);
        
        for(int i =0 ;i<columnNames.size() ; i++)
        {
            criteria = criteria.add(Restrictions.eq(columnNames.get(i), columnValues.get(i)));
        }
        
        cartProductses = criteria.list();
        
        session.getTransaction().commit();
        session.close();
        
        return cartProductses;
        
    }

}
