
package com.imagine.neatfeat.controller.customer.servlets;

import com.imagine.neatfeat.model.dal.dao.ProductDAO;
import com.imagine.neatfeat.model.dal.entity.Product;
import com.imagine.neatfeat.model.dal.utility.CheckoutUtility;
import com.imagine.neatfeat.model.dal.utilityPojos.Item;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;



public class ShoppingCart extends HttpServlet {
    SessionFactory sessionFactory;

    String test="i am new user";
    @Override
    public void init() throws ServletException {
        sessionFactory = (SessionFactory) getServletContext().getAttribute("sessionFactory");

        System.out.println(test);
    }




    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        boolean found = false;
        int quantity = 0;
        HttpSession session = req.getSession(false);
        List<Item> cartProducts= (List<Item>) session.getAttribute("cartProduct");
        Session sessionHib = sessionFactory.getCurrentSession();
        sessionHib.beginTransaction();

        Product product = new Product();
        ProductDAO productDao = new ProductDAO(sessionHib);

        String productId = req.getParameter("productID");
        UUID productuuid = UUID.fromString(productId);

        product = productDao.getByPrimaryKey(productuuid);

        updateCartSize(req,resp,sessionHib);

            for(int i=0 ; i<cartProducts.size() ; i++)
            {
                if(cartProducts.get(i).getProductId().equals(product.getId()))
                {

                    if(cartProducts.get(i).getQuantity() >= product.getQuantity())
                    {
                        cartProducts.get(i).setQuantity(product.getQuantity());

                        session.setAttribute("cartProduct" , cartProducts);
                        updateCartSize(req,resp,sessionHib);
                        found=true;
                        break;
                    }

                    else
                    {
                        quantity = cartProducts.get(i).getQuantity()+1;
                        cartProducts.get(i).setQuantity(quantity);
                        session.setAttribute("cartProduct" , cartProducts);
                        updateCartSize(req,resp,sessionHib);
                        found=true;
                        break;
                    }


                }
            }


            if(found==false)
            {
                cartProducts.add(new Item(productuuid , 1));

                session.setAttribute("cartProduct" , cartProducts);
                updateCartSize(req,resp,sessionHib);


            }

            PrintWriter out = resp.getWriter();
            out.print(req.getSession(false).getAttribute("sizeCart"));

            sessionHib.getTransaction().commit();}


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        doGet(req , resp);

    }

    public int updateCartSize(HttpServletRequest req, HttpServletResponse resp,Session sessionHib){


        List<Item> cart= (List<Item>) req.getSession().getAttribute("cartProduct");
        CheckoutUtility checkoutUtility=new CheckoutUtility(sessionHib);
        int sizeCart=checkoutUtility.sizeCart(cart);
        req.getSession(false).setAttribute("sizeCart",sizeCart);

        return sizeCart;
    }
}