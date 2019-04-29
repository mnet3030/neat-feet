package com.imagine.neatfeat.model.dal.dao;

import com.imagine.neatfeat.model.dal.entity.Product;
import com.imagine.neatfeat.model.dal.utilityPojos.Item;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Conjunction;
import org.hibernate.criterion.Disjunction;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;

import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductDAO extends GenericDAO<Product> {

    public ProductDAO(Session session) {
        super(session, Product.class);
    }

    public Map<String, Object> getPageByColumnNamesWithLikeWithUserCartCheck(Map<String, Object> columnsWithValues, int pageNumber, int itemsPerPage, List<Item> cart) {
        int firstItemInPage;
        int totalNoOfItems;
        int noOfPages;

        Disjunction disjunction = Restrictions.or();
        for (Map.Entry<String, Object> entry : columnsWithValues.entrySet()) {
            disjunction.add(Restrictions.like(entry.getKey(), "%" + entry.getValue() + "%").ignoreCase());
        }

        Criteria rowCountCriteria = session.createCriteria(tClass)
                .add(disjunction)
                .setProjection(Projections.rowCount());

        totalNoOfItems = Integer.parseInt(rowCountCriteria.list().get(0).toString());

        noOfPages = (int) Math.ceil((totalNoOfItems / 1.0) / (itemsPerPage / 1.0));

        if (pageNumber > noOfPages) {
            firstItemInPage = (noOfPages - 1) * itemsPerPage;
            pageNumber = noOfPages;
        } else
            firstItemInPage = (pageNumber - 1) * itemsPerPage;

        Criteria resultCriteria = session.createCriteria(tClass)
                .add(disjunction);

        if (firstItemInPage > 0)
            resultCriteria.setFirstResult(firstItemInPage);
        else
            resultCriteria.setFirstResult(0);

        resultCriteria.setMaxResults(itemsPerPage);
        List<Product> pageEntities = resultCriteria.list();
        Map<Product, Boolean> productMap = new HashMap<>();
        if (pageEntities != null) {
            pageEntities.forEach((entity) -> {
                if (cart.stream().anyMatch((item) -> item.getProductId().equals(entity.getId()))) {
                    productMap.put(entity, true);
                } else {
                    productMap.put(entity, false);
                }
            });
        }


        Map<String, Object> entitiesWithNoOfPages = new HashMap<>();
        entitiesWithNoOfPages.put("entities", productMap);
        entitiesWithNoOfPages.put("noOfPages", noOfPages);
        entitiesWithNoOfPages.put("pageNumber", pageNumber);
        return entitiesWithNoOfPages;
    }

    public Map<String, Object> getPageByColumnNamesWithUserCartCheck(Map<String, Object> columnsWithValues, int pageNumber, int itemsPerPage, List<Item> cart) {
        int firstItemInPage;
        int totalNoOfItems;
        int noOfPages;

        Conjunction conjunction = Restrictions.and();
        for (Map.Entry<String, Object> entry : columnsWithValues.entrySet()) {
            conjunction.add(Restrictions.eq(entry.getKey(), entry.getValue()));
        }

        Criteria rowCountCriteria = session.createCriteria(tClass)
                .add(conjunction)
                .setProjection(Projections.rowCount());

        totalNoOfItems = Integer.parseInt(rowCountCriteria.list().get(0).toString());

        noOfPages = (int) Math.ceil((totalNoOfItems / 1.0) / (itemsPerPage / 1.0));

        if (pageNumber > noOfPages) {
            firstItemInPage = (noOfPages - 1) * itemsPerPage;
            pageNumber = noOfPages;
        } else
            firstItemInPage = (pageNumber - 1) * itemsPerPage;

        Criteria resultCriteria = session.createCriteria(tClass)
                .add(conjunction);
        if (firstItemInPage > 0)
            resultCriteria.setFirstResult(firstItemInPage);
        else
            resultCriteria.setFirstResult(0);
        resultCriteria.setMaxResults(itemsPerPage);
        List<Product> pageEntities = resultCriteria.list();

        Map<Product, Boolean> productMap = new HashMap<>();

        pageEntities.forEach((entity) -> {
            if (cart.stream().anyMatch((item) -> item.getProductId().equals(entity.getId()))) {
                productMap.put(entity, true);
            } else {
                productMap.put(entity, false);
            }
        });


        Map<String, Object> entitiesWithNoOfPages = new HashMap<>();
        entitiesWithNoOfPages.put("entities", productMap);
        entitiesWithNoOfPages.put("noOfPages", noOfPages);
        entitiesWithNoOfPages.put("pageNumber", pageNumber);
        return entitiesWithNoOfPages;
    }


    public Map<Product, Boolean> getByPrimaryKeyWithUserCartCheck(Serializable primaryKey, List<Item> cart) {
        Product neededEntity = session.get(tClass, primaryKey);
        Map<Product, Boolean> map = new HashMap<>();

        if (cart.stream().anyMatch((item) -> item.getProductId().equals(neededEntity.getId()))) {
            map.put(neededEntity, true);
        } else {
            map.put(neededEntity, false);
        }

        return map;
    }
}
