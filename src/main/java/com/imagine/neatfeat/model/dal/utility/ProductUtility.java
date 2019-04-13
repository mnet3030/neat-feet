package com.imagine.neatfeat.model.dal.utility;

import com.imagine.neatfeat.model.dal.dao.ProductDAO;
import com.imagine.neatfeat.model.dal.entity.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.util.List;

public class ProductUtility {

    /*Mahmoud Shereif*/

    /*Amr El Kady*/

    ProductDAO productDAO;
    Session session;
    public ProductUtility(Session session) {
        try {
            this.session=session;
            this.productDAO = new ProductDAO(session);
        }catch (Exception ex){
            System.err.println("error from product dao");
        }
    }

    public List<Product> getAll(){
        List<Product> allProduct=null;

        allProduct= productDAO.getAll();

        return allProduct;
    }

    /*Alia Mahmoud*/

    /*Amer Salah*/

    /*Nouran Habib*/



}
