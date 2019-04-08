package com.imagine.neatfeat.controller.customer.servlets;

import com.imagine.neatfeat.model.dal.dao.UserDAO;
import com.imagine.neatfeat.model.dal.entity.Category;
import com.imagine.neatfeat.model.dal.entity.User;
import com.imagine.neatfeat.model.dal.servletsdaos.ResultDao;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class LoginServlet extends HttpServlet {

    ResultDao resultDao;
    Session session;
    @Override
    public void init() throws ServletException {
         resultDao = new ResultDao();
         session = (Session)getServletContext().getAttribute("session");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/

        List<Category> mainCategories = resultDao.getMainCategories(session);
        request.setAttribute("mainCategories", mainCategories);

        /*Alia Mahmoud*/

        response.sendRedirect(request.getContextPath()+"/view/customer/html/Login.jsp");
        /*Amer Salah*/

        /*Nouran Habib*/

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/

        List<Category> mainCategories = resultDao.getMainCategories(session);
        request.setAttribute("mainCategories", mainCategories);
        /*Alia Mahmoud*/
        SessionFactory sessionFactory = new Configuration()
                .configure("cfg/hibernate.cfg.xml").buildSessionFactory();
        Session session = sessionFactory.openSession();
        //------------------------------------------------------------------
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        UserDAO dao = new UserDAO(session);
        User user  = dao.athunticateUser(email,password);
        if(user != null){
            String alia ="";
            alia.equals("");
            HttpSession userSession = request.getSession(true);
            userSession.setAttribute("user", user);
            userSession.setAttribute("loggedin","ture");
            response.sendRedirect(request.getContextPath()+"/home");
        }
        else{
            request.setAttribute("mail",email);
            request.setAttribute("invalid","invalid");
            request.getServletContext()
                    .getRequestDispatcher(request.getContextPath()+"/view/customer/html/Login.jsp")
                    .forward(request,response);

        }
        session.close();
        sessionFactory.close();

        /*Amer Salah*/

        /*Nouran Habib*/

    }
}
