package com.imagine.neatfeat.model.dal.servletsdaos;

import com.imagine.neatfeat.model.dal.dao.*;
import com.imagine.neatfeat.model.dal.entity.*;
import com.imagine.neatfeat.model.dal.utilityPojos.Item;
import org.hibernate.Session;
import org.hibernate.stat.Statistics;

import java.util.*;

public class CheckoutDao {
    private Session session;
    public String buyCart(List<Item> itemsToBeBuyed, Session session, User user)
    {
        this.session = session;
        orderCartAsc(itemsToBeBuyed);
        List<Product> products = selectProductsForUpdateOrdered(itemsToBeBuyed);
        String resultStatus = null;
        if(checkQuantity(itemsToBeBuyed, products))
        {
            int totalMoneyToBePayed = 0;
            totalMoneyToBePayed = CheckCreditLimit(itemsToBeBuyed, user.getCreditLimit(), products);

            if(totalMoneyToBePayed != 0)
            {

                UserOrders userOrder = new UserOrders();
                userOrder.setUser(user);
                userOrder.setDatePurchased(new Date());
                UserOrdersDAO ordersDAO = new UserOrdersDAO(session);

                userOrder = ordersDAO.merge(userOrder);
                addOrderProducts(itemsToBeBuyed, userOrder, products);
                user.setCreditLimit(user.getCreditLimit() - totalMoneyToBePayed);

                UserDAO userDAO = new UserDAO(session);

                userDAO.update(user);

                //  SessionFactory sessionFactory = new Configuration().configure("cfg/hibernate.cfg.xml").buildSessionFactory();
                Statistics stats =  session.getSessionFactory().getStatistics();
                stats.setStatisticsEnabled(true);
                System.out.println(stats.getConnectCount());


                updateProductQuantities(itemsToBeBuyed, products);

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

    private void orderCartAsc(List<Item> itemsToBeBuyed) {
        itemsToBeBuyed.sort(Comparator.comparing(Item::getProductId));
    }

    private List<Product> selectProductsForUpdateOrdered(List<Item> itemsToBeBuyed) {
        ProductDAO productDAO = new ProductDAO(session);
        List<Object> uuids = new ArrayList<>();
        itemsToBeBuyed.forEach((item)->{
            uuids.add(item.getProductId());
        });

        return productDAO.getWithInByIdAndLockForUpdateOrdered("id", uuids);
    }

    private void addOrderProducts(List<Item> itemsToBeBuyed, UserOrders userOrder, List<Product> products) {
        Set<OrderProducts> orderProducts = getOrderProductsFromItems(itemsToBeBuyed, products);
        OrderProductsDAO orderProductsDAO = new OrderProductsDAO(session);
        for (OrderProducts orderProduct : orderProducts) {
            orderProduct.setUserOrders(userOrder);
            orderProductsDAO.persist(orderProduct);
        }

    }

    private void updateProductQuantities(List<Item> itemsToBeBuyed, List<Product> products) {
        int i = 0;
        for (Item item : itemsToBeBuyed) {

            int buyedQuantity = item.getQuantity();
            Product neededProduct = products.get(i);
            neededProduct.setQuantity(neededProduct.getQuantity() - buyedQuantity);

            ProductDAO productDAO = new ProductDAO(session);
            productDAO.update(neededProduct);
            i++;
        }
    }

    private Set<OrderProducts> getOrderProductsFromItems(List<Item> itemsToBeBuyed, List<Product> products) {
        DeliveryStatusDAO deliveryStatusDAO = new DeliveryStatusDAO(session);
        Map<String, Object> map = new HashMap<>();
        map.put("description","Ordered");
        DeliveryStatus deliveryStatus = deliveryStatusDAO.getByColumnNames(map).get(0);

        Set<OrderProducts> orderProducts = new HashSet<>();
        int i = 0;
        for (Item item : itemsToBeBuyed) {
            OrderProducts orderProduct = new OrderProducts();
            orderProduct.setProduct(session.get(Product.class,products.get(0).getId()));
            orderProduct.setDeliveryStatus(deliveryStatus);
            orderProduct.setQuantity(item.getQuantity());
            orderProduct.setPriceBeforeDiscount(products.get(0).getPrice());
            orderProduct.setTotalPrice(orderProduct.getQuantity() * orderProduct.getPriceBeforeDiscount());
            orderProducts.add(orderProduct);
            i++;
        }
        return orderProducts;
    }

    private int CheckCreditLimit(List<Item> itemsToBeBuyed, int creditLimit, List<Product> products) {
        int totalPrice = 0;
        int i = 0;
        for (Item itemToBeBuyed : itemsToBeBuyed) {
            totalPrice += itemToBeBuyed.getQuantity() * products.get(i).getPrice();
            i++;
        }

        if(totalPrice > creditLimit)
            return 0;
        else
            return totalPrice;
    }

    private boolean checkQuantity(List<Item> itemsToBeBuyed, List<Product> products) {
        int i = 0;
        for (Item itemToBeBuyed : itemsToBeBuyed) {
            if(itemToBeBuyed.getQuantity() > products.get(i).getQuantity()){
                return false;
            }
            i++;
        }
        return true;
    }
}
