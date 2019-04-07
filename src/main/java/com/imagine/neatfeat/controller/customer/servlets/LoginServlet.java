package com.imagine.neatfeat.controller.customer.servlets;

import com.imagine.neatfeat.model.dal.dao.UserDAO;
import com.imagine.neatfeat.model.dal.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/

        /*Alia Mahmoud*/

        request.getRequestDispatcher("/view/customer/html/Login.jsp").include(request, response);
        /*Amer Salah*/

        /*Nouran Habib*/

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/

        /*Alia Mahmoud*/

        Session session = (Session)getServletContext().getAttribute("session");
        //------------------------------------------------------------------
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        UserDAO dao = new UserDAO(session);
        User user  = dao.athunticateUser(email,password);
        if(user != null){
            HttpSession userSession = request.getSession(true);
            userSession.setAttribute("user", user);
            response.sendRedirect("home");
        }
        else{
            request.setAttribute("mail",email);
            request.setAttribute("invalid","invalid");
            request.getServletContext()
                    .getRequestDispatcher("/view/customer/html/Login.jsp")
                    .include(request,response);

        }

        /*Amer Salah*/

        /*Nouran Habib*/

    }
}
