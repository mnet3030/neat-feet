package com.imagine.neatfeat.controller.customer.servlets;

import com.imagine.neatfeat.model.dal.Convertors.UserConvertor;
import com.imagine.neatfeat.model.dal.dao.SingletonSessionFactory;
import com.imagine.neatfeat.model.dal.dao.UserDAO;
import com.imagine.neatfeat.model.dal.entity.Category;
import com.imagine.neatfeat.model.dal.entity.Country;
import com.imagine.neatfeat.model.dal.entity.Userrr;
import com.imagine.neatfeat.model.dal.dto.UserBean;
import com.imagine.neatfeat.model.dal.servletsdaos.RegisterDao;
import com.imagine.neatfeat.model.dal.servletsdaos.ResultDao;
import org.apache.commons.beanutils.BeanUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@MultipartConfig
public class RegisterServlet extends HttpServlet {
    SessionFactory sessionFactory;

    @Override
    public void init() throws ServletException {
        sessionFactory = SingletonSessionFactory.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/
        Session session = sessionFactory.getCurrentSession();
        session.beginTransaction();
        RegisterDao registerDao = new RegisterDao();
        List<Country> allCountries = registerDao.getAllCountries(session);

        request.setAttribute("allCountries" ,allCountries);

        /*Amr El Kady*/

        ResultDao resultDao = new ResultDao();
        List<Category> mainCategories = resultDao.getMainCategories(session);
        request.setAttribute("mainCategories", mainCategories);
        session.getTransaction().commit();

        request.getServletContext()
                .getRequestDispatcher("/view/customer/jsp/register.jsp")
                .include(request,response);

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
            Userrr userrr = UserConvertor.covertUserBeanToUser(bean, session);
            //----------------------------------------------------------------------
            RegisterDao registerDao = new RegisterDao();
            Userrr checkUserrr = registerDao.getUserByEmail(session, userrr.getEmail());
            if(checkUserrr ==null){
                UserDAO userDAO = new UserDAO(session);
                Userrr addedUserrr = userDAO.merge(userrr);
                //--------------------------------------------
                request.setAttribute("userrr" , addedUserrr);
                request.getServletContext()
                        .getRequestDispatcher("/getimageurl")
                        .include(request,response);
                //----------------------------------------------
                addedUserrr = (Userrr)request.getAttribute("userrr");
                userDAO.update(addedUserrr);
                session.getTransaction().commit();
                response.sendRedirect( "login");
            }else {
                request.setAttribute("alreadyRegistered","true");
                request.setAttribute("bean",bean);
                session.getTransaction().commit();
                request.getServletContext()
                        .getRequestDispatcher("/register")
                        .include(request,response);
            }
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        /*Amer Salah*/

        /*Nouran Habib*/

    }
}
