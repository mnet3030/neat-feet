package com.imagine.neatfeat.model.dal.servletsdaos;

import com.imagine.neatfeat.model.dal.dao.CountryDAO;
import com.imagine.neatfeat.model.dal.dao.UserDAO;
import com.imagine.neatfeat.model.dal.entity.Country;
import com.imagine.neatfeat.model.dal.entity.User;
import org.hibernate.Session;

import java.util.List;

public class RegisterDao {
    public List<Country> getAllCountries(Session session)
    {
        CountryDAO dao = new CountryDAO(session);
        List allCountries = dao.getAll();
        //--------------------------------------------------------
        return allCountries;
    }

    public User getUserByEmail(Session session, String email) {
        UserDAO userDAO = new UserDAO(session);
        List<User> userList = userDAO.getByColumnName("email", email);
        if(userList.size() > 0)
            return userList.get(0);
        else
            return null;
    }
}
