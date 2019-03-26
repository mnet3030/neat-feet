package com.imagine.neatfeat.model.dal.dao;

import com.imagine.neatfeat.model.dal.entity.Product;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import java.sql.SQLException;
import java.util.List;

public class ProductDAO implements DAO<Product> {
    Session session;
    public ProductDAO(Session session) {
        this.session = session;
    }

    public void persist(Product product) throws SQLException {
        session.persist(product);
    }

    public void update(Product product) throws SQLException {
        session.update(product);
    }

    public void delete(List<Object> primaryKey) throws SQLException {
        String productId = (String)primaryKey.get(0);
        Product productToBeDeleted = session.load(Product.class, productId);
        session.delete(productToBeDeleted);
    }

    public Product getByPrimaryKey(List<Object> primaryKeys) throws SQLException {
        String productId = (String)primaryKeys.get(0);
        Product neededProduct = session.get(Product.class, productId);
        return neededProduct;
    }

    public List<Product> getAll() throws SQLException {
        Criteria critera = session.createCriteria(Product.class);
        List<Product> allProducts = critera.list();
        return allProducts;
    }

    public List<Product> getByColumnNames(List<String> columnNames, List<Object> columnValues) throws SQLException {
        Criteria criteria = session.createCriteria(Product.class);
        for(int i = 0; i<columnNames.size(); i++){
            criteria = criteria.add(Restrictions.eq(columnNames.get(i), columnValues.get(0)));
        }
        List<Product> neededProducts = criteria.list();
        return neededProducts;
    }
}
