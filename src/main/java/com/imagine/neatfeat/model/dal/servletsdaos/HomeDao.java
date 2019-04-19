package com.imagine.neatfeat.model.dal.servletsdaos;

import com.imagine.neatfeat.model.dal.dao.ProductDAO;
import com.imagine.neatfeat.model.dal.entity.Category;
import com.imagine.neatfeat.model.dal.entity.Product;
import org.hibernate.Session;

import java.util.List;

public class HomeDao {
    ResultDao resultDao;
    ProductDAO productDao;
    Session session;

    public HomeDao(Session session){
        this.session=session;
        resultDao=new ResultDao();
        productDao=new ProductDAO(session);
    }


    public List<Product> getProductMan(){
        List<Product> manProducts=null;
        List<Category> mainCategories = resultDao.getMainCategories(session);
        mainCategories.forEach(m-> System.out.println(m.getDescription()));
        System.out.println(mainCategories.get(0).getId());
        if(mainCategories.get(0).getDescription().equalsIgnoreCase("man")){
            manProducts=productDao.getByColumnName("category.id",mainCategories.get(0).getId());
        }else{
            manProducts=productDao.getByColumnName("category.id",mainCategories.get(1).getId());
        }
        return manProducts;
    }
    public List<Product> getProductWoman(){
        List<Product> manProducts=null;
        List<Category> mainCategories = resultDao.getMainCategories(session);
        if(mainCategories.get(0).getDescription().equalsIgnoreCase("woman")){
            manProducts=productDao.getByColumnName("category.id",mainCategories.get(0).getId());
        }else{
            manProducts=productDao.getByColumnName("category.id",mainCategories.get(1).getId());
        }
        return manProducts;
    }


}