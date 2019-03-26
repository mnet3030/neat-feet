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
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Amer Salah
 */
public class CategoryDao implements DAO<Category> {

    @Override
    public void persist(Category category) throws SQLException {
        
        SessionFactory factory = new Configuration()
       .configure("/hibernate.cfg.xml")
       .buildSessionFactory();
        Session session = factory.openSession();
        
        session.beginTransaction();
        session.persist(category);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public void update(Category category) throws SQLException {
        
        SessionFactory factory = new Configuration()
       .configure()
       .buildSessionFactory();
        Session session = factory.openSession();
        
       session.beginTransaction(); 
       
       String catDesc = category.getDescription();
       
       Criteria criteria = session.createCriteria(Category.class);
       criteria.add(Restrictions.eq("description", category.getDescription()));
       
       Category newCategory = new Category();
       newCategory = (Category) criteria.uniqueResult();
       newCategory.setCategories(category.getCategories());
       newCategory.setProducts(category.getProducts());
       
       session.saveOrUpdate(newCategory);
       
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
        Category category = (Category) session.createCriteria(Category.class)
                    .add(Restrictions.eq("description", discribtion)).uniqueResult();
        
        session.delete(category);
        session.getTransaction().commit();
        session.close();
        
    }

    @Override
    public Category getByPrimaryKey(List<Object> primaryKeys) throws SQLException {

        
        SessionFactory factory = new Configuration()
       .configure()
       .buildSessionFactory();
        Session session = factory.openSession();
        

       String discribtion = (String)primaryKeys.get(0); 
       
       session.beginTransaction();
       
      Category category = (Category) session.createCriteria(Category.class)
                    .add(Restrictions.eq("description", discribtion)).uniqueResult();
      
      session.getTransaction().commit();
      session.close();
        
      return category;
    }

    @Override
    public List<Category> getAll() throws SQLException {

         SessionFactory factory = new Configuration()
       .configure()
       .buildSessionFactory();
        Session session = factory.openSession();
        
        session.beginTransaction();
        
        List<Category> categorys = new ArrayList<>();
        
        Criteria criteria = session.createCriteria(Category.class);
        
        categorys = criteria.list();
        session.getTransaction().commit();
        session.close();
        return categorys;
    }

    @Override
    public List<Category> getByColumnNames(List<String> columnNames, List<Object> columnValues) throws SQLException {

        SessionFactory factory = new Configuration()
       .configure()
       .buildSessionFactory();
        Session session = factory.openSession();
        
        session.beginTransaction();
        List<Category> categorys = new ArrayList<>();
        
        Criteria criteria = session.createCriteria(Category.class);
        
        for(int i =0 ;i<columnNames.size() ; i++)
        {
            criteria = criteria.add(Restrictions.eq(columnNames.get(i), columnValues.get(i)));
        }
        
        categorys = criteria.list();
        
        session.getTransaction().commit();
        session.close();
        
        return categorys;
    }
    
}
