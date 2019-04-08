package com.imagine.neatfeat.controller.customer.servlets;

import com.imagine.neatfeat.model.dal.Convertors.UserConvertor;
import com.imagine.neatfeat.model.dal.dao.UserDAO;
import com.imagine.neatfeat.model.dal.entity.User;
import com.imagine.neatfeat.model.dal.servletDAO.UserBean;
import org.apache.commons.beanutils.BeanUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@MultipartConfig
public class profileManipulation extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/

        /*Alia Mahmoud*/

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

        HttpSession userSession = request.getSession(false);
        userSession.setAttribute("editProfile", "true");
        request.getServletContext()
                .getRequestDispatcher("/view/customer/jsp/profile.jsp")
                .forward(request,response);

        /*Amer Salah*/

        /*Nouran Habib*/

    }
}
