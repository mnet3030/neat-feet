package com.imagine.neatfeat.controller.customer.filters;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class JspHtmlFilter extends HttpFilter {
    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain) throws IOException, ServletException {
        /*Mahmoud Shereif*/
        req.getRequestDispatcher("/view/customer/jsp/404.jsp").forward(req,res);

        /*Amr El Kady*/

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
