package com.imagine.neatfeat.controller.customer.servlets;

import com.imagine.neatfeat.model.dal.dao.ProductDAO;
import com.imagine.neatfeat.model.dal.dao.ShoppingCartDAO;
import com.imagine.neatfeat.model.dal.dao.ShoppingCartProductsDAO;
import com.imagine.neatfeat.model.dal.entity.Product;
import com.imagine.neatfeat.model.dal.entity.ShoppingCart;
import com.imagine.neatfeat.model.dal.entity.ShoppingCartProducts;
import com.imagine.neatfeat.model.dal.entity.User;
import com.imagine.neatfeat.model.dal.servletsdaos.LoginDao;
import com.imagine.neatfeat.model.dal.utilityPojos.Item;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

public class LogoutServlet extends HttpServlet {

    SessionFactory sessionFactory;
    @Override
    public void init() throws ServletException {
        sessionFactory = (SessionFactory) getServletContext().getAttribute("sessionFactory");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*Mahmoud Shereif*/
        User user = (User) request.getSession(false).getAttribute("user");
        List<Item> cart = (List<Item>) request.getSession(false).getAttribute("cartProduct");

        Session session = sessionFactory.getCurrentSession();

        Transaction tx = null;

        try {
            tx = session.beginTransaction();
            ShoppingCartDAO shoppingCartDAO = new ShoppingCartDAO(session);
            List<ShoppingCart> shoppingCarts = shoppingCartDAO.getByColumnName("user.id", user.getId());
            if(shoppingCarts.size() > 0)
            {
                ShoppingCart shoppingCart = shoppingCarts.get(0);
                ShoppingCartProductsDAO shoppingCartProductsDAO = new ShoppingCartProductsDAO(session);
                ProductDAO productDAO = new ProductDAO(session);
                for (Item item : cart) {
                    ShoppingCartProducts shoppingCartProduct = new ShoppingCartProducts();
                    shoppingCartProduct.setShoppingCart(shoppingCart);
                    Product product = productDAO.getByPrimaryKey(item.getProductId());
                    shoppingCartProduct.setProduct(product);
                    shoppingCartProduct.setPriceBeforeDiscount(product.getPrice());
                    shoppingCartProduct.setQuantity(item.getQuantity());
                    shoppingCartProductsDAO.persist(shoppingCartProduct);
                    request.getSession().setAttribute("cartProduct", null);
                }
            }
            else
            {
                ShoppingCart shoppingCart = new ShoppingCart();
                shoppingCart.setUser(user);
                shoppingCart = shoppingCartDAO.merge(shoppingCart);

                ShoppingCartProductsDAO shoppingCartProductsDAO = new ShoppingCartProductsDAO(session);
                ProductDAO productDAO = new ProductDAO(session);
                for (Item item : cart) {
                    ShoppingCartProducts shoppingCartProduct = new ShoppingCartProducts();
                    shoppingCartProduct.setShoppingCart(shoppingCart);
                    Product product = productDAO.getByPrimaryKey(item.getProductId());
                    shoppingCartProduct.setProduct(product);
                    shoppingCartProduct.setPriceBeforeDiscount(product.getPrice());
                    shoppingCartProduct.setQuantity(item.getQuantity());
                    shoppingCartProductsDAO.persist(shoppingCartProduct);
                    request.getSession().setAttribute("cartProduct", null);
                }
            }

            tx.commit();
        }catch (Exception ex) {
            ex.printStackTrace();
            tx.rollback();
        }


        /*Amr El Kady*/


        /*Alia Mahmoud*/

        /*Amer Salah*/

        /*Nouran Habib*/

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}