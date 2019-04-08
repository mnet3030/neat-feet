package com.imagine.neatfeat.model.dal.Convertors;

import com.imagine.neatfeat.model.dal.dao.BrandDAO;
import com.imagine.neatfeat.model.dal.dao.CategoryDAO;
import com.imagine.neatfeat.model.dal.entity.Brand;
import com.imagine.neatfeat.model.dal.entity.Category;
import com.imagine.neatfeat.model.dal.entity.Product;
import com.imagine.neatfeat.model.dal.servletDAO.ProductBean;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import java.util.UUID;

public class ProductConvertor {

    public static Product converProductBeantoProduct(ProductBean bean)
    {
        SessionFactory sessionFactory = new Configuration()
                .configure("cfg/hibernate.cfg.xml").buildSessionFactory();
        Session session = sessionFactory.openSession();


        Product product = new Product();
        product.setQuantity(bean.getQuantity());
        UUID brandUUID = UUID.fromString(bean.getBrand());
        UUID categoryUUID = UUID.fromString(bean.getCategory());



        BrandDAO brandDAO = new BrandDAO(session);
        Brand brand = brandDAO.getByPrimaryKey(brandUUID);

        CategoryDAO categoryDAO = new CategoryDAO(session);
        Category category = categoryDAO.getByPrimaryKey(categoryUUID);


        product.setBrand(brand);
        product.setCategory(category);

        product.setDescription(bean.getDescription());
        product.setBuyingCount(0);
        product.setDetailedDescription(bean.getDetailedDescription());
        product.setPrice(bean.getPrice());

        return product;

    }

}
