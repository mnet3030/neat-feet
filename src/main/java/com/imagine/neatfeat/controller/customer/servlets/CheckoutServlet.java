package com.imagine.neatfeat.controller.customer.servlets;

import com.google.gson.Gson;
import com.imagine.neatfeat.model.dal.entity.Category;
import com.imagine.neatfeat.model.dal.entity.User;
import com.imagine.neatfeat.model.dal.servletsdaos.CheckoutDao;
import com.imagine.neatfeat.model.dal.servletsdaos.ResultDao;
import com.imagine.neatfeat.model.dal.utility.CheckoutUtility;
import com.imagine.neatfeat.model.dal.utilityPojos.Item;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.json.simple.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class CheckoutServlet extends HttpServlet {


    private CheckoutUtility checkoutUtility ;
    ResultDao resultDao;
    Session session;
    private List<Item> cart;
    private List<Item> newCart;
    private int newTotalPrice;
    private int sizeCart;

    @Override
    public void init() throws ServletException {
        checkoutUtility=new CheckoutUtility();
        resultDao = new ResultDao();
        session = (Session)getServletContext().getAttribute("session");
    }



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/

        HttpSession userSession=request.getSession(false);
        if(userSession!=null && userSession.getAttribute("user") != null) {


            List<Category> mainCategories = resultDao.getMainCategories(session);
            request.setAttribute("mainCategories", mainCategories);

            cart = (List<Item>) request.getSession().getAttribute("cartProduct");
            newTotalPrice = checkoutUtility.totalPrice(cart);
            request.getSession().setAttribute("totalPrice", newTotalPrice);


            sizeCart = checkoutUtility.sizeCart(cart);
            request.getSession().setAttribute("sizeCart", sizeCart);

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

            cart = (List<Item>) request.getSession(false).getAttribute("cartProduct");
            newTotalPrice = checkoutUtility.totalPrice(cart);
            request.getSession(false).setAttribute("totalPrice", newTotalPrice);
            sizeCart = checkoutUtility.sizeCart(cart);
            request.getSession(false).setAttribute("sizeCart", sizeCart);


            String action = request.getParameter("action");
            switch (action) {
                case "increase":

                    newCart = checkoutUtility.changeQuantity(request.getParameter("productid"), "+", cart);
                    request.getSession(false).setAttribute("cartProduct", newCart);

                    sendToClient(request, response, newCart);

                    break;
                case "decrease":

                    newCart = checkoutUtility.changeQuantity(request.getParameter("productid"), "-", cart);
                    request.getSession(false).setAttribute("cartProduct", newCart);


                    sendToClient(request, response, newCart);


                    break;
                case "delete":

                    newCart = checkoutUtility.removeFromCart(request.getParameter("productid"), cart);
                    request.getSession(false).setAttribute("cartProduct", newCart);

                    int newTotalPrice = checkoutUtility.totalPrice(newCart);
                    request.getSession(false).setAttribute("totalPrice", newTotalPrice);

                    sizeCart = checkoutUtility.sizeCart(newCart);
                    request.getSession(false).setAttribute("sizeCart", sizeCart);

                    sendToClient(request, response, newCart);

                    break;
                case "buy":
                    Session session= (Session) request.getServletContext().getAttribute("session");
//                    SessionFactory sessionFactory = new Configuration().configure("cfg/hibernate.cfg.xml").buildSessionFactory();
//                    Session session = sessionFactory.openSession();
                    CheckoutDao checkoutDao=new CheckoutDao();
                    //session.beginTransaction();
                   List<Item> mycart= (List<Item>) request.getSession(false).getAttribute("cartProduct");
                    String result=checkoutDao.buyCart(mycart,session,user);
                    session.getTransaction().commit();
                    switch (result){
                        case "success":
                            request.getSession(false).setAttribute("cartProduct", newCart);
                            request.getSession(false).setAttribute("sizeCart",0);
                            response.getWriter().println("Done");
                            break;
                        case "Error in credit limit"   :
                            response.getWriter().println("Error in credit limit");
                            break;
                        case "Error in quantity":
                            response.getWriter().println("Error in quantity");
                            break;
                    }

            }
        }else{
           // request.getRequestDispatcher("login").forward(request,response);
        }




        /*Alia Mahmoud*/

        /*Amer Salah*/

        /*Nouran Habib*/

    }


    public void sendToClient(HttpServletRequest request, HttpServletResponse response,List<Item> newCart) throws IOException {

        int newTotalPrice=checkoutUtility.totalPrice(newCart);
        request.getSession(false).setAttribute("totalPrice",newTotalPrice);


        sizeCart=checkoutUtility.sizeCart(newCart);
        request.getSession(false).setAttribute("sizeCart",sizeCart);


        JSONObject obj = new JSONObject();
        obj.put("size",sizeCart);
        obj.put("totalPrice",newTotalPrice);
        response.getWriter().println(obj.toString());


    }
}
