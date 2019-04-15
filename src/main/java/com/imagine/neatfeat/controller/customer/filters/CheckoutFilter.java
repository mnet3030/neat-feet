package com.imagine.neatfeat.controller.customer.filters;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class CheckoutFilter extends HttpFilter {
    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain) throws IOException, ServletException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/

        HttpSession session=req.getSession(false);
        if(session==null && session.getAttribute("user")!=null){
            req.getRequestDispatcher("login").forward(req,res);
        }else{
            chain.doFilter(req, res);
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
