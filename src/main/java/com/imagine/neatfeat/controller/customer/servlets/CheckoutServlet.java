package com.imagine.neatfeat.controller.customer.servlets;

import com.imagine.neatfeat.model.dal.entity.User;
import com.imagine.neatfeat.model.dal.servletsdaos.CheckoutDao;
import com.imagine.neatfeat.model.dal.servletsdaos.ResultDao;
import com.imagine.neatfeat.model.dal.utility.CheckoutServices;
import com.imagine.neatfeat.model.dal.utility.CheckoutUtility;
import com.imagine.neatfeat.model.dal.utilityPojos.Item;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

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

        sessionFactory = (SessionFactory) getServletContext().getAttribute("sessionFactory");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/

        ResultDao resultDao = new ResultDao();
        Session session = sessionFactory.getCurrentSession();
        session.beginTransaction();
        CheckoutServices checkoutServices=new CheckoutServices(session);

        HttpSession userSession=request.getSession(false);
        if(userSession!=null && userSession.getAttribute("user") != null) {
            checkoutServices.getSessionAttr(request,response);
            request.getServletContext().getRequestDispatcher("/view/customer/jsp/checkout.jsp")
                    .forward(request, response);
        }else{
            request.getServletContext().getRequestDispatcher("/login")
                    .forward(request, response);
        }
        session.getTransaction().commit();
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
        session.beginTransaction();
        HttpSession userSession=request.getSession(false);
        User user= (User) userSession.getAttribute("user");
        if(userSession!=null &&  user!= null) {
            CheckoutServices checkoutServices = new CheckoutServices(session);
            List<Item> cart = checkoutServices.getSessionAttr(request,response);
            String action = request.getParameter("action");
            checkoutServices.doAction(request,response,cart,action);

        }else{
           request.getRequestDispatcher("/login").forward(request,response);
        }
        session.getTransaction().commit();




        /*Alia Mahmoud*/

        /*Amer Salah*/

        /*Nouran Habib*/

    }



}
