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
public class UserDao implements DAO<User>{

    @Override
    public void persist(User user) throws SQLException {
        
        SessionFactory factory = new Configuration()
       .configure("/hibernate.cfg.xml")
       .buildSessionFactory();
        Session session = factory.openSession();
        
        session.beginTransaction();
        session.persist(user);
        session.getTransaction().commit();
        session.close();

    }

    @Override
    public void update(User user) throws SQLException {

        SessionFactory factory = new Configuration()
       .configure()
       .buildSessionFactory();
        Session session = factory.openSession();
        
       session.beginTransaction();
       Criteria criteria = session.createCriteria(User.class); 
       criteria.add(Restrictions.eq("email", user.getEmail()));
       
       User newUser = (User) criteria.uniqueResult();
       
       newUser.setAddress(user.getAddress());
       newUser.setBirthdate(user.getBirthdate());
       newUser.setCountry(user.getCountry());
       newUser.setCreditLimit(user.getCreditLimit());
       newUser.setGender(user.isGender());
       newUser.setJob(user.getJob());
       newUser.setName(user.getName());
       newUser.setPassword(user.getPassword());
       newUser.setPhone(user.getPhone());
       newUser.setPhotoUrl(user.getPhotoUrl());
       newUser.setShoppingCarts(user.getShoppingCarts());
       newUser.setUserOrderses(user.getUserOrderses());
       newUser.setUserVisitProductses(user.getUserVisitProductses());
       newUser.setWishingLists(user.getWishingLists());
       
  
       session.saveOrUpdate(newUser);
       session.getTransaction().commit();
       session.close();
       
        
    }

    @Override
    public void delete(List<Object> primaryKey) throws SQLException {

        SessionFactory factory = new Configuration()
       .configure()
       .buildSessionFactory();
        Session session = factory.openSession();
        
        String userEmail = (String)primaryKey.get(0);
        
        session.beginTransaction();
        User user = (User) session.createCriteria(User.class)
                    .add(Restrictions.eq("email", userEmail)).uniqueResult();
        
        session.delete(user);
        session.getTransaction().commit();
        session.close();
       
    }

    @Override
    public User getByPrimaryKey(List<Object> primaryKeys) throws SQLException {

        SessionFactory factory = new Configuration()
       .configure()
       .buildSessionFactory();
        Session session = factory.openSession();
        

       String userEmail = (String)primaryKeys.get(0); 
       
       session.beginTransaction();
       
      User user = (User) session.createCriteria(User.class)
                    .add(Restrictions.eq("email", userEmail)).uniqueResult();
      
      session.getTransaction().commit();
      session.close();
        
      return user;
    }

    @Override
    public List<User> getAll() throws SQLException {

        SessionFactory factory = new Configuration()
       .configure()
       .buildSessionFactory();
        Session session = factory.openSession();
        
        session.beginTransaction();
        
        List<User> users = new ArrayList<>();
        
        Criteria criteria = session.createCriteria(User.class);
        
        users = criteria.list();
        session.getTransaction().commit();
        session.close();
        return users;
    }

    @Override
    public List<User> getByColumnNames(List<String> columnNames, List<Object> columnValues) throws SQLException {

        SessionFactory factory = new Configuration()
       .configure()
       .buildSessionFactory();
        Session session = factory.openSession();
        
        session.beginTransaction();
        List<User> users = new ArrayList<>();
        
        Criteria criteria = session.createCriteria(User.class);
        
        for(int i =0 ;i<columnNames.size() ; i++)
        {
            criteria = criteria.add(Restrictions.eq(columnNames.get(i), columnValues.get(i)));
        }
        
        users = criteria.list();
        
        session.getTransaction().commit();
        session.close();
        
        return users;
        
        
    }
    
}
