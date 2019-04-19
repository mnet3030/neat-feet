package com.imagine.neatfeat.model.dal.servletsdaos;

import com.imagine.neatfeat.model.dal.dao.ProductDAO;
import com.imagine.neatfeat.model.dal.entity.Category;
import com.imagine.neatfeat.model.dal.entity.Product;
import org.hibernate.Session;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class HomeDao {
    ResultDao resultDao;
    ProductDAO productDao;
    Session session;

    public HomeDao(Session session){
        this.session=session;
        resultDao=new ResultDao();
        productDao=new ProductDAO(session);
    }


    public  Map<String,List<Product>>  getCategoriesProduct(){
        List<Product> Products=null;
        List<Category> mainCategories = resultDao.getMainCategories(session);
        Map<String,List<Product>> allCategories=new HashMap<>();
        for(Category category:mainCategories){
            Products=productDao.getByColumnName("category.id",category.getId());
            allCategories.put(category.getDescription(),Products);
        }

        return allCategories;
    }

}