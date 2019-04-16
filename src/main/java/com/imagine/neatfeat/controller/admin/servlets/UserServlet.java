package com.imagine.neatfeat.controller.admin.servlets;

import com.google.gson.Gson;
import com.imagine.neatfeat.model.dal.dao.UserDAO;
import com.imagine.neatfeat.model.dal.entity.Product;
import com.imagine.neatfeat.model.dal.entity.User;
import com.imagine.neatfeat.model.dal.utility.UserUtility;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.UUID;

public class UserServlet  extends HttpServlet {
    UserUtility userUtility;

    @Override
    public void init() throws ServletException {
        userUtility=new UserUtility();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/

        /*Alia Mahmoud*/

       
        /*Amer Salah*/

        /*Nouran Habib*/



        List<User> users=userUtility.getAll();
        request.getSession().setAttribute("users",users);

        SessionFactory factory =  new Configuration().configure("cfg/hibernate.cfg.xml").buildSessionFactory();
        Session session = factory.openSession();
        //request.getRequestDispatcher("view/admin/jsp/user.jsp").include(request, response);


        session.beginTransaction() ;

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/view/admin/jsp/user.jsp");
        dispatcher.forward(request, response);



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/

        /*Amr El Kady*/

        /*Alia Mahmoud*/

        /*Amer Salah*/

        /*Nouran Habib*/

       response.setContentType("application/json");

        Session session= (Session) request.getServletContext().getAttribute("session");
       UserDAO user =new UserDAO(session);
       String email=request.getParameter("id");
//        //consol.log(user.getUserByEmail("email"));
        System.out.println(email);
//        PrintWriter out = response.getWriter();

        UUID id =UUID.fromString(email);
        User userinfo=user.getByPrimaryKey(id);
       System.out.println(userinfo.getName());
     String u=new Gson().toJson(userinfo);

       response.getWriter().print(u);



    }
}
