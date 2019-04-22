package com.imagine.neatfeat.controller.services;

import com.imagine.neatfeat.model.dal.entity.Product;
import com.imagine.neatfeat.model.dal.servletsdaos.ResultDao;
import com.imagine.neatfeat.model.dal.utility.UUIDUtility;
import com.imagine.neatfeat.model.dal.utilityPojos.Item;
import org.apache.commons.lang3.math.NumberUtils;
import org.hibernate.Session;

import java.util.List;
import java.util.Map;
import java.util.UUID;

public class PaginationService {
    public PaginationService() {

    }

    public Map getProductsByParameters(Session session, String searchParam, String categoryParam, String pageNo, boolean withUserCartCheck, List<Item> cart){
        int pageNumber;

        Map resultMap = null;

        ResultDao resultDao = new ResultDao();

        if(NumberUtils.isParsable(pageNo))
            pageNumber = NumberUtils.createInteger(pageNo);
        else
            pageNumber = 1;

        if(searchParam != null)
        {
            if(!withUserCartCheck)
                resultMap = resultDao.getProductsPageBySearchString(session, searchParam, pageNumber, 9);
            else
                resultMap = resultDao.getProductsPageBySearchStringWithUserCartCheck(session, searchParam, pageNumber, 9, cart);
        }
        else if(categoryParam != null)
        {
            if(UUIDUtility.isUUID(categoryParam)) {
                if(!withUserCartCheck)
                    resultMap = resultDao.getProductsPageByCategory(session, categoryParam, pageNumber, 9);
                else
                    resultMap = resultDao.getProductsPageByCategoryWithUserCartCheck(session, categoryParam, pageNumber, 9, cart);
                Map categoryDetailsMap = resultDao.getCategoryDetailsWithParentsAndChilds(session, UUID.fromString(categoryParam));
                resultMap.put("categoryDetails", categoryDetailsMap);
            }

        }

        return resultMap;
    }
}
