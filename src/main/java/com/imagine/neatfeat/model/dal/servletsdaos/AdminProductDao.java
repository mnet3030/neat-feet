package com.imagine.neatfeat.model.dal.servletsdaos;

import com.imagine.neatfeat.model.dal.entity.Product;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import java.util.ArrayList;
import java.util.List;

public class AdminProductDao {

    Session session;
    public AdminProductDao(Session session)
    {
        this.session = session;
    }


    public List<Product> getProductsByName( String productName)
    {
        List<Product> products;
        Criteria criteria = session.createCriteria(Product.class);
        criteria.add(Restrictions.like("description" , "%" + productName+"%").ignoreCase());
        products = criteria.list();
        return products;

    }

}
