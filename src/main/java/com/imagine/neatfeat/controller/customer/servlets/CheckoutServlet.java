package com.imagine.neatfeat.controller.customer.servlets;

import com.google.gson.Gson;
import com.imagine.neatfeat.model.dal.utility.CheckoutUtility;
import com.imagine.neatfeat.model.dal.utilityPojos.Item;
import org.json.simple.JSONObject;

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
    private int sizeCart;

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


        sizeCart=checkoutUtility.sizeCart(cart);
        request.getSession().setAttribute("sizeCart",sizeCart);

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

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");



        cart= (List<Item>) request.getSession().getAttribute("cartProduct");
        newTotalPrice=checkoutUtility.totalPrice(cart);
        request.getSession().setAttribute("totalPrice",newTotalPrice);
        sizeCart=checkoutUtility.sizeCart(cart);
        request.getSession().setAttribute("sizeCart",sizeCart);


        String action =request.getParameter("action");
        if(action.equals("increase")){

            newCart=checkoutUtility.changeQuantity(request.getParameter("productid"),"+",cart);
            request.getSession().setAttribute("cartProduct",newCart);

            sendToClient(request,response,newCart);

        }else if(action.equals("decrease")){

            newCart=checkoutUtility.changeQuantity(request.getParameter("productid"),"-",cart);
            request.getSession().setAttribute("cartProduct",newCart);


            sendToClient(request,response,newCart);



        }else if(action.equals("delete")){

            newCart=checkoutUtility.removeFromCart(request.getParameter("productid"),cart);
            request.getSession().setAttribute("cartProduct",newCart);

            int newTotalPrice=checkoutUtility.totalPrice(newCart);
            request.getSession().setAttribute("totalPrice",newTotalPrice);

            sizeCart=checkoutUtility.sizeCart(newCart);
            request.getSession().setAttribute("sizeCart",sizeCart);

            sendToClient(request,response,newCart);

        }




        /*Alia Mahmoud*/

        /*Amer Salah*/

        /*Nouran Habib*/

    }


    public void sendToClient(HttpServletRequest request, HttpServletResponse response,List<Item> newCart) throws IOException {

        int newTotalPrice=checkoutUtility.totalPrice(newCart);
        request.getSession().setAttribute("totalPrice",newTotalPrice);


        sizeCart=checkoutUtility.sizeCart(newCart);
        request.getSession().setAttribute("sizeCart",sizeCart);


        JSONObject obj = new JSONObject();
        obj.put("size",sizeCart);
        obj.put("totalPrice",newTotalPrice);
        response.getWriter().println(obj.toString());


    }
}
