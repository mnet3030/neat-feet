package com.imagine.neatfeat.controller.admin.servlets;

import com.google.gson.Gson;
import com.imagine.neatfeat.model.dal.Convertors.ProductConvertor;
import com.imagine.neatfeat.model.dal.Convertors.UserConvertor;
import com.imagine.neatfeat.model.dal.dao.BrandDAO;
import com.imagine.neatfeat.model.dal.dao.CategoryDAO;
import com.imagine.neatfeat.model.dal.dao.ProductDAO;
import com.imagine.neatfeat.model.dal.dao.UserDAO;
import com.imagine.neatfeat.model.dal.entity.Brand;
import com.imagine.neatfeat.model.dal.entity.Category;
import com.imagine.neatfeat.model.dal.entity.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import com.imagine.neatfeat.model.dal.entity.User;
import com.imagine.neatfeat.model.dal.overDao.FasadProductDao;
import com.imagine.neatfeat.model.dal.servletDAO.ProductBean;
import com.imagine.neatfeat.model.dal.servletDAO.UserBean;
import com.imagine.neatfeat.model.dal.servletsdaos.AdminProductDao;
import com.imagine.neatfeat.model.dal.utility.ProductUtility;
import org.apache.commons.beanutils.BeanUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

@WebServlet("/productServlet")
@MultipartConfig
public class ProductServlet extends HttpServlet {

    ProductUtility productUtility;



    @Override
    public void init() throws ServletException {
        productUtility = new ProductUtility();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        SessionFactory factory = new Configuration().configure("cfg/hibernate.cfg.xml").buildSessionFactory();
        Session session = factory.openSession();

        PrintWriter out = response.getWriter();


        String action = request.getParameter("action");
        if (action.equals("delete")) {
            UUID uuid = UUID.fromString(request.getParameter("productID"));
            FasadProductDao productDao = new FasadProductDao();
            productDao.deleteProductByID(uuid);

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        SessionFactory factory = new Configuration().configure("cfg/hibernate.cfg.xml").buildSessionFactory();
        Session session = factory.openSession();
        String action = request.getParameter("action");
        if ((action!=null)&&(action.equals("search"))) {

            AdminProductDao productDAO = new AdminProductDao(session);
            String productName = request.getParameter("productName");
            List<Product> products = productDAO.getProductsByName(productName);

            if (products.size() >= 1) {
                System.out.println(products.get(0).getDescription());
                request.setAttribute("products", products);

                session.beginTransaction();
                CategoryDAO categoryDAO = new CategoryDAO(session);
                List<Category> categories = categoryDAO.getAll();
                request.setAttribute("categories", categories);

                BrandDAO brandDAO = new BrandDAO(session);
                List<Brand> brands = brandDAO.getAll();

                request.setAttribute("brands", brands);

                session.getTransaction().commit();
                session.close();

                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/view/admin/jsp/product.jsp");
                dispatcher.forward(request, response);
            }else{
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/view/admin/jsp/product.jsp");
                dispatcher.forward(request, response);
            }


        } else {

            ProductDAO dao = new ProductDAO(session);
            List<Product> products = dao.getAll();
            request.setAttribute("products", products);

            session.beginTransaction();
            CategoryDAO categoryDAO = new CategoryDAO(session);
            List<Category> categories = categoryDAO.getAll();
            request.setAttribute("categories", categories);

            BrandDAO brandDAO = new BrandDAO(session);
            List<Brand> brands = brandDAO.getAll();

            request.setAttribute("brands", brands);

            session.getTransaction().commit();
            session.close();

            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/view/admin/jsp/product.jsp");
            dispatcher.forward(request, response);
        }
    }
}
