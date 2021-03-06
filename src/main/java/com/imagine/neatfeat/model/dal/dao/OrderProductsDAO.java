package com.imagine.neatfeat.model.dal.dao;

import com.imagine.neatfeat.model.dal.entity.OrderProducts;
import com.imagine.neatfeat.model.dal.entity.Product;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;

public class OrderProductsDAO extends GenericDAO<OrderProducts> {
    public OrderProductsDAO(Session session) {
        super(session, OrderProducts.class);
    }

    public Map<Product, Integer> getBestSoldProducts(Integer noOfRowsRequired) {
        Criteria criteria = session.createCriteria(tClass);
        criteria = criteria.setProjection(Projections.projectionList()
                .add(Projections.groupProperty("product.id"))
                .add(Projections.rowCount(),"rowCount")).addOrder(Order.desc("rowCount"));

        if(noOfRowsRequired >= 0) {
            criteria = criteria.setFirstResult(0);
            criteria = criteria.setMaxResults(noOfRowsRequired);
        }

        Map<Product, Integer> resultMap = new HashMap<>();
        ProductDAO productDAO = new ProductDAO(session);
        Iterator pairs = criteria.list().iterator();
        while ( pairs.hasNext() ) {
            Object[] pair = (Object[]) pairs.next();
            UUID productid = (UUID) pair[0];
            Product product = productDAO.getByPrimaryKey(productid);
            int count = ((Long) pair[1]).intValue();
            resultMap.put(product, count);

        }
        return resultMap;
    }
}
