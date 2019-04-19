package com.imagine.neatfeat.controller.customer.servlets;

import com.imagine.neatfeat.model.dal.entity.Category;
import com.imagine.neatfeat.model.dal.entity.Product;
import com.imagine.neatfeat.model.dal.servletsdaos.HomeDao;
import com.imagine.neatfeat.model.dal.servletsdaos.ResultDao;
import com.imagine.neatfeat.model.dal.utility.CheckoutUtility;
import com.imagine.neatfeat.model.dal.utilityPojos.Item;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class HomeServlet extends HttpServlet {

    SessionFactory sessionFactory;
    HomeDao homeDao;
    @Override
    public void init() throws ServletException {
        sessionFactory = (SessionFactory) getServletContext().getAttribute("sessionFactory");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/
        Session session = sessionFactory.getCurrentSession();
        session.beginTransaction();
        ResultDao resultDao = new ResultDao();
        List<Category> mainCategories = resultDao.getMainCategories(session);
        request.setAttribute("mainCategories", mainCategories);

        //for slider man and woman
        homeDao=new HomeDao(session);
        List<Product> manProduct=homeDao.getProductMan();
        List<Product> womanProduct=homeDao.getProductWoman();
        request.setAttribute("manProducts",manProduct);
        request.setAttribute("womanProducs",womanProduct);


        List<Item> cart= (List<Item>) request.getSession().getAttribute("cartProduct");
        CheckoutUtility checkoutUtility = new CheckoutUtility(session);

        if(cart != null) {
            int sizeCart = checkoutUtility.sizeCart(cart);
            request.getSession().setAttribute("sizeCart", sizeCart);
        }else{
            request.getSession().setAttribute("sizeCart", 0);
        }

        session.getTransaction().commit();

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/view/customer/jsp/index.jsp");
        dispatcher.include(request, response);
        System.out.println("Hello Noran Habib");


        /*Alia Mahmoud*/

        /*Amer Salah*/

        /*Nouran Habib*/

    }
}
