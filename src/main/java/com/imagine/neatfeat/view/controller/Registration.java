package com.imagine.neatfeat.view.controller;


import com.imagine.neatfeat.model.dal.dao.CountryDAO;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

public class Registration extends  HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/

        /*Alia Mahmoud*/

        loadCoutries(request,response);

        /*Amer Salah*/

        /*Nouran Habib*/

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/

        /*Alia Mahmoud*/

        loadCoutries(request,response);

        /*Amer Salah*/

        /*Nouran Habib*/

    }
    private void loadCoutries(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        SessionFactory sessionFactory = new Configuration()
                .configure("cfg/hibernate.cfg.xml").buildSessionFactory();
        Session session = sessionFactory.openSession();
        //----------------------------------------------------------------------

        CountryDAO dao = new CountryDAO(session);
        List allCountries = dao.getAll();
        //--------------------------------------------------------
        request.setAttribute("allCountries" ,allCountries);
        request.getServletContext()
                .getRequestDispatcher("/view/customer/html/Registration.jsp")
                .forward(request,response);

        session.close();
        sessionFactory.close();
    }
}