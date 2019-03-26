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
    public void persist(T entity) throws SQLException;
    public void update(T entity) throws SQLException;
    public void delete(Serializable primaryKey) throws SQLException;
    public T getByPrimaryKey(Serializable primaryKey) throws SQLException;
    public List<T> getAll() throws SQLException;
    public List<T> getByColumnNames(Map<String, Object> columnsWithValues) throws SQLException;
}
