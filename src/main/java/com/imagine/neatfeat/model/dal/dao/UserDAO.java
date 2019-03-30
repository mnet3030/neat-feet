/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.imagine.neatfeat.model.dal.dao;

import com.imagine.neatfeat.model.dal.entity.User;
import org.hibernate.Session;

/**
 *
 * @author Amer Salah
 */
public class UserDAO extends GenericDAO<User>{

    public UserDAO(Session session) {
        super(session, User.class);
    }
    public User getUserByEmail(String uemail){
        User user = (User)session.createQuery( "from User where email = ?1")
                .setString(1,uemail).uniqueResult();
        return user;
    }
    public User athunticateUser(String uemail ,String pass){
        User athUser = (User)session.createQuery( "from User where email = ?1 and password = ?2")
                .setString(1,uemail)
                .setString(2,pass).uniqueResult();
        return athUser;
    }
}
