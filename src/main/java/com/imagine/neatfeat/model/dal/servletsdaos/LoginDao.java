package com.imagine.neatfeat.model.dal.servletsdaos;

import com.imagine.neatfeat.model.dal.dao.ShoppingCartDAO;
import com.imagine.neatfeat.model.dal.dao.ShoppingCartProductsDAO;
import com.imagine.neatfeat.model.dal.dao.UserDAO;
import com.imagine.neatfeat.model.dal.entity.ShoppingCart;
import com.imagine.neatfeat.model.dal.entity.ShoppingCartProducts;
import com.imagine.neatfeat.model.dal.entity.Userrr;
import com.imagine.neatfeat.model.dal.utilityPojos.Item;
import org.hibernate.Session;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class LoginDao {
    public Userrr AuthenticateUser(Session session, String userEmail, String password){
        UserDAO userDAO = new UserDAO(session);
        Map<String, Object> parametersMap = new HashMap<>();
        parametersMap.put("email", userEmail);
        parametersMap.put("password", password);


        List<Userrr> userrrList = userDAO.getByColumnNames(parametersMap);
        if(userrrList.size() > 0)
            return userrrList.get(0);
        else
            return null;
    }


    public List<Item> getAndDeleteCartFromDatabase(Session session, Userrr userrr) {
        ShoppingCartDAO shoppingCartDAO = new ShoppingCartDAO(session);
        List<ShoppingCart> shoppingCarts = shoppingCartDAO.getByColumnName("userrr.id", userrr.getId());
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
