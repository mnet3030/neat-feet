package com.imagine.neatfeat.model.dal.Convertors;

import com.imagine.neatfeat.model.dal.entity.Country;
import com.imagine.neatfeat.model.dal.entity.User;
import com.imagine.neatfeat.model.dal.entity.UserRoles;
import com.imagine.neatfeat.model.dal.dto.UserBean;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class UserConvertor {

    public static User covertUserBeanToUser(UserBean bean, Session session) {

        User user = new User();
        user.setName(bean.getName());
        user.setEmail(bean.getEmail());
        user.setPassword(bean.getPassword());
        user.setCreditLimit(bean.getCreditLimit());
        user.setPhone(bean.getPhone());
        user.setGender(bean.isGender());
        //-----------------------------------------------------------
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
        return user;
    }
    public static UserBean covertUserToUserBean(User user) {

        UserBean bean = new UserBean();
        bean.setName(user.getName());
        bean.setEmail(user.getEmail());
        bean.setCreditLimit(user.getCreditLimit());
        bean.setPhone(user.getPhone());
        user.setGender(bean.isGender());
        //-----------------------------------------------------------
        SimpleDateFormat formatter = new SimpleDateFormat("dd MMM yyyy");
        //---------------------------------------------------------
        if (user.getAddress() != null)
            bean.setAddress(user.getAddress());
        if (user.getPhotoUrl() != null)
            bean.setPhotoUrl(user.getPhotoUrl());
        if (user.getJob() != null)
            bean.setJob(user.getJob());

        return bean;
    }
}
