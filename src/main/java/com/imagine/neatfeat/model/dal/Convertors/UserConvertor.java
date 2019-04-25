package com.imagine.neatfeat.model.dal.Convertors;

import com.imagine.neatfeat.model.dal.entity.Country;
import com.imagine.neatfeat.model.dal.entity.Userrr;
import com.imagine.neatfeat.model.dal.entity.UserRoles;
import com.imagine.neatfeat.model.dal.dto.UserBean;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class UserConvertor {

    public static Userrr covertUserBeanToUser(UserBean bean, Session session) {

        Userrr userrr = new Userrr();
        userrr.setName(bean.getName());
        userrr.setEmail(bean.getEmail());
        userrr.setPassword(bean.getPassword());
        userrr.setCreditLimit(bean.getCreditLimit());
        userrr.setPhone(bean.getPhone());
        userrr.setGender(bean.isGender());
        //-----------------------------------------------------------
        //--------userrr country--------------------------------------
        String countryname = bean.getCountry();
        Country country = (Country) session.createCriteria(Country.class)
                .add(Restrictions.eq("name", countryname)).uniqueResult();
        userrr.setCountry(country);
        //----------userrr role----------------------------------------
        //String userRoleId = "69E5A108525F11E9A64054A050374DD2";
        UserRoles userRole = (UserRoles) session.createCriteria(UserRoles.class)
                .add(Restrictions.eq("description", "customer")).uniqueResult();
        userrr.setUserRoles(userRole);
        //------------------------------------------------------------
        SimpleDateFormat formatter = new SimpleDateFormat("dd MMM yyyy");
        try {
            Date bdate = formatter.parse(bean.getBirthdate());
            userrr.setBirthdate(bdate);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        //---------------------------------------------------------
        if (bean.getAddress() != null)
            userrr.setAddress(bean.getAddress());
        if (bean.getPhotoUrl() != null)
            userrr.setPhotoUrl(bean.getPhotoUrl());
        if (bean.getJob() != null)
            userrr.setJob(bean.getJob());
        return userrr;
    }
    public static UserBean covertUserToUserBean(Userrr userrr) {

        UserBean bean = new UserBean();
        bean.setName(userrr.getName());
        bean.setEmail(userrr.getEmail());
        bean.setCreditLimit(userrr.getCreditLimit());
        bean.setPhone(userrr.getPhone());
        userrr.setGender(bean.isGender());
        //-----------------------------------------------------------
        SimpleDateFormat formatter = new SimpleDateFormat("dd MMM yyyy");
        //---------------------------------------------------------
        if (userrr.getAddress() != null)
            bean.setAddress(userrr.getAddress());
        if (userrr.getPhotoUrl() != null)
            bean.setPhotoUrl(userrr.getPhotoUrl());
        if (userrr.getJob() != null)
            bean.setJob(userrr.getJob());

        return bean;
    }
}
