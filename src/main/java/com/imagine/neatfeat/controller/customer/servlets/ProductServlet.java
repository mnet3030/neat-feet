package com.imagine.neatfeat.controller.customer.servlets;

import com.imagine.neatfeat.model.dal.entity.Product;
import com.imagine.neatfeat.model.dal.overDao.FasadProductDao;
import com.imagine.neatfeat.model.dal.utility.CheckoutUtility;
import com.imagine.neatfeat.model.dal.utilityPojos.Item;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.rmi.server.UID;
import java.util.List;
import java.util.UUID;

public class ProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/

        /*Alia Mahmoud*/

        /*Amer Salah*/

        String productId = request.getParameter("productid");
        Product product = new Product();
        FasadProductDao productDao =  new FasadProductDao();

        UUID uuid = UUID.fromString(productId);
        product = productDao.getProductByID(uuid);


        request.setAttribute("product" , product);


       List<Item> cart= (List<Item>) request.getSession().getAttribute("cartProduct");
        CheckoutUtility checkoutUtility=new CheckoutUtility();
        int sizeCart=checkoutUtility.sizeCart(cart);
        request.getSession().setAttribute("sizeCart",sizeCart);

        RequestDispatcher rd=request.getRequestDispatcher("/view/customer/jsp/product.jsp");
        rd.forward(request, response);


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
