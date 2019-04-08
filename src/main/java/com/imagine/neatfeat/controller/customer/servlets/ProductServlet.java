package com.imagine.neatfeat.controller.customer.servlets;

import com.imagine.neatfeat.model.dal.entity.Category;
import com.imagine.neatfeat.model.dal.entity.Product;
import com.imagine.neatfeat.model.dal.overDao.FasadProductDao;
import com.imagine.neatfeat.model.dal.servletsdaos.ResultDao;
import com.imagine.neatfeat.model.dal.utility.CheckoutUtility;
import com.imagine.neatfeat.model.dal.utility.ProductUtility;
import com.imagine.neatfeat.model.dal.utilityPojos.Item;
import org.hibernate.Session;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.UUID;

public class ProductServlet extends HttpServlet {
    ProductUtility productUtility;
    ResultDao resultDao;
    Session session;
    @Override
    public void init() throws ServletException {
        productUtility=new ProductUtility();
        resultDao = new ResultDao();
        session = (Session)getServletContext().getAttribute("session");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/

        /*Alia Mahmoud*/

        /*Amer Salah*/

        if(request.getParameter("id") != null) {

            String productId = request.getParameter("id");
            Product product = new Product();
            FasadProductDao productDao = new FasadProductDao();

            UUID uuid = UUID.fromString(productId);
            product = productDao.getProductByID(uuid);


            request.setAttribute("product", product);

            List<Item> cart= (List<Item>) request.getSession().getAttribute("cartProduct");
            CheckoutUtility checkoutUtility=new CheckoutUtility();

            if(cart != null) {
                int sizeCart = checkoutUtility.sizeCart(cart);
                request.getSession().setAttribute("sizeCart", sizeCart);
            }else{
                request.getSession().setAttribute("sizeCart", 0);
            }

            List<Product> allProduct=productUtility.getAll();
            //allProduct.forEach();
            Collections.shuffle(allProduct,new Random());
            request.setAttribute("allProducts",allProduct);


        }
        Session session = (Session)getServletContext().getAttribute("session");
        ResultDao resultDao = new ResultDao();
        List<Category> mainCategories = resultDao.getMainCategories(session);
        request.setAttribute("mainCategories", mainCategories);

        RequestDispatcher rd = request.getRequestDispatcher("/view/customer/jsp/product.jsp");
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
