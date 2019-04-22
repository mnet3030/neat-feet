package com.imagine.neatfeat.controller.admin.servlets;

import com.imagine.neatfeat.model.dal.entity.Product;
import com.imagine.neatfeat.model.dal.servletsdaos.ResultDao;
import org.apache.commons.lang3.math.NumberUtils;
import org.hibernate.Session;

import java.util.List;
import java.util.Map;
import java.util.UUID;

public class PaginationService {
    public PaginationService() {

    }

    public Map getProductsByParameters(Session session, String searchParam, String categoryParam, String pageNo){
        int pageNumber;

        Map resultMap = null;

        ResultDao resultDao = new ResultDao();

        if(NumberUtils.isParsable(pageNo))
            pageNumber = NumberUtils.createInteger(pageNo);
        else
            pageNumber = 1;

        if(searchParam != null)
        {
            resultMap = resultDao.getProductsPageBySearchString(session, searchParam, pageNumber, 7);
        }

        return resultMap;
    }

    public Map getUsersByParameters(Session session, String searchParam, String categoryParam, String pageNo){
        int pageNumber;

        Map resultMap = null;

        ResultDao resultDao = new ResultDao();

        if(NumberUtils.isParsable(pageNo))
            pageNumber = NumberUtils.createInteger(pageNo);
        else
            pageNumber = 1;

        if(searchParam != null)
        {
            resultMap = resultDao.getUsersPageBySearchString(session, searchParam, pageNumber, 7);
        }

        return resultMap;
    }
}

