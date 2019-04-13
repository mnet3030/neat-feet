package com.imagine.neatfeat.controller.customer.servlets;

import com.imagine.neatfeat.model.dal.entity.User;
import com.imagine.neatfeat.model.dal.servletsdaos.CheckoutDao;
import com.imagine.neatfeat.model.dal.servletsdaos.ResultDao;
import com.imagine.neatfeat.model.dal.utility.CheckoutServices;
import com.imagine.neatfeat.model.dal.utility.CheckoutUtility;
import com.imagine.neatfeat.model.dal.utilityPojos.Item;
import org.hibernate.Session;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class CheckoutServlet extends HttpServlet {

    ResultDao resultDao;
    Session session;
    private List<Item> cart;
    private CheckoutServices checkoutServices;

    @Override
    public void init() throws ServletException {
        resultDao = new ResultDao();
        session = (Session)getServletContext().getAttribute("session");
        checkoutServices=new CheckoutServices(session);
    }



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/

        HttpSession userSession=request.getSession(false);
        if(userSession!=null && userSession.getAttribute("user") != null) {

            cart=checkoutServices.getSessionAttr(request,response);
            request.getServletContext().getRequestDispatcher("/view/customer/jsp/checkout.jsp")
                    .forward(request, response);
        }else{
            request.getServletContext().getRequestDispatcher("/login")
                    .forward(request, response);
        }

        /*Alia Mahmoud*/

        /*Amer Salah*/

        /*Nouran Habib*/

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/


        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        HttpSession userSession=request.getSession(false);
        User user= (User) userSession.getAttribute("user");
        if(userSession!=null &&  user!= null) {

            cart=checkoutServices.getSessionAttr(request,response);
            String action = request.getParameter("action");
            checkoutServices.doAction(request,response,cart,action);

        }else{
           request.getRequestDispatcher("/login").forward(request,response);
        }




        /*Alia Mahmoud*/

        /*Amer Salah*/

        /*Nouran Habib*/

    }



}
