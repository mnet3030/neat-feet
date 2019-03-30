package com.imagine.neatfeat.controller.customer.servlets;

import com.imagine.neatfeat.model.dal.entity.Product;
import com.imagine.neatfeat.model.dal.utility.ProductUtility;
import com.imagine.neatfeat.model.dal.utility.UuidUtility;

import java.nio.ByteBuffer;
import java.util.List;
import java.util.UUID;

public class testclass {
    public static  void main(String arg[]){

        ProductUtility productUtility=new ProductUtility();

        List<Product> allProduct=productUtility.getAll();

        allProduct.forEach(p-> System.out.println(UuidUtility.getUUIDFromBytes(p.getId())+"   " +UuidUtility.getBytesFromUUID(UuidUtility.getUUIDFromBytes(p.getId()))+" original :"+p.getId()));

      //  UUID uuid = UUID.nameUUIDFromBytes(bytes);

    }



}
