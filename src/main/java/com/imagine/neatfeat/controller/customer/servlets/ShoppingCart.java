
package com.imagine.neatfeat.controller.customer.servlets;

import com.imagine.neatfeat.model.dal.entity.Product;
import com.imagine.neatfeat.model.dal.overDao.FasadProductDao;
import com.imagine.neatfeat.model.dal.utilityPojos.Item;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;



@WebServlet("/cart")
public class ShoppingCart extends HttpServlet {

    List<Item> cartProducts = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        boolean found = false;
        int quantity = 0;

        Product product = new Product();
        FasadProductDao productDao =  new FasadProductDao();

        String productId = req.getParameter("productID");
        UUID productuuid = UUID.fromString(productId);

        product = productDao.getProductByID(productuuid);


        for(int i=0 ; i<cartProducts.size() ; i++)
        {
            if(cartProducts.get(i).getProduct().getId().equals(product.getId()))
            {
                quantity = cartProducts.get(i).getQuantity()+1;
                cartProducts.get(i).setQuantity(quantity);
                HttpSession session = req.getSession();
                session.setAttribute("cartProduct" , cartProducts);
                found=true;
                break;

            }
        }


        if(found==false)
        {
            cartProducts.add(new Item(product , 1));
            HttpSession session = req.getSession();
            session.setAttribute("cartProduct" , cartProducts);
        }

        //PrintWriter out = resp.getWriter();


        //for(int i =0 ;i <cartProducts.size() ; i++)
        //{
          //  System.out.println((cartProducts.get(i).getProduct().getDescription() +"    "+cartProducts.get(i).getQuantity()));
        //}

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        doGet(req , resp);

    }
}