/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.imagine.neatfeat.model.dal.dao;

import com.imagine.neatfeat.model.dal.dao.DAO;
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
public class AdminDao implements DAO<Admin> {
    
    

    @Override
    public void persist(Admin admin) throws SQLException {
        SessionFactory factory = new Configuration()
       .configure("/hibernate.cfg.xml")
       .buildSessionFactory();
        Session session = factory.openSession();
        
        session.beginTransaction();
        session.persist(admin);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void update(Admin admin) throws SQLException {
        SessionFactory factory = new Configuration()
       .configure()
       .buildSessionFactory();
        Session session = factory.openSession();
        
       session.beginTransaction();
       Criteria criteria = session.createCriteria(Admin.class); 
       criteria.add(Restrictions.eq("email", admin.getEmail()));
       
       Admin newAdmin = (Admin) criteria.uniqueResult();
       
       newAdmin.setAddress(admin.getAddress());
       newAdmin.setBirthdate(admin.getBirthdate());
       newAdmin.setGender(admin.isGender());
       newAdmin.setName(admin.getName());
       newAdmin.setPassword(admin.getPassword());
       newAdmin.setPhone(admin.getPhone());
       newAdmin.setPhotoUrl(admin.getPhotoUrl());
       
  
       session.saveOrUpdate(newAdmin);
       session.getTransaction().commit();
       session.close();
       
        
    }

    @Override
    public void delete(List<Object> primaryKey) throws SQLException {
        
        
        SessionFactory factory = new Configuration()
       .configure()
       .buildSessionFactory();
        Session session = factory.openSession();
        
        
        String adminEmail = (String)primaryKey.get(0);
        
        session.beginTransaction();
        Admin admin = (Admin ) session.createCriteria(Admin.class)
                    .add(Restrictions.eq("email", adminEmail)).uniqueResult();
        
        
        
        session.delete(admin);
        session.getTransaction().commit();
        session.close();
       
        
    }

    @Override
    public Admin getByPrimaryKey(List<Object> primaryKeys) throws SQLException {
       
        SessionFactory factory = new Configuration()
       .configure()
       .buildSessionFactory();
        Session session = factory.openSession();
        

       String adminEmail = (String)primaryKeys.get(0); 
       
       session.beginTransaction();
       
      Admin admin = (Admin ) session.createCriteria(Admin.class)
                    .add(Restrictions.eq("email", adminEmail)).uniqueResult();
      
      session.getTransaction().commit();
      session.close();
        
      return admin;
   
        
    }

    @Override
    public List<Admin> getAll() throws SQLException {
        
        SessionFactory factory = new Configuration()
       .configure()
       .buildSessionFactory();
        Session session = factory.openSession();
        
        session.beginTransaction();
        
        List<Admin> admins = new ArrayList<>();
        
        Criteria criteria = session.createCriteria(Admin.class);
        
        admins = criteria.list();
        session.getTransaction().commit();
        session.close();
        return admins;
        
    }

    @Override
    public List<Admin> getByColumnNames(List<String> columnNames, List<Object> columnValues) throws SQLException {

        SessionFactory factory = new Configuration()
       .configure()
       .buildSessionFactory();
        Session session = factory.openSession();
        
        session.beginTransaction();
        List<Admin> admins = new ArrayList<>();
        
        Criteria criteria = session.createCriteria(Admin.class);
        
        for(int i =0 ;i<columnNames.size() ; i++)
        {
            criteria = criteria.add(Restrictions.eq(columnNames.get(i), columnValues.get(i)));
        }
        
        admins = criteria.list();
        
        session.getTransaction().commit();
        session.close();
        
        return admins;
        
    }
    
}
