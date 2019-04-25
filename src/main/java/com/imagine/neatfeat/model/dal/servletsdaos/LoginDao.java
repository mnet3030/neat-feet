package com.imagine.neatfeat.model.dal.servletsdaos;

import com.imagine.neatfeat.model.dal.dao.ShoppingCartDAO;
import com.imagine.neatfeat.model.dal.dao.ShoppingCartProductsDAO;
import com.imagine.neatfeat.model.dal.dao.UserDAO;
import com.imagine.neatfeat.model.dal.entity.Product;
import com.imagine.neatfeat.model.dal.entity.ShoppingCart;
import com.imagine.neatfeat.model.dal.entity.ShoppingCartProducts;
import com.imagine.neatfeat.model.dal.entity.User;
import com.imagine.neatfeat.model.dal.utilityPojos.Item;
import org.hibernate.Session;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class LoginDao {
    public User AuthenticateUser(Session session, String userEmail, String password){
        UserDAO userDAO = new UserDAO(session);
        Map<String, Object> parametersMap = new HashMap<>();
        parametersMap.put("email", userEmail);
        parametersMap.put("password", password);


        List<User> userList = userDAO.getByColumnNames(parametersMap);
        if(userList.size() > 0)
            return userList.get(0);
        else
            return null;
    }


    public List<Item> getAndDeleteCartFromDatabase(Session session, User user) {
        ShoppingCartDAO shoppingCartDAO = new ShoppingCartDAO(session);
        List<ShoppingCart> shoppingCarts = shoppingCartDAO.getByColumnName("user.id", user.getId());
        if(shoppingCarts.size() > 0)
        {
            ShoppingCart shoppingCart = shoppingCarts.get(0);

            ShoppingCartProductsDAO shoppingCartProductsDAO = new ShoppingCartProductsDAO(session);
            List<ShoppingCartProducts> cartProducts = shoppingCartProductsDAO.getByColumnName("shoppingCart.id", shoppingCart.getId());
            List<Item> cart = new ArrayList<>();
            for (ShoppingCartProducts shoppingCartProduct : cartProducts) {
                Item item = new Item(shoppingCartProduct.getProduct().getId(),shoppingCartProduct.getQuantity());
                cart.add(item);
            }

            shoppingCartProductsDAO.deleteByColumnName("shoppingCart.id", shoppingCart.getId());

            return cart;
        }
        else
            return null;
    }
}
