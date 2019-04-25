package com.imagine.neatfeat.controller.admin.servlets;

import com.google.gson.Gson;
import com.imagine.neatfeat.model.dal.Convertors.CountryJson;
import com.imagine.neatfeat.model.dal.Convertors.UserJson;
import com.imagine.neatfeat.model.dal.dao.UserDAO;
import com.imagine.neatfeat.model.dal.entity.Userrr;
///import com.imagine.neatfeat.model.dal.utility.UserUtility;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;
import java.util.UUID;

public class UserServlet extends HttpServlet {

    @Override
    public void init() throws ServletException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/

        /*Alia Mahmoud*/
        SessionFactory factory = new Configuration().configure("cfg/hibernate.cfg.xml").buildSessionFactory();
        Session session = factory.openSession();
        String action = request.getParameter("action");
        if ((action!=null)&&(action.equals("search"))) {
            String userName = request.getParameter("userName");
            String pageNo = request.getParameter("pageNo");
            PaginationService paginationService = new PaginationService();
            Map userPaginationMap = paginationService.getUsersByParameters(session, userName, "", pageNo);
            request.setAttribute("users", userPaginationMap.get("entities"));
            request.setAttribute("noOfPages", userPaginationMap.get("noOfPages"));
            request.setAttribute("pageNo", userPaginationMap.get("pageNumber"));
            session.close();
            factory.close();
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/view/admin/jsp/user.jsp");
            dispatcher.forward(request, response);

        } else {

            String pageNo = request.getParameter("pageNo");
            PaginationService paginationService = new PaginationService();
            Map paginationMap = paginationService.getUsersByParameters(session, "", "", pageNo);
            request.setAttribute("noOfPages", paginationMap.get("noOfPages"));
            request.setAttribute("users", paginationMap.get("entities"));
            request.setAttribute("pageNo", paginationMap.get("pageNumber"));
            session.close();
            factory.close();
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/view/admin/jsp/user.jsp");
            dispatcher.forward(request, response);
        }


        /*Amer Salah*/

        /*Nouran Habib*/


//        SessionFactory factory = new Configuration().configure("cfg/hibernate.cfg.xml").buildSessionFactory();
//        Session session = factory.openSession();
//        UserDAO dao = new UserDAO(session);
//        List<Userrr> users = dao.getAll();
//        request.getSession().setAttribute("users", users);
//        //request.getRequestDispatcher("view/admin/jsp/user.jsp").include(request, response);
//        session.beginTransaction();
//        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/view/admin/jsp/user.jsp");
//        dispatcher.forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/

        /*Alia Mahmoud*/

        /*Amer Salah*/

        /*Nouran Habib*/

        response.setContentType("application/json");
        Session session = (Session) request.getServletContext().getAttribute("session");
        UserDAO user = new UserDAO(session);
        String email = request.getParameter("id");
        UUID id = UUID.fromString(email);
        Userrr userinfo = user.getByPrimaryKey(id);
        UserJson userJson = new UserJson();
        CountryJson countryJson = new CountryJson();
        countryJson.setId(userinfo.getCountry().getId());
        countryJson.setName(userinfo.getCountry().getName());
        userJson.setCountry(countryJson);
        userJson.setAddress(userinfo.getAddress());
        userJson.setBirthdate(userinfo.getBirthdate());
        userJson.setJob(userinfo.getJob());
        userJson.setName(userinfo.getName());
        userJson.setEmail(userinfo.getEmail());
        if (userinfo.isGender()) {
            userJson.setGender("Male");
        } else {
            userJson.setGender("Female");
        }
        userJson.setCreditLimit(userinfo.getCreditLimit());
        userJson.setPassword(userinfo.getPassword());
        userJson.setPhone(userinfo.getPhone());
        userJson.setPhotoUrl(userinfo.getPhotoUrl());
        String u = new Gson().toJson(userJson);
        response.getWriter().print(u);


    }
}
