package com.imagine.neatfeat.controller.customer.servlets;

import com.imagine.neatfeat.model.dal.dao.SingletonSessionFactory;
import com.imagine.neatfeat.model.dal.dao.UserDAO;
import com.imagine.neatfeat.model.dal.entity.Userrr;
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
        sessionFactory = SingletonSessionFactory.getInstance();
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
        Userrr userrr = (Userrr)userSession.getAttribute("userrr");
        //-----------------------------------------------------------------------
        UserDAO dao = new UserDAO(session);
        //-----------------------------------------------------------------------

        userrr.setName(userDataBean.getName());
        userrr.setCreditLimit(userDataBean.getCreditLimit());
        userrr.setPhone(userDataBean.getPhone());
        userrr.setAddress(userDataBean.getAddress());
        userrr.setJob(userDataBean.getJob());
        //----------------------------------------------------------------------
        request.setAttribute("userrr" , userrr);
        request.getServletContext()
                .getRequestDispatcher("/getimageurl")
                .include(request,response);
        //----------------------------------------------
        userrr = (Userrr)request.getAttribute("userrr");
        dao.update(userrr);
        session.getTransaction().commit();
        //-----------------------------------------------------------------------
        response.sendRedirect(request.getContextPath()+"/profile");

        /*Amer Salah*/

        /*Nouran Habib*/

    }
}
