package com.imagine.neatfeat.controller.customer.servlets;

import com.imagine.neatfeat.model.dal.dao.SingletonSessionFactory;
import com.imagine.neatfeat.model.dal.entity.Category;
import com.imagine.neatfeat.model.dal.entity.User;
import com.imagine.neatfeat.model.dal.servletsdaos.CheckoutDao;
import com.imagine.neatfeat.model.dal.servletsdaos.ResultDao;
import com.imagine.neatfeat.model.dal.utility.CheckoutServices;
import com.imagine.neatfeat.model.dal.utility.CheckoutUtility;
import com.imagine.neatfeat.model.dal.utilityPojos.Item;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class CheckoutServlet extends HttpServlet {
    SessionFactory sessionFactory;

    @Override
    public void init() throws ServletException {

        sessionFactory = SingletonSessionFactory.getInstance();

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/

        Session session = sessionFactory.getCurrentSession();
        session.beginTransaction();
        CheckoutServices checkoutServices=new CheckoutServices(session);
        ResultDao resultDao = new ResultDao();
        List<Category> mainCategories = resultDao.getMainCategories(session);
        request.setAttribute("mainCategories", mainCategories);


        HttpSession userSession=request.getSession(false);
        if(userSession!=null && userSession.getAttribute("user") != null) {
            request.setAttribute("loggedIn", true);
            request.setAttribute("user", request.getSession(false).getAttribute("user"));
            checkoutServices.getSessionAttr(request,response);
            session.getTransaction().commit();
            request.getServletContext().getRequestDispatcher("/view/customer/jsp/checkout.jsp")
                    .forward(request, response);
        }else{
            session.getTransaction().commit();
            request.getServletContext().getRequestDispatcher("/login")
                    .forward(request, response);
        }
        /*Alia Mahmoud*/

        /*Amer Salah*/

        /*Nouran Habib*/

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/


        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        Session session = sessionFactory.getCurrentSession();

        Transaction tx = null;

        try {
            tx = session.beginTransaction();

            CheckoutServices checkoutServices = new CheckoutServices(session);
            List<Item> cart = checkoutServices.getSessionAttr(request,response);
            String action = request.getParameter("action");
            System.out.println(action);
            checkoutServices.doAction(request,response,cart,action);

            tx.commit();

        }catch (Exception ex) {
            ex.printStackTrace();
            tx.rollback();
        }




        /*Alia Mahmoud*/

        /*Amer Salah*/

        /*Nouran Habib*/

    }



}
