package com.imagine.neatfeat.model.dal.utility;

import com.imagine.neatfeat.model.dal.entity.Category;
import com.imagine.neatfeat.model.dal.entity.User;
import com.imagine.neatfeat.model.dal.servletsdaos.CheckoutDao;
import com.imagine.neatfeat.model.dal.servletsdaos.ResultDao;
import com.imagine.neatfeat.model.dal.utilityPojos.Item;
import org.hibernate.Session;
import org.json.simple.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class CheckoutServices {
    Session session;
    ResultDao resultDao;
    private CheckoutUtility checkoutUtility;


    public CheckoutServices(Session session){
        this.session=session;
        resultDao = new ResultDao();
        checkoutUtility=new CheckoutUtility(session);
    }


    public List<Item> getSessionAttr(HttpServletRequest request, HttpServletResponse response) {


        List<Category> mainCategories = resultDao.getMainCategories(session);
        request.setAttribute("mainCategories", mainCategories);

       List<Item> cart = (List<Item>) request.getSession().getAttribute("cartProduct");
       int  newTotalPrice = checkoutUtility.totalPrice(cart, session);
        request.getSession(false).setAttribute("totalPrice", newTotalPrice);


       int sizeCart = checkoutUtility.sizeCart(cart);
        request.getSession(false).setAttribute("sizeCart", sizeCart);
        return cart;
    }

    public void updateSessionAtt(HttpServletRequest request, HttpServletResponse response, List<Item> newCart) throws IOException {

        request.getSession(false).setAttribute("cartProduct", newCart);
        int newTotalPrice=checkoutUtility.totalPrice(newCart, session);
        request.getSession(false).setAttribute("totalPrice",newTotalPrice);


        int sizeCart=checkoutUtility.sizeCart(newCart);
        request.getSession(false).setAttribute("sizeCart",sizeCart);


        JSONObject obj = new JSONObject();
        obj.put("size",sizeCart);
        obj.put("totalPrice",newTotalPrice);
        response.getWriter().println(obj.toString());

    }


    public void doAction(HttpServletRequest request, HttpServletResponse response, List<Item> newCart, String action) throws IOException, ServletException {

        switch (action) {
            case "increase":
                newCart = checkoutUtility.changeQuantity(request.getParameter("productid"), "+", newCart);
                updateSessionAtt(request, response, newCart);

                break;
            case "decrease":

                newCart = checkoutUtility.changeQuantity(request.getParameter("productid"), "-", newCart);
                updateSessionAtt(request, response, newCart);

                break;
            case "delete":

                newCart = checkoutUtility.removeFromCart(request.getParameter("productid"), newCart);
                updateSessionAtt(request, response, newCart);

                break;
            case "buy":

                Session session= (Session) request.getServletContext().getAttribute("session");
                CheckoutDao checkoutDao=new CheckoutDao();
                List<Item> mycart= (List<Item>) request.getSession(false).getAttribute("cartProduct");
                User user= (User) request.getSession(false).getAttribute("user");
                session.beginTransaction();
                String result=checkoutDao.buyCart(mycart,session,user);
                session.getTransaction().commit();
                switch (result){
                    case "success":
                        mycart=null;
                        request.getSession(false).setAttribute("cartProduct", mycart);
                        request.getSession(false).setAttribute("sizeCart",new Integer(0));
                        //response.getWriter().println("Done");
                        request.getRequestDispatcher("home").forward(request,response);
                        break;
                    case "Error in credit limit"   :
                        response.getWriter().println("Error in credit limit");
                        break;
                    case "Error in quantity":
                        response.getWriter().println("Error in quantity");
                        break;
                }
                break;

        }
    }
}
