package com.imagine.neatfeat.controller.customer.servlets;

import com.imagine.neatfeat.controller.services.PaginationService;
import com.imagine.neatfeat.model.dal.entity.Category;
import com.imagine.neatfeat.model.dal.servletsdaos.ResultDao;
import com.imagine.neatfeat.model.dal.utility.CheckoutUtility;
import com.imagine.neatfeat.model.dal.utilityPojos.Item;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

public class ResultServlet extends HttpServlet {
    SessionFactory sessionFactory;
    @Override
    public void init() throws ServletException {
        sessionFactory = (SessionFactory) getServletContext().getAttribute("sessionFactory");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        Session session = sessionFactory.getCurrentSession();
        session.beginTransaction();
        ResultDao resultDao = new ResultDao();

        String searchByCatString = request.getParameter("cat");
        String searchString = request.getParameter("search");
        String pageNo = request.getParameter("pageNo");


        List<Category> mainCategories = resultDao.getMainCategories(session);
        PaginationService paginationService = new PaginationService();
        Map paginationMap = paginationService.getProductsByParameters(session, searchString, searchByCatString, pageNo);

        request.setAttribute("mainCategories", mainCategories);
        request.setAttribute("products", paginationMap.get("entities"));
        request.setAttribute("noOfPages", paginationMap.get("noOfPages"));
        request.setAttribute("pageNo", paginationMap.get("pageNumber"));
        request.setAttribute("categoryDetails", paginationMap.get("categoryDetails"));



        List<Item> cart= (List<Item>) request.getSession().getAttribute("cartProduct");
        CheckoutUtility checkoutUtility=new CheckoutUtility(session);

        if(cart != null) {
            int sizeCart = checkoutUtility.sizeCart(cart);
            request.getSession().setAttribute("sizeCart", sizeCart);
        }else{
            request.getSession().setAttribute("sizeCart", 0);
        }

        session.getTransaction().commit();

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/customer/jsp/result.jsp");
        requestDispatcher.include(request, response);


        /*Amr El Kady*/

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
