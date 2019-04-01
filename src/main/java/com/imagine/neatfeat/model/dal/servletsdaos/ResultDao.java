package com.imagine.neatfeat.model.dal.servletsdaos;

import com.imagine.neatfeat.model.dal.dao.ProductDAO;
import com.imagine.neatfeat.model.dal.entity.Product;
import org.hibernate.Session;

import java.util.*;

public class ResultDao {
    public List<Product> getRandomProducts(Session session) {
        ProductDAO productDAO = new ProductDAO(session);
        List<Product> products = productDAO.getAll();
        Collections.shuffle(products);
        return products;
    }
    public Map<String, Object> getProductsPageBySearchString(Session session, String searchString, int pageNumber, int itemsPerPage){
        ProductDAO productDAO = new ProductDAO(session);
        Map<String, Object> columnsNamesValues = new HashMap<>();
        columnsNamesValues.put("description", searchString);
        columnsNamesValues.put("detailedDescription", searchString);

        Map resultMap = productDAO.getPageByColumnNamesWithLike(columnsNamesValues, pageNumber, itemsPerPage);
        return resultMap;
    }

    public Map<String, Object> getProductsPageByCategory(Session session, String uuidString, int pageNumber, int itemsPerPage){
        ProductDAO productDAO = new ProductDAO(session);
        Map<String, Object> columnsNamesValues = new HashMap<>();
        columnsNamesValues.put("category.id", UUID.fromString(uuidString));

        Map resultMap = productDAO.getPageByColumnNames(columnsNamesValues, pageNumber, itemsPerPage);
        return resultMap;
    }
}
