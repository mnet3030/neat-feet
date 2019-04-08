package com.imagine.neatfeat.controller.admin.servlets;

import com.imagine.neatfeat.model.dal.Convertors.ProductConvertor;
import com.imagine.neatfeat.model.dal.Convertors.UserConvertor;
import com.imagine.neatfeat.model.dal.dao.ProductDAO;
import com.imagine.neatfeat.model.dal.dao.UserDAO;
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
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.UUID;

import com.imagine.neatfeat.model.dal.entity.User;
import com.imagine.neatfeat.model.dal.overDao.FasadProductDao;
import com.imagine.neatfeat.model.dal.servletDAO.ProductBean;
import com.imagine.neatfeat.model.dal.servletDAO.UserBean;
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
        productUtility=new ProductUtility();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter out = response.getWriter();


        String action = request.getParameter("action");
        if(action.equals("delete"))
        {
            UUID uuid  = UUID.fromString(request.getParameter("productID"));
            FasadProductDao productDao = new FasadProductDao();
            productDao.deleteProductByID(uuid);

        }else if(action.equals("add"))
        {

            ProductBean bean=new ProductBean();
            try{
                BeanUtils.populate(bean, request.getParameterMap());
            }catch(Exception e)
            {
                e.printStackTrace();
            }
            //----------------------------------------------------------------------
            SessionFactory sessionFactory = new Configuration()
                    .configure("cfg/hibernate.cfg.xml").buildSessionFactory();
            Session session = sessionFactory.openSession();
            //----------------------------------------------------------------------
            Product product = ProductConvertor.converProductBeantoProduct(bean);
            //----------------------------------------------------------------------
            ProductDAO dao = new ProductDAO(session);

                Product addedProduct = dao.merge(product);
                //--------------------------------------------
                request.setAttribute("product" , addedProduct);
                request.getServletContext()
                        .getRequestDispatcher("/saveproductimg")
                        .include(request,response);
                //----------------------------------------------
            addedProduct = (Product) request.getAttribute("product");
                dao.update(addedProduct);

            session.close();
            sessionFactory.close();

        }






    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Product> products=productUtility.getAll();
        request.getSession().setAttribute("products",products);

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/view/admin/jsp/product.jsp");
        dispatcher.forward(request, response);

    }
}
