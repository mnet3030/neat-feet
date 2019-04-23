package com.imagine.neatfeat.controller.customer.servlets;

import com.imagine.neatfeat.model.dal.dao.ProductDAO;
import com.imagine.neatfeat.model.dal.dao.SingletonSessionFactory;
import com.imagine.neatfeat.model.dal.entity.Category;
import com.imagine.neatfeat.model.dal.entity.Product;
import com.imagine.neatfeat.model.dal.entity.User;
import com.imagine.neatfeat.model.dal.servletsdaos.LoginDao;
import com.imagine.neatfeat.model.dal.servletsdaos.ResultDao;
import com.imagine.neatfeat.model.dal.utility.CheckoutUtility;
import com.imagine.neatfeat.model.dal.utilityPojos.Item;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.UUID;

public class ProductServlet extends HttpServlet {
    ResultDao resultDao;
    SessionFactory sessionFactory;
    @Override
    public void init() throws ServletException {
        resultDao = new ResultDao();
        sessionFactory = SingletonSessionFactory.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        HttpSession httpSession=request.getSession(false);
        if(httpSession!=null && httpSession.getAttribute("user")!=null){
            request.setAttribute("loggedIn", true);
            request.setAttribute("user", httpSession.getAttribute("user"));
        }else{
            request.setAttribute("loggedIn", false);
        }
        /*Amr El Kady*/

        /*Alia Mahmoud*/

        /*Amer Salah*/

        if(request.getParameter("id") != null) {

            Session session = sessionFactory.getCurrentSession();

            Transaction tx = null;

            try {
                tx = session.beginTransaction();

                String productId = request.getParameter("id");
                Product product = new Product();
                ProductDAO productDao = new ProductDAO(session);


                UUID uuid = UUID.fromString(productId);
                product = productDao.getByPrimaryKey(uuid);

                if(product != null){
                    request.setAttribute("product", product);

                    List<Item> cart= (List<Item>) request.getSession(false).getAttribute("cartProduct");
                    CheckoutUtility checkoutUtility=new CheckoutUtility(session);

                    if(cart != null) {
                        int sizeCart = checkoutUtility.sizeCart(cart);
                        request.getSession().setAttribute("sizeCart", sizeCart);
                    }else{
                        request.getSession().setAttribute("sizeCart", 0);
                    }

                    ResultDao resultDao = new ResultDao();
                    List<Category> mainCategories = resultDao.getMainCategories(session);
                    request.setAttribute("mainCategories", mainCategories);
                    request.getRequestDispatcher("/view/customer/jsp/product.jsp").forward(request,response);

                    tx.commit();
                }
                else{
                    // TODO: Error Page
                    tx.commit();
                    response.sendRedirect("error");

                }
            }catch (Exception ex) {
                ex.printStackTrace();
                tx.rollback();
            }
        }

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
