package com.imagine.neatfeat.controller.customer.servlets;

import com.imagine.neatfeat.model.dal.utility.CheckoutUtility;
import com.imagine.neatfeat.model.dal.utility.Item;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class CheckoutServlet extends HttpServlet {


    CheckoutUtility checkoutUtility=new CheckoutUtility();
    List<Item> cart;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/



         cart= checkoutUtility.getCart();
         request.getSession().setAttribute("cart",cart);
         request.getServletContext().getRequestDispatcher("/view/customer/jsp/checkout.jsp")
                 .forward(request,response);
        /*Alia Mahmoud*/

        /*Amer Salah*/

        /*Nouran Habib*/

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/
        String action =request.getParameter("action");
        if(action.equals("increse")){

            List<Item> newCart=checkoutUtility.changeQuantity(request.getParameter("productid"),"+");
            request.getSession().setAttribute("cart",newCart);

            int newTotalPrice=checkoutUtility.totalPrice();
            response.getWriter().println(newTotalPrice);

        }else if(action.equals("decrease")){

            List<Item> newCart=checkoutUtility.changeQuantity(request.getParameter("productid"),"-");
            request.getSession().setAttribute("cart",newCart);

            int newTotalPrice=checkoutUtility.totalPrice();
            response.getWriter().println(newTotalPrice);

        }else if(action.equals("remove")){

        }
        /*Alia Mahmoud*/

        /*Amer Salah*/

        /*Nouran Habib*/

    }
}
