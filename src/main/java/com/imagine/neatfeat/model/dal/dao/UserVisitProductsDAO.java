package com.imagine.neatfeat.model.dal.dao;

import com.imagine.neatfeat.model.dal.entity.Product;
import com.imagine.neatfeat.model.dal.entity.UserVisitProducts;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;

public class UserVisitProductsDAO extends GenericDAO<UserVisitProducts> {
    public UserVisitProductsDAO(Session session) {
        super(session, UserVisitProducts.class);
    }
    public Map<Product, Integer> getMostVisitedProducts(int noOfRowsRequired)
    {
        Criteria criteria = session.createCriteria(tClass);
        criteria = criteria.setProjection(Projections.projectionList()
                .add(Projections.groupProperty("product.id"))
                .add(Projections.sum("visitCount"),"visitCount")).addOrder(Order.desc("visitCount"));

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
            int productSellCount = ((Long) pair[1]).intValue();
            resultMap.put(product, productSellCount);

        }
        return resultMap;
    }
}
