package com.imagine.neatfeat.model.dal.utility;

import com.imagine.neatfeat.model.dal.entity.Product;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class CheckoutUtility {

    public List<Item>  myCart;
    int total=0;
    public List<Item> getCart(){
        ProductUtility productUtility=new ProductUtility();
         myCart=new ArrayList<>();
        productUtility.getAll().forEach(product->myCart.add(new Item(product,1)));
        return  myCart;
    }
    public List<Item> changeQuantity(String uuid,String op){
        UUID id=UUID.fromString(uuid);

        List<Item> newCart=new ArrayList<>();
            for(Item item:myCart) {
                if (item.getProduct().getId().equals(id)) {
                    if (op.equals("+")) {
                        if(item.getProduct().getQuantity()>item.getQuantity()) {
                            item.setQuantity(item.getQuantity() + 1);
                            //System.out.println("here>>>>>>>>>>>>>>");
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
        myCart.forEach(item -> System.out.println(item.getQuantity()));
            return myCart;
    }

    public void removeFromCart(String  uuid){
        UUID id=UUID.fromString(uuid);


    }
    public int totalPrice(){

        total=0;
        myCart.forEach(item -> total+=(item.getQuantity()*item.getProduct().getPrice()));
        return total;
    }
}
