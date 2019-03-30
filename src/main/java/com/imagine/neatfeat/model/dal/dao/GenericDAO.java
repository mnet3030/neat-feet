package com.imagine.neatfeat.model.dal.dao;

import com.imagine.neatfeat.model.dal.entity.Brand;
import com.imagine.neatfeat.model.dal.entity.Entity;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

public class GenericDAO<T extends Entity> implements DAO<T> {
    protected Session session;
    protected Class<T> tClass;

    public GenericDAO(Session session) throws ClassNotFoundException {
        this.session = session;
        String className = ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0].getTypeName();
        Class<?> clazz = Class.forName(className);
        tClass = (Class<T>) clazz;
    }

    @Override
    public void persist(T entity) throws SQLException {
        session.beginTransaction();
        session.persist(entity);
        session.getTransaction().commit();
    }

    @Override
    public void update(T entity) throws SQLException {
        session.update(entity);
    }

    @Override
    public void delete(Serializable primaryKey) throws SQLException {
        T entityToBeDeleted = session.load(tClass, primaryKey);
        session.delete(entityToBeDeleted);
    }

    @Override
    public T getByPrimaryKey(Serializable primaryKey) throws SQLException {
        T neededEntity = session.load(tClass, primaryKey);
        return neededEntity;
    }

    @Override
    public List<T> getAll() throws SQLException {
        Criteria critera = session.createCriteria(tClass);
        List<T> allEntities = critera.list();
        return allEntities;
    }

    @Override
    public List<T> getByColumnNames(Map<String, Object> columnsWithValues) throws SQLException {
        Criteria criteria = session.createCriteria(tClass);
        for (Map.Entry<String, Object> entry : columnsWithValues.entrySet()) {
            criteria = criteria.add(Restrictions.eq(entry.getKey(), entry.getValue()));
        }
        List<T> neededEntities = criteria.list();
        return neededEntities;
    }
}
