package com.imagine.neatfeat.controller.customer.servlets;

import com.imagine.neatfeat.model.dal.entity.Category;
import com.imagine.neatfeat.model.dal.servletsdaos.ResultDao;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@MultipartConfig
public class profileManipulation extends HttpServlet {

    SessionFactory sessionFactory;

    @Override
    public void init() throws ServletException {

        sessionFactory = (SessionFactory) getServletContext().getAttribute("sessionFactory");

    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/

        /*Alia Mahmoud*/

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


        HttpSession userSession = request.getSession(false);
        userSession.setAttribute("editProfile", "false");
        request.getServletContext()
                .getRequestDispatcher("/view/customer/jsp/profile.jsp")
                .forward(request,response);
        /*Amer Salah*/

        /*Nouran Habib*/

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/

        /*Alia Mahmoud*/

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

        HttpSession userSession = request.getSession(false);
        userSession.setAttribute("editProfile", "true");
        request.getServletContext()
                .getRequestDispatcher("/view/customer/jsp/profile.jsp")
                .forward(request,response);

        /*Amer Salah*/

        /*Nouran Habib*/

    }
}
