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
    public ProductUtility() {
        SessionFactory sessionFactory=new Configuration().configure("cfg/hibernate.cfg.xml").buildSessionFactory();
        Session session=sessionFactory.openSession();
        try {
            this.productDAO = new ProductDAO(session);
        }catch (Exception ex){
            System.out.println("error from product dao");
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
