package com.imagine.neatfeat.controller.customer.servlets;

import com.imagine.neatfeat.model.dal.Convertors.UserConvertor;
import com.imagine.neatfeat.model.dal.dao.UserDAO;
import com.imagine.neatfeat.model.dal.entity.Country;
import com.imagine.neatfeat.model.dal.entity.User;
import com.imagine.neatfeat.model.dal.servletDAO.UserBean;
import com.imagine.neatfeat.model.dal.servletsdaos.RegisterDao;
import org.apache.commons.beanutils.BeanUtils;
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
import java.util.List;

@MultipartConfig
public class RegisterServlet extends HttpServlet {
    SessionFactory sessionFactory;

    @Override
    public void init() throws ServletException {
        sessionFactory = (SessionFactory) getServletContext().getAttribute("sessionFactory");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/
        Session session = sessionFactory.getCurrentSession();
        session.beginTransaction();
        RegisterDao registerDao = new RegisterDao();
        List<Country> allCountries = registerDao.getAllCountries(session);

        request.setAttribute("allCountries" ,allCountries);
        request.getServletContext()
                .getRequestDispatcher("/view/customer/jsp/register.jsp")
                .include(request,response);

        session.getTransaction().commit();
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

        UserBean bean=new UserBean();
        try{
            BeanUtils.populate(bean, request.getParameterMap());

            //----------------------------------------------------------------------
            Session session = sessionFactory.getCurrentSession();
            session.beginTransaction();
            //----------------------------------------------------------------------
            User user = UserConvertor.covertUserBeanToUser(bean, session);
            //----------------------------------------------------------------------
            RegisterDao registerDao = new RegisterDao();
            User checkUser = registerDao.getUserByEmail(session, user.getEmail());
            if(checkUser==null){
                UserDAO userDAO = new UserDAO(session);
                User addedUser = userDAO.merge(user);
                //--------------------------------------------
                request.setAttribute("user" , addedUser);
                request.getServletContext()
                        .getRequestDispatcher("/getimageurl")
                        .include(request,response);
                //----------------------------------------------
                addedUser = (User)request.getAttribute("user");
                userDAO.update(addedUser);
                session.getTransaction().commit();
                response.sendRedirect( "login");
            }else {
                request.setAttribute("alreadyRegistered","true");
                request.setAttribute("bean",bean);
                request.getServletContext()
                        .getRequestDispatcher("/register")
                        .include(request,response);

                session.getTransaction().commit();
            }
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        /*Amer Salah*/

        /*Nouran Habib*/

    }
}
