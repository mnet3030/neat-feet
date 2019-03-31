package com.imagine.neatfeat.controller.customer.servlets;

import com.imagine.neatfeat.model.dal.Convertors.UserConvertor;
import com.imagine.neatfeat.model.dal.dao.UserDAO;
import com.imagine.neatfeat.model.dal.entity.Country;
import com.imagine.neatfeat.model.dal.entity.User;
import com.imagine.neatfeat.model.dal.servletDAO.UserBean;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import javax.servlet.Registration;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;

@MultipartConfig
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/

        /*Alia Mahmoud*/

        /*Amer Salah*/

        /*Nouran Habib*/

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/

        /*Alia Mahmoud*/

        //----------------------------------------------------------------------
        SessionFactory sessionFactory = new Configuration()
                .configure("cfg/hibernate.cfg.xml").buildSessionFactory();
        Session session = sessionFactory.openSession();
        //----------------------------------------------------------------------
        UserBean userBean = (UserBean) request.getAttribute("UserData");
        User user = UserConvertor.covertUserBeanToUser(userBean);


        //----------------------------------------------------------------------

        UserDAO dao = new UserDAO(session);
        User checkUser = dao.getUserByEmail(user.getEmail());
        if(checkUser==null){
            dao.persist(user);
            response.sendRedirect("view/customer/html/Login.jsp");
        }else {
            request.setAttribute("alreadyRegistered","true");
            request.getServletContext()
                    .getNamedDispatcher("Registration")
                    .include(request,response);
        }

        session.close();
        sessionFactory.close();


        /*Amer Salah*/

        /*Nouran Habib*/

    }
}
