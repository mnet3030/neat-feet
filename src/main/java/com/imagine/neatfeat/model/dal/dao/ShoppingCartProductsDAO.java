/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.imagine.neatfeat.model.dal.dao;

import com.imagine.neatfeat.model.dal.entity.ShoppingCartProducts;
import org.hibernate.Session;

/**
 *
 * @author Amer Salah
 */
public class ShoppingCartProductsDAO extends GenericDAO<ShoppingCartProducts> {

    public ShoppingCartProductsDAO(Session session) {
        super(session, ShoppingCartProducts.class);
    }
}
