/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.imagine.neatfeat.model.dal.dao;

import com.imagine.neatfeat.model.dal.entity.ShoppingCartProducts;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Amer Salah
 */
public class ShoppingCartProductsDAO implements DAO<ShoppingCartProducts> {
    Session session;

    public ShoppingCartProductsDAO(Session session) {
        this.session = session;
    }

    @Override
    public void persist(ShoppingCartProducts cartProducts) throws SQLException {
        session.persist(cartProducts);
    }

    @Override
    public void update(ShoppingCartProducts cartProducts) throws SQLException {
        session.update(cartProducts);
    }

    @Override
    public void delete(List<Object> primaryKey) throws SQLException {
        String shoppingCartProductsId = (String)primaryKey.get(0);
        ShoppingCartProducts shoppingCartProductToBeDeleted = session.load(ShoppingCartProducts.class, shoppingCartProductsId);
        session.delete(shoppingCartProductToBeDeleted);
    }

    @Override
    public ShoppingCartProducts getByPrimaryKey(List<Object> primaryKeys) throws SQLException {
        String shoppingCartProductsId = (String)primaryKeys.get(0);
        ShoppingCartProducts neededShoppingCartProduct = session.get(ShoppingCartProducts.class, shoppingCartProductsId);
        return neededShoppingCartProduct;
    }

    @Override
    public List<ShoppingCartProducts> getAll() throws SQLException {
        Criteria critera = session.createCriteria(ShoppingCartProducts.class);
        List<ShoppingCartProducts> allShoppingCartProducts = critera.list();
        return allShoppingCartProducts;
    }

    @Override
    public List<ShoppingCartProducts> getByColumnNames(List<String> columnNames, List<Object> columnValues) throws SQLException {
        Criteria criteria = session.createCriteria(ShoppingCartProducts.class);
        for(int i = 0; i<columnNames.size(); i++){
            criteria = criteria.add(Restrictions.eq(columnNames.get(i), columnValues.get(0)));
        }
        List<ShoppingCartProducts> neededShoppingCartProducts = criteria.list();
        return neededShoppingCartProducts;
    }
}
