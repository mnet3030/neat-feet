package com.imagine.neatfeat.controller.customer.servlets;

import com.imagine.neatfeat.model.dal.entity.Category;
import com.imagine.neatfeat.model.dal.entity.User;
import com.imagine.neatfeat.model.dal.servletsdaos.LoginDao;
import com.imagine.neatfeat.model.dal.servletsdaos.ResultDao;
import com.imagine.neatfeat.model.dal.utility.CheckoutServices;
import com.imagine.neatfeat.model.dal.utilityPojos.Item;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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
        Session session = sessionFactory.getCurrentSession();
        session.beginTransaction();
        ResultDao resultDao = new ResultDao();
        List<Category> mainCategories = resultDao.getMainCategories(session);
        request.setAttribute("mainCategories", mainCategories);
        session.getTransaction().commit();


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

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Transaction tx = null;

        try {
            tx = session.beginTransaction();

            LoginDao dao = new LoginDao();
            User user  = dao.AuthenticateUser(session, email, password);
            if(user != null){

                LoginDao loginDao = new LoginDao();
                List<Item> cart = loginDao.getAndDeleteCartFromDatabase(session, user);

                HttpSession userSession = request.getSession(true);
                userSession.setAttribute("user", user);
                userSession.setAttribute("fromLogin", true);
                if(cart==null){
                    List<Item> emptyCart =new ArrayList<>();
                    userSession.setAttribute("cartProduct", emptyCart);
                    tx.commit();
                    response.sendRedirect("home");

                }else {
                    userSession.setAttribute("cartProduct", cart);
                    tx.commit();
                    response.sendRedirect("home");
                }
            }
            else{
                request.setAttribute("mail",email);
                request.setAttribute("invalid","invalid");
                tx.commit();
                request.getServletContext()
                        .getRequestDispatcher("/view/customer/jsp/Login.jsp")
                        .include(request,response);
            }
        }catch (Exception ex) {
            ex.printStackTrace();
            tx.rollback();
        }

        //------------------------------------------------------------------




        /*Amer Salah*/

        /*Nouran Habib*/

    }
}
