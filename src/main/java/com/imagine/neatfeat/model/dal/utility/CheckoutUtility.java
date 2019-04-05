package com.imagine.neatfeat.model.dal.utility;

import com.imagine.neatfeat.model.dal.entity.Product;
import com.imagine.neatfeat.model.dal.utilityPojos.Item;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class CheckoutUtility {

    /*Mahmoud Shereif*/

    /*Amr El Kady*/

    int total;
    int cartSize=0;
    public List<Item> changeQuantity(String uuid,String op,List<Item> myCart){
        UUID id=UUID.fromString(uuid);
        //System.out.println("here>>>>>>>>>>>>>>");
            for(Item item:myCart) {
               //System.out.println(item.getProduct().getId()+"here>>>>>>>>>>>>>>"+id);
                if (item.getProduct().getId().equals(id)) {
                    if (op.equals("+")) {
                        if(item.getProduct().getQuantity()>item.getQuantity()) {
                            item.setQuantity(item.getQuantity() + 1);
                           // System.out.println("here>>>>>>>>>>>>>>");
                            break;
                        }
                    } else if (op.equals("-")) {
                        if(item.getQuantity()>1) {
                            item.setQuantity(item.getQuantity() - 1);
                            break;
                        }
                    }
                }

            }
           // myCart.forEach(item -> System.out.println(item.getQuantity()));
            return myCart;
    }

    public List<Item> removeFromCart(String  uuid, List<Item> myCart){

        UUID id=UUID.fromString(uuid);
        Item removedItem=null;

        for(Item item:myCart) {
            if (item.getProduct().getId().equals(id)) {
                    removedItem=item;
                        break;
                    }
            }
        myCart.remove(removedItem);
        return  myCart;
    }
    public int totalPrice(List<Item> myCart){

        total=0;
        if(myCart!=null) {
            myCart.forEach(item -> total += (item.getQuantity() * item.getProduct().getPrice()));
        }
        //System.out.println(total);
        return total;

    }

    public int sizeCart(List<Item> cart){
        cartSize=0;
        if(cart != null) {
            cart.forEach(item -> cartSize += item.getQuantity());
        }
        return cartSize;

    }

    /*Alia Mahmoud*/

    /*Amer Salah*/

    /*Nouran Habib*/

}
