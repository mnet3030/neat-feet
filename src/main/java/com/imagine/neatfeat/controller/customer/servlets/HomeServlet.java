package com.imagine.neatfeat.controller.customer.servlets;

import com.imagine.neatfeat.model.dal.entity.Product;
import com.imagine.neatfeat.model.dal.utility.ProductUtility;
import com.imagine.neatfeat.model.dal.utility.ProductUtility;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Random;

public class HomeServlet extends HttpServlet {


    ProductUtility productUtility;
    @Override
    public void init() throws ServletException {
       productUtility=new ProductUtility();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/

        List<Product> allProduct=productUtility.getAll();
        //allProduct.forEach();
        Collections.shuffle(allProduct,new Random());
        request.getSession().setAttribute("allProducts",allProduct);

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/view/customer/jsp/index.jsp");
        dispatcher.forward(request, response);


        /*Alia Mahmoud*/

        /*Amer Salah*/

        /*Nouran Habib*/

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/



        /*Alia Mahmoud*/

        /*Amer Salah*/

        /*Nouran Habib*/

    }
}
