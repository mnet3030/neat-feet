package com.imagine.neatfeat.model.dal.utility;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/cart")
public class cartservlettest  extends HttpServlet {

    CheckoutUtility checkoutUtility=new CheckoutUtility();
    List<Item> cart;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        cart= checkoutUtility.getCart();
        if(req.getSession().getAttribute("cart")==null) {
            req.getSession().setAttribute("cart", cart);
            req.getServletContext().getRequestDispatcher("/checkout")
                    .forward(req, resp);
        }else{
            req.getServletContext().getRequestDispatcher("/checkout")
                    .forward(req, resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        cart= checkoutUtility.getCart();
        if(req.getSession().getAttribute("cart")==null) {
            req.getSession().setAttribute("cart", cart);
            req.getServletContext().getRequestDispatcher("/checkout")
                    .forward(req, resp);
        }else{
            req.getServletContext().getRequestDispatcher("/checkout")
                    .forward(req, resp);
        }
    }
}
