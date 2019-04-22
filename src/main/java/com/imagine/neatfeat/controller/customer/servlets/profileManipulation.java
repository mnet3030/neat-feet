package com.imagine.neatfeat.controller.customer.servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@MultipartConfig
public class profileManipulation extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/

        /*Alia Mahmoud*/

        HttpSession userSession = request.getSession(false);
        userSession.setAttribute("editProfile", "false");
        request.getServletContext()
                .getRequestDispatcher("/view/customer/jsp/profile.jsp")
                .forward(request,response);
        /*Amer Salah*/

        /*Nouran Habib*/

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/

        /*Alia Mahmoud*/

        HttpSession userSession = request.getSession(false);
        userSession.setAttribute("editProfile", "true");
        request.getServletContext()
                .getRequestDispatcher("/view/customer/jsp/profile.jsp")
                .forward(request,response);

        /*Amer Salah*/

        /*Nouran Habib*/

    }
}
