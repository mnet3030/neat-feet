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
import com.imagine.neatfeat.model.dal.servletDAO.ProductBean;
import com.imagine.neatfeat.model.dal.servletsdaos.AdminProductDao;
import com.imagine.neatfeat.model.dal.servletsdaos.ResultDao;
import com.imagine.neatfeat.model.dal.utilityPojos.Item;
import org.apache.commons.beanutils.BeanUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

@MultipartConfig
public class ProductServlet extends HttpServlet {
    SessionFactory sessionFactory;
    @Override
    public void init() throws ServletException {
        sessionFactory = (SessionFactory) getServletContext().getAttribute("sessionFactory");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Session session = sessionFactory.getCurrentSession();
        session.beginTransaction();

        PrintWriter out = response.getWriter();


        String action = request.getParameter("action");
        if (action.equals("delete")) {
            UUID uuid = UUID.fromString(request.getParameter("productID"));
            ProductDAO productDao = new ProductDAO(session);
            productDao.deleteByColumnName("id", uuid);
        }
        session.getTransaction().commit();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Session session = sessionFactory.getCurrentSession();
        session.beginTransaction();
        String action = request.getParameter("action");
        if ((action!=null)&&(action.equals("search"))) {

            AdminProductDao productDAO = new AdminProductDao(session);

            String productName = request.getParameter("productName");
            ResultDao resultDao = new ResultDao();
            String pageNo = request.getParameter("pageNo");
            PaginationService paginationService = new PaginationService();
            Map paginationMap = paginationService.getProductsByParameters(session, productName, "", pageNo);
            request.setAttribute("products", paginationMap.get("entities"));
            request.setAttribute("noOfPages", paginationMap.get("noOfPages"));
            request.setAttribute("pageNo", paginationMap.get("pageNumber"));
            CategoryDAO categoryDAO = new CategoryDAO(session);
            List<Category> categories = categoryDAO.getAll();
            request.setAttribute("categories", categories);

            BrandDAO brandDAO = new BrandDAO(session);
            List<Brand> brands = brandDAO.getAll();

            request.setAttribute("brands", brands);

            session.getTransaction().commit();

            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/view/admin/jsp/product.jsp");
            dispatcher.forward(request, response);
        } else {
            BrandDAO brandDAO = new BrandDAO(session);
            List<Brand> brands = brandDAO.getAll();
            request.setAttribute("brands", brands);

            CategoryDAO categoryDAO = new CategoryDAO(session);
            List<Category> categories = categoryDAO.getAll();
            request.setAttribute("categories", categories);

            //-----------------------------------------------------------------

            ResultDao resultDao = new ResultDao();
            String pageNo = request.getParameter("pageNo");
            List<Category> mainCategories = resultDao.getMainCategories(session);
            PaginationService paginationService = new PaginationService();
            Map paginationMap = paginationService.getProductsByParameters(session, "", "", pageNo);

            request.setAttribute("products", paginationMap.get("entities"));
            request.setAttribute("noOfPages", paginationMap.get("noOfPages"));
            request.setAttribute("pageNo", paginationMap.get("pageNumber"));

            session.getTransaction().commit();

            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/view/admin/jsp/product.jsp");
            dispatcher.forward(request, response);
        }
    }
}
