package com.imagine.neatfeat.controller.admin.servlets;

import com.imagine.neatfeat.model.dal.Convertors.ProductConvertor;
import com.imagine.neatfeat.model.dal.dao.ProductDAO;
import com.imagine.neatfeat.model.dal.entity.Product;
import com.imagine.neatfeat.model.dal.servletDAO.ProductBean;
import org.apache.commons.beanutils.BeanUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/addition")
@MultipartConfig
public class ProductAddition extends HttpServlet {


    SessionFactory sessionFactory;
    @Override
    public void init() throws ServletException {
        sessionFactory = (SessionFactory) getServletContext().getAttribute("sessionFactory");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        ProductBean bean=new ProductBean();
        try{
            BeanUtils.populate(bean, req.getParameterMap());
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        //----------------------------------------------------------------------
        Session session = sessionFactory.getCurrentSession();
        //----------------------------------------------------------------------
        Product product = ProductConvertor.converProductBeantoProduct(bean);
        //----------------------------------------------------------------------
        ProductDAO dao = new ProductDAO(session);
        session.beginTransaction();

        Product addedProduct = dao.merge(product);
        //--------------------------------------------
        req.setAttribute("product" , addedProduct);
        req.getServletContext()
                .getRequestDispatcher("/saveproductimg")
                .include(req,resp);
        //----------------------------------------------
        addedProduct = (Product) req.getAttribute("product");

        session.getTransaction().commit();

        resp.sendRedirect("adminproduct");


    }
}
