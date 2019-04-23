package com.imagine.neatfeat.controller.customer.listeners;

import com.imagine.neatfeat.model.dal.dao.SingletonSessionFactory;
import com.imagine.neatfeat.model.dal.entity.Category;
import com.imagine.neatfeat.model.dal.entity.Country;
import com.imagine.neatfeat.model.dal.entity.UserRoles;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ContextListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        /*Mahmoud Shereif*/
       /* SessionFactory sessionFactory = new Configuration().configure("cfg/hibernate.cfg.xml").buildSessionFactory();
        servletContextEvent.getServletContext().setAttribute("sessionFactory", sessionFactory);*/
        Session session = SingletonSessionFactory.getInstance().openSession();
        /*Category category = new Category();
        category.setDescription("man");
        Category category1 = new Category();
        category1.setDescription("woman");
        session.beginTransaction();
        session.persist(category);
        session.persist(category1);

        UserRoles userRole = new UserRoles();
        userRole.setDescription("customer");
        UserRoles userRole1 = new UserRoles();
        userRole1.setDescription("admin");
        session.persist(userRole1);

        Country country = new Country();
        country.setName("Egypt");
        Country country1 = new Country();
        country1.setName("Saudi");
        session.persist(country);
        session.persist(country1);
        session.getTransaction().commit();

        session.close();*/

        /*Amr El Kady*/

        /*Alia Mahmoud*/

        /*Amer Salah*/

        /*Nouran Habib*/

    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/

        /*Alia Mahmoud*/

        /*Amer Salah*/

        /*Nouran Habib*/

    }
}
