package com.imagine.neatfeat.controller.customer.filters;

import com.imagine.neatfeat.model.dal.entity.Userrr;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


public class CartFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {


        HttpServletRequest request= (HttpServletRequest) req;
        HttpServletResponse responce= (HttpServletResponse) resp;

        System.out.println("Hello from filter ");
        HttpSession session=request.getSession();
        Userrr userrr = (Userrr) session.getAttribute("userrr");

        if(userrr == null){
            responce.getWriter().print("notlogged");
        }else{
            chain.doFilter(req,resp);
        }



    }

    public void init(FilterConfig config) throws ServletException {

    }

}
