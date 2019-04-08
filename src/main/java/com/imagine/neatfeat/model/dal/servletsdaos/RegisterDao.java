package com.imagine.neatfeat.model.dal.servletsdaos;

import com.imagine.neatfeat.model.dal.dao.CountryDAO;
import com.imagine.neatfeat.model.dal.entity.Country;
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
}
