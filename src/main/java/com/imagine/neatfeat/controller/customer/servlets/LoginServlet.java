package com.imagine.neatfeat.controller.customer.servlets;

import com.imagine.neatfeat.model.dal.entity.User;
import com.imagine.neatfeat.model.dal.servletsdaos.LoginDao;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginServlet extends HttpServlet {

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

        request.getRequestDispatcher("view/customer/jsp/Login.jsp").include(request, response);
        /*Amer Salah*/

        /*Nouran Habib*/

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/

        /*Alia Mahmoud*/

        Session session = sessionFactory.getCurrentSession();
        session.beginTransaction();
        //------------------------------------------------------------------
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        LoginDao dao = new LoginDao();
        User user  = dao.AuthenticateUser(session, email, password);
        session.getTransaction().commit();
        if(user != null){
            HttpSession userSession = request.getSession(true);
            userSession.setAttribute("user", user);
            response.sendRedirect("home");
        }
        else{
            request.setAttribute("mail",email);
            request.setAttribute("invalid","invalid");
            request.getServletContext()
                    .getRequestDispatcher("/view/customer/jsp/Login.jsp")
                    .include(request,response);
        }

        /*Amer Salah*/

        /*Nouran Habib*/

    }
}
