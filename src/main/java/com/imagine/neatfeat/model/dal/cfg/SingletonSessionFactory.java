/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.imagine.neatfeat.model.dal.cfg;

import java.net.URI;
import java.net.URISyntaxException;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author ibrahim
 */
public final class SingletonSessionFactory {

    private static final SessionFactory SESSION_FACTORY = createSessionFactory();

    private static SessionFactory createSessionFactory() {
        try {
            Configuration cfg = new Configuration().configure("cfg/hibernate.cfg.xml");
            if (System.getenv("DATABASE_URL") != null) {
                URI dbUri = new URI(System.getenv("DATABASE_URL"));
                String username = dbUri.getUserInfo().split(":")[0];
                String password = dbUri.getUserInfo().split(":")[1];
                String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + ':' + dbUri.getPort()
                        + dbUri.getPath();
                cfg = cfg.setProperty("hibernate.connection.url", dbUrl)
                        .setProperty("hibernate.connection.username", username)
                        .setProperty("hibernate.connection.password", password)
                        .setProperty("hibernate.hbm2ddl.auto", "create")
                        .setProperty("hibernate.connection.driver_class",
                                "org.postgresql.Driver")
                        .setProperty("hibernate.dialect",
                                "org.hibernate.dialect.PostgreSQLDialect");
            }
            SessionFactory sessionFactory = cfg.buildSessionFactory();


            return sessionFactory;
        } catch (URISyntaxException ex) {
            return null;
        }
    }

    private SingletonSessionFactory() {
    }

    public static SessionFactory getInstance() {
        return SESSION_FACTORY;
    }

}