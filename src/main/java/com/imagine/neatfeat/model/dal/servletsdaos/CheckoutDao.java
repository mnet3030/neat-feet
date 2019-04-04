package com.imagine.neatfeat.model.dal.servletsdaos;

import com.imagine.neatfeat.model.dal.dao.*;
import com.imagine.neatfeat.model.dal.entity.*;
import com.imagine.neatfeat.model.dal.utilityPojos.Item;
import org.hibernate.Session;

import java.util.*;

public class CheckoutDao {
    private Session session;
    public String buyCart(List<Item> itemsToBeBuyed, Session session, User user)
    {
        this.session = session;
        String resultStatus = null;
        if(checkQuantity(itemsToBeBuyed))
        {
            int totalMoneyToBePayed = 0;
            totalMoneyToBePayed = CheckCreditLimit(itemsToBeBuyed, user.getCreditLimit());

            if(totalMoneyToBePayed != 0)
            {

                UserOrders userOrder = new UserOrders();
                userOrder.setUser(user);
                userOrder.setDatePurchased(new Date());
                UserOrdersDAO ordersDAO = new UserOrdersDAO(session);

                userOrder = ordersDAO.merge(userOrder);
                addOrderProducts(itemsToBeBuyed, userOrder);
                user.setCreditLimit(user.getCreditLimit() - totalMoneyToBePayed);

                UserDAO userDAO = new UserDAO(session);

                userDAO.update(user);

                updateProductQuantities(itemsToBeBuyed);

                resultStatus = "success";
            }
            else
            {
                resultStatus = "Error in credit limit";
            }
        }
        else
        {
            resultStatus = "Error in quantity";
        }
        return resultStatus;
    }

    private void addOrderProducts(List<Item> itemsToBeBuyed, UserOrders userOrder) {
        Set<OrderProducts> orderProducts = getOrderProductsFromItems(itemsToBeBuyed);
        OrderProductsDAO orderProductsDAO = new OrderProductsDAO(session);
        for (OrderProducts orderProduct : orderProducts) {
            orderProduct.setUserOrders(userOrder);
            orderProductsDAO.persist(orderProduct);
        }
    }

    private void updateProductQuantities(List<Item> itemsToBeBuyed) {
        for (Item item : itemsToBeBuyed) {
            int buyedQuantity = item.getQuantity();
            Product neededProduct = item.getProduct();
            neededProduct.setQuantity(neededProduct.getQuantity() - buyedQuantity);

            ProductDAO productDAO = new ProductDAO(session);
            productDAO.update(neededProduct);
        }
    }

    private Set<OrderProducts> getOrderProductsFromItems(List<Item> itemsToBeBuyed) {
        DeliveryStatusDAO deliveryStatusDAO = new DeliveryStatusDAO(session);
        Map<String, Object> map = new HashMap<>();
        map.put("description","Ordered");
        DeliveryStatus deliveryStatus = deliveryStatusDAO.getByColumnNames(map).get(0);

        Set<OrderProducts> orderProducts = new HashSet<>();

        for (Item item : itemsToBeBuyed) {
            OrderProducts orderProduct = new OrderProducts();
            orderProduct.setProduct(item.getProduct());
            orderProduct.setDeliveryStatus(deliveryStatus);
            orderProduct.setQuantity(item.getQuantity());
            orderProduct.setPriceBeforeDiscount(item.getProduct().getPrice());
            orderProduct.setTotalPrice(orderProduct.getQuantity() * orderProduct.getPriceBeforeDiscount());
            orderProducts.add(orderProduct);
        }
        return orderProducts;
    }

    private int CheckCreditLimit(List<Item> itemsToBeBuyed, int creditLimit) {
        int totalPrice = 0;
        for (Item itemToBeBuyed : itemsToBeBuyed) {
            totalPrice += itemToBeBuyed.getQuantity() * itemToBeBuyed.getProduct().getPrice();
        }

        if(totalPrice > creditLimit)
            return 0;
        else
            return totalPrice;
    }

    private boolean checkQuantity(List<Item> itemsToBeBuyed) {
        for (Item itemToBeBuyed : itemsToBeBuyed) {
            Product currentProduct = session.get(Product.class, itemToBeBuyed.getProduct().getId());
            if(itemToBeBuyed.getQuantity() > currentProduct.getQuantity()){
                return false;
            }
        }
        return true;
    }
}
