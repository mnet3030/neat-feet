/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.imagine.neatfeat.model.dal.dao;

import com.imagine.neatfeat.model.dal.entity.Country;
import org.hibernate.Session;

/**
 *
 * @author Aly
 */
public class CountryDAO extends GenericDAO<Country> {

    public CountryDAO(Session session) {
        super(session, Country.class);
    }
}
