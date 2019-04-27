package com.imagine.neatfeat.controller.admin.servlets;

import com.imagine.neatfeat.model.dal.Convertors.ProductConvertor;
import com.imagine.neatfeat.model.dal.dao.BrandDAO;
import com.imagine.neatfeat.model.dal.dao.CategoryDAO;
import com.imagine.neatfeat.model.dal.dao.ProductDAO;
import com.imagine.neatfeat.model.dal.dao.UserDAO;
import com.imagine.neatfeat.model.dal.entity.Brand;
import com.imagine.neatfeat.model.dal.entity.Category;
import com.imagine.neatfeat.model.dal.entity.Product;
import com.imagine.neatfeat.model.dal.entity.User;
import com.imagine.neatfeat.model.dal.servletDAO.ProductBean;
import org.apache.commons.beanutils.BeanUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import com.google.gson.Gson;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.UUID;

@WebServlet("/productEdit")
@MultipartConfig
public class ProductEdit extends HttpServlet {
    SessionFactory sessionFactory;
    @Override
    public void init() throws ServletException {
        sessionFactory = (SessionFactory) getServletContext().getAttribute("sessionFactory");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String productID = req.getParameter("productid");
        //------------------------------------------------------------------
        Session session = sessionFactory.getCurrentSession();
        session.beginTransaction();
        ProductDAO dao = new ProductDAO(session);
        Product editableProduct = dao.getByPrimaryKey(UUID.fromString(productID));
        ProductBean bean = ProductConvertor.converProducttoProductBean(editableProduct);
        //-------------------------------------------------------------------
        HttpSession userSession = req.getSession(false);
        userSession.setAttribute("editableProduct" ,editableProduct);
        PrintWriter out = resp.getWriter();
        session.getTransaction().commit();
        out.print(new Gson().toJson(bean));
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
        session.beginTransaction();
        //----------------------------------------------------------------------
        ProductDAO dao = new ProductDAO(session);
        //----------------------------------------------------------------------
        HttpSession userSession = req.getSession(false);
        Product product = (Product)userSession.getAttribute("editableProduct");
        //-----------------------------------------------------------------------
        UUID brandUUID = UUID.fromString(bean.getBrand());
        BrandDAO brandDAO = new BrandDAO(session);
        Brand brand = brandDAO.getByPrimaryKey(brandUUID);
        product.setBrand(brand);
        //-----------------------------------------------------------------------
        UUID categoryUUID = UUID.fromString(bean.getCategory());
        CategoryDAO categoryDAO = new CategoryDAO(session);
        Category category = categoryDAO.getByPrimaryKey(categoryUUID);
        product.setCategory(category);
        //---------------------------------------------------------------------
        product.setDetailedDescription(bean.getDetailedDescription());
        product.setPrice(bean.getPrice());
        product.setQuantity(bean.getQuantity());
        product.setDescription(bean.getDescription());
        product.setShortLinedDescription(bean.getShort_lined_description());
        //----------------------------------------------------------------------
        dao.update(product);
        //----------------------------------------------------------------------
        req.setAttribute("product" , product);
        req.getServletContext()
                .getRequestDispatcher("/saveproductimg")
                .include(req,resp);
        //----------------------------------------------
        product = (Product) req.getAttribute("product");
        //dao.update(product);
        session.getTransaction().commit();

        resp.sendRedirect("adminproduct");


    }
}
