package com.imagine.neatfeat.controller.customer.servlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


public class ErrorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession httpSession=request.getSession(false);
        if(httpSession!=null && httpSession.getAttribute("user")!=null){
            request.setAttribute("loggedIn", true);
            request.setAttribute("user", httpSession.getAttribute("user"));
        }else{
            request.setAttribute("loggedIn", false);
        }
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/view/customer/jsp/404.jsp");
        dispatcher.include(request, response);
    }
}
