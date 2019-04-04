package com.imagine.neatfeat.controller.customer.listeners;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ContextListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        /*Mahmoud Shereif*/
        SessionFactory sessionFactory = new Configuration().configure("cfg/hibernate.cfg.xml").buildSessionFactory();
        Session session = sessionFactory.openSession();
        sce.getServletContext().setAttribute("session", session);

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
