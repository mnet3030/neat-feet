package com.imagine.neatfeat.controller.customer.servlets;

import com.imagine.neatfeat.model.dal.utility.CheckoutUtility;
import com.imagine.neatfeat.model.dal.utilityPojos.Item;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class CheckoutServlet extends HttpServlet {


    private CheckoutUtility checkoutUtility ;
    private List<Item> cart;
    private List<Item> newCart;
    private int newTotalPrice;

    @Override
    public void init() throws ServletException {
        checkoutUtility=new CheckoutUtility();
    }



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/




        cart= (List<Item>) request.getSession().getAttribute("cartProduct");
        newTotalPrice=checkoutUtility.totalPrice(cart);
        request.getSession().setAttribute("totalPrice",newTotalPrice);
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

        cart= (List<Item>) request.getSession().getAttribute("cartProduct");
        newTotalPrice=checkoutUtility.totalPrice(cart);
        request.getSession().setAttribute("totalPrice",newTotalPrice);

        String action =request.getParameter("action");
        if(action.equals("increase")){

            newCart=checkoutUtility.changeQuantity(request.getParameter("productid"),"+",cart);
            request.getSession().setAttribute("cartProduct",newCart);

            int newTotalPrice=checkoutUtility.totalPrice(cart);
            request.getSession().setAttribute("totalPrice",newTotalPrice);
            response.getWriter().println(newTotalPrice);

        }else if(action.equals("decrease")){

            newCart=checkoutUtility.changeQuantity(request.getParameter("productid"),"-",cart);
            request.getSession().setAttribute("cartProduct",newCart);

            int newTotalPrice=checkoutUtility.totalPrice(cart);
            request.getSession().setAttribute("totalPrice",newTotalPrice);
            response.getWriter().println(newTotalPrice);

        }else if(action.equals("delete")){

            newCart=checkoutUtility.removeFromCart(request.getParameter("productid"),cart);
            request.getSession().setAttribute("cartProduct",newCart);

            int newTotalPrice=checkoutUtility.totalPrice(cart);
            request.getSession().setAttribute("totalPrice",newTotalPrice);
            response.getWriter().println(newTotalPrice);

        }

        /*Alia Mahmoud*/

        /*Amer Salah*/

        /*Nouran Habib*/

    }
}
