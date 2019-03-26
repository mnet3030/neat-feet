package com.imagine.neatfeat.model.dal.dao;

import com.imagine.neatfeat.model.dal.entity.OrderProducts;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import java.sql.SQLException;
import java.util.List;

public class OrderProductsDAO implements DAO<OrderProducts> {
    Session session;
    public OrderProductsDAO(Session session) {
        this.session = session;
    }

    public void persist(OrderProducts orderProduct) throws SQLException {
        session.persist(orderProduct);
    }

    public void update(OrderProducts orderProduct) throws SQLException {
        session.update(orderProduct);
    }

    public void delete(List<Object> primaryKey) throws SQLException {
        String orderProductId = (String)primaryKey.get(0);
        OrderProducts orderProductToBeDeleted = session.load(OrderProducts.class, orderProductId);
        session.delete(orderProductToBeDeleted);
    }

    public OrderProducts getByPrimaryKey(List<Object> primaryKeys) throws SQLException {
        String orderProductId = (String)primaryKeys.get(0);
        OrderProducts neededOrderProduct = session.get(OrderProducts.class, orderProductId);
        return neededOrderProduct;
    }

    public List<OrderProducts> getAll() throws SQLException {
        Criteria critera = session.createCriteria(OrderProducts.class);
        List<OrderProducts> allOrderProducts = critera.list();
        return allOrderProducts;
}

    public List<OrderProducts> getByColumnNames(List<String> columnNames, List<Object> columnValues) throws SQLException {
        Criteria criteria = session.createCriteria(OrderProducts.class);
        for(int i = 0; i<columnNames.size(); i++){
            criteria = criteria.add(Restrictions.eq(columnNames.get(i), columnValues.get(0)));
        }
        List<OrderProducts> neededOrderProducts = criteria.list();
        return neededOrderProducts;
    }
}
