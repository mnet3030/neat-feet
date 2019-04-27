package com.imagine.neatfeat.controller.admin.filters;

import com.imagine.neatfeat.model.dal.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class MustLoggedFilter extends HttpFilter {

    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain) throws IOException, ServletException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/
        SessionFactory sessionFactory = (SessionFactory) req.getServletContext().getAttribute("sessionFactory");
        Session sessionHib = sessionFactory.getCurrentSession();

        HttpSession session=req.getSession(false);
        Object userObject = session.getAttribute("user");
        if(session!=null && userObject!=null){
            sessionHib.beginTransaction();
            User user = (User)userObject;
            User user1 = sessionHib.get(User.class, ((User) userObject).getId());
            if(user1.getUserRoles().getDescription().equals("admin")) {
                sessionHib.getTransaction().commit();
                chain.doFilter(req, res);
            }
            else {
                sessionHib.getTransaction().commit();
                res.sendRedirect("login");
            }
        }else{
            res.sendRedirect("login");
        }


        /*Alia Mahmoud*/

        /*Amer Salah*/

        /*Nouran Habib*/

    }

    @Override
    public void init(FilterConfig config) throws ServletException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/



        /*Alia Mahmoud*/

        /*Amer Salah*/

        /*Nouran Habib*/

    }

    @Override
    public void destroy() {

    }
}
