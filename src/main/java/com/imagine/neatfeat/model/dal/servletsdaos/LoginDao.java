package com.imagine.neatfeat.model.dal.servletsdaos;

import com.imagine.neatfeat.model.dal.dao.UserDAO;
import com.imagine.neatfeat.model.dal.entity.User;
import org.hibernate.Session;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class LoginDao {
    public User AuthenticateUser(Session session, String userEmail, String password){
        UserDAO userDAO = new UserDAO(session);
        Map<String, Object> parametersMap = new HashMap<>();
        parametersMap.put("email", userEmail);
        parametersMap.put("password", password);


        List<User> userList = userDAO.getByColumnNames(parametersMap);
        if(userList.size() > 0)
            return userList.get(0);
        else
            return null;
    }
}
