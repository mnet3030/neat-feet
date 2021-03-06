package com.imagine.neatfeat.controller.customer.servlets;

import com.imagine.neatfeat.model.dal.dao.UserDAO;
import com.imagine.neatfeat.model.dal.entity.User;
import com.imagine.neatfeat.model.dal.dto.UserBean;
import org.apache.commons.beanutils.BeanUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@MultipartConfig
public class saveProfile  extends HttpServlet {
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

        /*Amer Salah*/

        /*Nouran Habib*/

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/

        /*Alia Mahmoud*/

        UserBean userDataBean=new UserBean();
        try{
            BeanUtils.populate(userDataBean, request.getParameterMap());
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        //----------------------------------------------------------------------
        Session session = sessionFactory.getCurrentSession();
        session.beginTransaction();

        //----------------------------------------------------------------------
        HttpSession userSession = request.getSession(true);
        User user = (User)userSession.getAttribute("user");
        //-----------------------------------------------------------------------
        UserDAO dao = new UserDAO(session);
        //-----------------------------------------------------------------------

        user.setName(userDataBean.getName());
        user.setCreditLimit(userDataBean.getCreditLimit());
        user.setPhone(userDataBean.getPhone());
        user.setAddress(userDataBean.getAddress());
        user.setJob(userDataBean.getJob());
        //----------------------------------------------------------------------
        request.setAttribute("user" , user);
        request.getServletContext()
                .getRequestDispatcher("/getimageurl")
                .include(request,response);
        //----------------------------------------------
        user = (User)request.getAttribute("user");
        dao.update(user);
        session.getTransaction().commit();
        //-----------------------------------------------------------------------
        response.sendRedirect(request.getContextPath()+"/profile");

        /*Amer Salah*/

        /*Nouran Habib*/

    }
}
