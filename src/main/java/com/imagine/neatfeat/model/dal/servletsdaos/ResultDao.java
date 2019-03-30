package com.imagine.neatfeat.model.dal.servletsdaos;

import com.imagine.neatfeat.model.dal.dao.ProductDAO;
import com.imagine.neatfeat.model.dal.entity.Product;
import org.hibernate.Session;

import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

public class ResultDao {
    public List<Product> getRandomProducts(Session session) throws ClassNotFoundException, SQLException {
        ProductDAO productDAO = new ProductDAO(session);
        List<Product> products = productDAO.getAll();
        Collections.shuffle(products);
        return products;
    }
}
