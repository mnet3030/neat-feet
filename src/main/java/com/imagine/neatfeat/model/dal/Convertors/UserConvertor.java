package com.imagine.neatfeat.model.dal.Convertors;

import com.imagine.neatfeat.model.dal.entity.Country;
import com.imagine.neatfeat.model.dal.entity.User;
import com.imagine.neatfeat.model.dal.entity.UserRoles;
import com.imagine.neatfeat.model.dal.servletDAO.UserBean;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

import java.util.List;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class UserConvertor {

    public static User covertUserBeanToUser(UserBean bean) {

        User user = new User();
        user.setName(bean.getName());
        user.setEmail(bean.getEmail());
        user.setPassword(bean.getPassword());
        user.setCreditLimit(bean.getCreditLimit());
        user.setPhone(bean.getPhone());
        user.setGender(bean.isGender());
        //-----------------------------------------------------------
        SessionFactory sessionFactory = new Configuration()
                .configure("cfg/hibernate.cfg.xml").buildSessionFactory();
        Session session = sessionFactory.openSession();
        //--------user country--------------------------------------
        String countryname = bean.getCountry();
        Country country = (Country) session.createCriteria(Country.class)
                .add(Restrictions.eq("name", countryname)).uniqueResult();
        user.setCountry(country);
        //----------user role----------------------------------------
        //String userRoleId = "69E5A108525F11E9A64054A050374DD2";
        UserRoles userRole = (UserRoles) session.createCriteria(UserRoles.class)
                .add(Restrictions.eq("description", "customer")).uniqueResult();
        user.setUserRoles(userRole);
        //------------------------------------------------------------
        SimpleDateFormat formatter = new SimpleDateFormat("dd MMM yyyy");
        try {
            Date bdate = formatter.parse(bean.getBirthdate());
            user.setBirthdate(bdate);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        //---------------------------------------------------------
        if (bean.getAddress() != null)
            user.setAddress(bean.getAddress());
        if (bean.getPhotoUrl() != null)
            user.setPhotoUrl(bean.getPhotoUrl());
        if (bean.getJob() != null)
            user.setJob(bean.getJob());

        session.close();
        sessionFactory.close();
        return user;
    }
}
