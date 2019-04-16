package com.imagine.neatfeat.model.dal.utility;

import com.imagine.neatfeat.model.dal.dao.UserDAO;
import com.imagine.neatfeat.model.dal.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.util.List;

public class UserUtility {

    UserDAO userDAO;
    public  UserUtility() {
        SessionFactory sessionFactory=new Configuration().configure("cfg/hibernate.cfg.xml").buildSessionFactory();
        Session session=sessionFactory.openSession();
        try {
            this.userDAO= new UserDAO(session);
        }catch (Exception ex){
            System.out.println("error from user dao");
        }
    }

    public List<User> getAll(){
        List<User> allUser=null;

        allUser= userDAO.getAll();


        return allUser;
    }

}
