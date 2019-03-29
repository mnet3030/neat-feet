package com.imagine.neatfeat.controller.customer.filters;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import  com.imagine.neatfeat.model.dal.servletDAO.UserBean;
import org.apache.commons.beanutils.BeanUtils;

public class RegistrationFilter extends HttpFilter {
    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain) throws IOException, ServletException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/

        /*Alia Mahmoud*/
        UserBean bean=new UserBean();
        try{
            BeanUtils.populate(bean, req.getParameterMap());
            req.setAttribute("UserData",bean);
            chain.doFilter(req, res);
        }catch(Exception e)
        {
            e.printStackTrace();
        }

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
}
