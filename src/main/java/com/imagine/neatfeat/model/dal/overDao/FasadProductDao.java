package com.imagine.neatfeat.model.dal.overDao;

import com.imagine.neatfeat.model.dal.dao.ProductDAO;
import com.imagine.neatfeat.model.dal.entity.Product;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.sql.SQLException;

public class FasadProductDao {

    public Product getProductByID(byte[] productID)
    {
        Product newProduct = new Product();
        SessionFactory factory =  new Configuration().configure("cfg/hibernate.cfg.xml").buildSessionFactory();
        Session session = factory.openSession();

        try {
            ProductDAO productDAO = new ProductDAO(session);

            newProduct = productDAO.getByPrimaryKey(productID);

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return newProduct;
    }

}
