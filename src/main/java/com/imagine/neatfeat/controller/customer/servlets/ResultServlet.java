package com.imagine.neatfeat.controller.customer.servlets;

import com.imagine.neatfeat.model.dal.dao.ProductDAO;
import com.imagine.neatfeat.model.dal.dao.UserDAO;
import com.imagine.neatfeat.model.dal.entity.Category;
import com.imagine.neatfeat.model.dal.entity.Product;
import com.imagine.neatfeat.model.dal.entity.User;
import com.imagine.neatfeat.model.dal.servletsdaos.CheckoutDao;
import com.imagine.neatfeat.model.dal.servletsdaos.ResultDao;
import com.imagine.neatfeat.model.dal.utilityPojos.Item;
import org.hibernate.Session;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

public class ResultServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/
        ResultDao resultDao = new ResultDao();
        String searchByCatString = request.getParameter("cat");
        String searchString = request.getParameter("search");
        String pageNo = request.getParameter("pageNo");

        List<Product> products = null;
        Integer noOfPages = null;
        Session session = (Session)getServletContext().getAttribute("session");
        Integer pageNumber = null;


        Map resultMap = null;
        pageNumber = null;
        if(pageNo != null) {
            pageNumber = Integer.parseInt(pageNo);
        }
        else
        {
            pageNumber = 1;
        }

        List<Category> mainCategories = resultDao.getMainCategories(session);
        request.setAttribute("mainCategories", mainCategories);

        if(searchByCatString != null)
        {
            resultMap = resultDao.getProductsPageByCategory(session, searchByCatString, pageNumber, 9);

            products = (List<Product>) resultMap.get("entities");
            noOfPages = (int) resultMap.get("noOfPages");

            Map<String, Object> categoryDetails = resultDao.getCategoryDetailsWithParentsAndChilds(session, UUID.fromString(searchByCatString));
            request.setAttribute("categoryDetails", categoryDetails);
        }
        else if(searchString != null)
        {
            resultMap = resultDao.getProductsPageBySearchString(session, searchString, pageNumber, 9);

            products = (List<Product>) resultMap.get("entities");
            noOfPages = (int) resultMap.get("noOfPages");
        }

        request.setAttribute("products", products);
        request.setAttribute("noOfPages", noOfPages);
        request.setAttribute("pageNo", pageNumber);
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
