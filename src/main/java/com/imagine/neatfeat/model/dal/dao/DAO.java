/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.imagine.neatfeat.model.dal.dao;

import com.imagine.neatfeat.model.dal.entity.Entity;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

/**
 *
 * @author Mahmoud Shereif
 */
public interface DAO<T extends Entity> {
    public void persist(T entity) ;
    public T merge(T entity);
    public void update(T entity) ;
    public void delete(Serializable primaryKey) ;
    public T getByPrimaryKey(Serializable primaryKey) ;
    public List<T> getAll() ;
    public List<T> getByColumnNames(Map<String, Object> columnsWithValues) ;
    public List<T> getByColumnName(String columnName, Object columnValue) ;
    public List<T> getByColumnNamesNotEq(Map<String, Object> columnsWithValues) ;
    public List<T> getByColumnNamesWithLike(Map<String, Object> columnsWithValues) ;
    public List<T> getByColumnNamesWithNotNull(List<String> columnNames) ;
    public List<T> getByColumnNamesWithNull(List<String> columnNames) ;
    public Map<String, Object> getAllPaged(int pageNumber, int itemsPerPage) ;
    public Map<String, Object> getPageByColumnNames(Map<String, Object> columnsWithValues, int pageNumber, int itemsPerPage) ;
    public Map<String, Object> getPageByColumnNamesWithLike(Map<String, Object> columnsWithValues, int pageNumber, int itemsPerPage) ;
    public List<T> getWithInByIdAndLockForUpdateOrdered(String columnName, List<Object> ids);
}
