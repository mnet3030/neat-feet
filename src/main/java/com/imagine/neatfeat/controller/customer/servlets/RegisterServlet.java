package com.imagine.neatfeat.controller.customer.servlets;

import com.imagine.neatfeat.model.dal.Convertors.UserConvertor;
import com.imagine.neatfeat.model.dal.dao.UserDAO;
import com.imagine.neatfeat.model.dal.entity.Category;
import com.imagine.neatfeat.model.dal.entity.Country;
import com.imagine.neatfeat.model.dal.entity.User;
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
import java.util.regex.Matcher;
import java.util.regex.Pattern;

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
            User user = UserConvertor.covertUserBeanToUser(bean, session);
            //----------------------------------------------------------------------
            RegisterDao registerDao = new RegisterDao();
            User checkUser = registerDao.getUserByEmail(session, user.getEmail());
            if(checkUser==null){
                String pattern = "[a-zA-Z]([a-zA-Z]|[0-9])+@neatfeet\\.com";
                // Create a Pattern object
                Pattern r = Pattern.compile(pattern);
                // Now create matcher object.
                Matcher m = r.matcher(user.getEmail());
                if(m.find()){
                    request.setAttribute("NotAllowed","true");
                    request.setAttribute("bean",bean);
                    session.getTransaction().commit();
                    request.getServletContext()
                            .getRequestDispatcher("/view/customer/jsp/register.jsp")
                            .include(request,response);
                }
                else
                {
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
                }
            }else {
                request.setAttribute("alreadyRegistered","true");
                request.setAttribute("bean",bean);
                session.getTransaction().commit();
                request.getServletContext()
                        .getRequestDispatcher("/view/customer/jsp/register.jsp")
                        .include(request, response);
            }
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        /*Amer Salah*/

        /*Nouran Habib*/

    }
}
