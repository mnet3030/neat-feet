package com.imagine.neatfeat.model.dal.dao;

import com.imagine.neatfeat.model.dal.entity.Entity;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import java.io.Serializable;
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
        session.beginTransaction();
        session.persist(entity);
        session.getTransaction().commit();
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
    public T getByPrimaryKey(Serializable primaryKey) {
        T neededEntity = session.load(tClass, primaryKey);
        return neededEntity;
    }

    @Override
    public List<T> getAll() {
        Criteria critera = session.createCriteria(tClass);
        List<T> allEntities = critera.list();
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
}
