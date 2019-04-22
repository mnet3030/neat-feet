package com.imagine.neatfeat.controller.customer.servlets;

import com.imagine.neatfeat.model.dal.entity.Category;
import com.imagine.neatfeat.model.dal.servletsdaos.ResultDao;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;


public class ContactServlet extends HttpServlet {

    SessionFactory sessionFactory;

    @Override
    public void init() throws ServletException {

        sessionFactory = (SessionFactory) getServletContext().getAttribute("sessionFactory");

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/
        HttpSession httpSession=request.getSession(false);
        if(httpSession!=null && httpSession.getAttribute("user")!=null){
            request.setAttribute("loggedIn", true);
            request.setAttribute("user", httpSession.getAttribute("user"));
        }else{
            request.setAttribute("loggedIn", false);
        }

        Session session = sessionFactory.getCurrentSession();
        session.beginTransaction();
        ResultDao resultDao = new ResultDao();
        List<Category> mainCategories = resultDao.getMainCategories(session);
        request.setAttribute("mainCategories", mainCategories);
        session.getTransaction().commit();
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/view/customer/jsp/contact.jsp");
        dispatcher.include(request, response);
    }
}
