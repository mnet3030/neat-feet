package com.imagine.neatfeat.model.dal.dao;

import com.imagine.neatfeat.model.dal.entity.Entity;
import com.imagine.neatfeat.model.dal.utilityPojos.Item;
import org.hibernate.Criteria;
import org.hibernate.LockMode;
import org.hibernate.Session;
import org.hibernate.criterion.*;
import org.hibernate.query.Query;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class GenericDAO<T extends Entity> implements DAO<T> {
    protected Session session;
    protected Class<T> tClass;

    public GenericDAO(Session session, Class<T> entityClass) {
        this.session = session;
        this.tClass = entityClass;
    }

    @Override
    public void persist(T entity) {
        session.persist(entity);
    }

    @Override
    public T merge(T entity) {
        T returnedEntity = (T)session.merge(entity);
        return returnedEntity;
    }

    @Override
    public void update(T entity) {

	session.update(entity);
    }

    @Override
    public void delete(Serializable primaryKey) {
        T entityToBeDeleted = session.load(tClass, primaryKey);
        session.delete(entityToBeDeleted);
    }

    @Override
    public int deleteByColumnName(String columnName, Object columnValue) {
        Query query = session.createQuery("DELETE FROM " + tClass.getSimpleName() + " WHERE " + columnName + "=:columnValue");
        query.setParameter("columnValue", columnValue);
        return query.executeUpdate();
    }

    @Override
    public T getByPrimaryKey(Serializable primaryKey) {
        T neededEntity = session.get(tClass, primaryKey);
        return neededEntity;
    }

    @Override
    public void refresh(T entity) {
        session.refresh(entity);
    }

    @Override
    public List<T> getAll() {
        Criteria criteria = session.createCriteria(tClass);
        List<T> allEntities = criteria.list();
        return allEntities;
    }

    @Override
    public List<T> getByColumnNames(Map<String, Object> columnsWithValues) {
        Criteria criteria = session.createCriteria(tClass);
        for (Map.Entry<String, Object> entry : columnsWithValues.entrySet()) {
            criteria = criteria.add(Restrictions.eq(entry.getKey(), entry.getValue()));
        }
        List<T> neededEntities = criteria.list();
        return neededEntities;
    }

    @Override
    public List<T> getByColumnName(String columnName, Object columnValue) {
        Criteria criteria = session.createCriteria(tClass);
        criteria = criteria.add(Restrictions.eq(columnName, columnValue));
        List<T> neededEntities = criteria.list();
        return neededEntities;
    }

    @Override
    public List<T> getByColumnNamesNotEq(Map<String, Object> columnsWithValues) {
        Criteria criteria = session.createCriteria(tClass);
        for (Map.Entry<String, Object> entry : columnsWithValues.entrySet()) {
            criteria = criteria.add(Restrictions.not(Restrictions.eq(entry.getKey(), entry.getValue())));
        }
        List<T> neededEntities = criteria.list();
        return neededEntities;
    }

    @Override
    public List<T> getByColumnNamesWithNull(List<String> columnNames) {
        Criteria criteria = session.createCriteria(tClass);
        for (String column : columnNames) {
            criteria = criteria.add(Restrictions.isNull(column));
        }
        List<T> neededEntities = criteria.list();
        return neededEntities;
    }

    @Override
    public List<T> getByColumnNamesWithNotNull(List<String> columnNames) {
        Criteria criteria = session.createCriteria(tClass);
        for (String column : columnNames) {
            criteria = criteria.add(Restrictions.isNotNull(column));
        }
        List<T> neededEntities = criteria.list();
        return neededEntities;
    }

    @Override
    public List<T> getByColumnNamesWithLike(Map<String, Object> columnsWithValues) {
        Criteria criteria = session.createCriteria(tClass);
        Disjunction disjunction = Restrictions.or();
        for (Map.Entry<String, Object> entry : columnsWithValues.entrySet()) {
            disjunction.add(Restrictions.like(entry.getKey(), "%" + entry.getValue() + "%"));
        }
        criteria = criteria.add(disjunction);
        List<T> neededEntities = criteria.list();
        return neededEntities;
    }

    @Override
    public Map<String, Object> getAllPaged(int pageNumber, int itemsPerPage) {
        int firstItemInPage;
        int totalNoOfItems;
        int noOfPages;
        Criteria rowCountCriteria = session.createCriteria(tClass)
                .setProjection(Projections.rowCount());
        totalNoOfItems = Integer.parseInt(rowCountCriteria.list().get(0).toString());

        noOfPages = (int)Math.ceil((totalNoOfItems/1.0) / (itemsPerPage/1.0));

        if(pageNumber > noOfPages) {
            firstItemInPage = (noOfPages - 1) * itemsPerPage;
            pageNumber = noOfPages;
        }
        else
            firstItemInPage = (pageNumber - 1) * itemsPerPage;

        Criteria resultCriteria = session.createCriteria(tClass);
        if(firstItemInPage > 0)
            resultCriteria.setFirstResult(firstItemInPage);
        else
            resultCriteria.setFirstResult(0);

        resultCriteria.setMaxResults(itemsPerPage);
        List<T> pageEntities = resultCriteria.list();

        Map<String, Object> entitiesWithNoOfPages = new HashMap<>();
        entitiesWithNoOfPages.put("entities", pageEntities);
        entitiesWithNoOfPages.put("noOfPages", noOfPages);
        entitiesWithNoOfPages.put("pageNumber",pageNumber);
        return entitiesWithNoOfPages;
    }

    @Override
    public Map<String, Object> getPageByColumnNames(Map<String, Object> columnsWithValues, int pageNumber, int itemsPerPage) {
        int firstItemInPage;
        int totalNoOfItems;
        int noOfPages;

        Conjunction conjunction = Restrictions.and();
        for (Map.Entry<String, Object> entry : columnsWithValues.entrySet()) {
            conjunction.add(Restrictions.eq(entry.getKey(), entry.getValue()));
        }

        Criteria rowCountCriteria = session.createCriteria(tClass)
                .add(conjunction)
                .setProjection(Projections.rowCount());

        totalNoOfItems = Integer.parseInt(rowCountCriteria.list().get(0).toString());

        noOfPages = (int)Math.ceil((totalNoOfItems/1.0) / (itemsPerPage/1.0));

        if(pageNumber > noOfPages) {
            firstItemInPage = (noOfPages - 1) * itemsPerPage;
            pageNumber = noOfPages;
        }
        else
            firstItemInPage = (pageNumber - 1) * itemsPerPage;

        Criteria resultCriteria = session.createCriteria(tClass)
                .add(conjunction);
        if(firstItemInPage > 0)
            resultCriteria.setFirstResult(firstItemInPage);
        else
            resultCriteria.setFirstResult(0);
        resultCriteria.setMaxResults(itemsPerPage);
        List<T> pageEntities = resultCriteria.list();

        Map<String, Object> entitiesWithNoOfPages = new HashMap<>();
        entitiesWithNoOfPages.put("entities", pageEntities);
        entitiesWithNoOfPages.put("noOfPages", noOfPages);
        entitiesWithNoOfPages.put("pageNumber",pageNumber);
        return entitiesWithNoOfPages;
    }

    @Override
    public Map<String, Object> getPageByColumnNamesWithLike(Map<String, Object> columnsWithValues, int pageNumber, int itemsPerPage) {
        int firstItemInPage;
        int totalNoOfItems;
        int noOfPages;

        Disjunction disjunction = Restrictions.or();
        for (Map.Entry<String, Object> entry : columnsWithValues.entrySet()) {
            disjunction.add(Restrictions.like(entry.getKey(), "%" + entry.getValue() + "%"));
        }

        Criteria rowCountCriteria = session.createCriteria(tClass)
                .add(disjunction)
                .setProjection(Projections.rowCount());

        totalNoOfItems = Integer.parseInt(rowCountCriteria.list().get(0).toString());

        noOfPages = (int)Math.ceil((totalNoOfItems/1.0) / (itemsPerPage/1.0));

        if(pageNumber > noOfPages) {
            firstItemInPage = (noOfPages - 1) * itemsPerPage;
            pageNumber = noOfPages;
        }
        else
            firstItemInPage = (pageNumber - 1) * itemsPerPage;

        Criteria resultCriteria = session.createCriteria(tClass)
                .add(disjunction);

        if(firstItemInPage > 0)
            resultCriteria.setFirstResult(firstItemInPage);
        else
            resultCriteria.setFirstResult(0);
        resultCriteria.setMaxResults(itemsPerPage);
        List<T> pageEntities = resultCriteria.list();

        Map<String, Object> entitiesWithNoOfPages = new HashMap<>();
        entitiesWithNoOfPages.put("entities", pageEntities);
        entitiesWithNoOfPages.put("noOfPages", noOfPages);
        entitiesWithNoOfPages.put("pageNumber",pageNumber);
        return entitiesWithNoOfPages;
    }

    @Override
    public List<T> getWithInByIdAndLockForUpdateOrdered(String columnName, List<Object> ids, boolean lockedForUpdate) {
        Criteria criteria = session.createCriteria(tClass)
                .add(Restrictions.in(columnName, ids));
        if(lockedForUpdate)
            criteria = criteria.setLockMode(LockMode.UPGRADE);
        criteria = criteria.addOrder(Order.asc("id"));
        List<T> neededEntities = criteria.list();
        return neededEntities;
    }


}
