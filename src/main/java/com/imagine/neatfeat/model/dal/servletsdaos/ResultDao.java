package com.imagine.neatfeat.model.dal.servletsdaos;

import com.imagine.neatfeat.model.dal.dao.CategoryDAO;
import com.imagine.neatfeat.model.dal.dao.ProductDAO;
import com.imagine.neatfeat.model.dal.dao.UserDAO;
import com.imagine.neatfeat.model.dal.entity.Category;
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
    public Map<String, Object> getUsersPageBySearchString(Session session, String searchString, int pageNumber, int itemsPerPage){
        UserDAO userDAO = new UserDAO(session);
        Map<String, Object> columnsNamesValues = new HashMap<>();
        columnsNamesValues.put("email", searchString);
        columnsNamesValues.put("name", searchString);
        columnsNamesValues.put("phone", searchString);

        Map resultMap = userDAO.getPageByColumnNamesWithLike(columnsNamesValues, pageNumber, itemsPerPage);
        return resultMap;
    }

    public Map<String, Object> getProductsPageByCategory(Session session, String uuidString, int pageNumber, int itemsPerPage){
        ProductDAO productDAO = new ProductDAO(session);
        Map<String, Object> columnsNamesValues = new HashMap<>();
        columnsNamesValues.put("category.id", UUID.fromString(uuidString));

        Map resultMap = productDAO.getPageByColumnNames(columnsNamesValues, pageNumber, itemsPerPage);
        return resultMap;
    }
    public Map<String, Object> getCategoryDetailsWithParentsAndChilds(Session session, UUID currentUuid)
    {

        CategoryDAO categoryDAO = new CategoryDAO(session);
        Category neededCategory = categoryDAO.getByPrimaryKey(currentUuid);
        List<Category> ancestorCategories = categoryDAO.getAllAncestors(currentUuid);
        Collections.reverse(ancestorCategories);
        Set<Category> childCategories = neededCategory.getCategories();


        Map<String, Object> resultMap = new HashMap<>();
        resultMap.put("neededCategory", neededCategory);
        resultMap.put("ancestors", ancestorCategories);
        resultMap.put("childs", childCategories);

        return resultMap;
    }

    public List<Category> getMainCategories(Session session){
        CategoryDAO categoryDAO = new CategoryDAO(session);
        List<String> list = new ArrayList<>();
        list.add("category");

        List<Category> mainCategories = categoryDAO.getByColumnNamesWithNull(list);
        return mainCategories;
    }
}
