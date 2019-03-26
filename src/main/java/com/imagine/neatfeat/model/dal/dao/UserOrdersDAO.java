package com.imagine.neatfeat.model.dal.dao;

import com.imagine.neatfeat.model.dal.entity.UserOrders;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import java.sql.SQLException;
import java.util.List;

public class UserOrdersDAO implements DAO<UserOrders> {
    Session session;
    public UserOrdersDAO(Session session) {
        this.session = session;
    }

    public void persist(UserOrders userOrder) throws SQLException {
        session.persist(userOrder);
    }

    public void update(UserOrders userOrder) throws SQLException {
        session.update(userOrder);
    }

    public void delete(List<Object> primaryKey) throws SQLException {
        String userOrderId = (String)primaryKey.get(0);
        UserOrders userOrderToBeDeleted = session.load(UserOrders.class, userOrderId);
        session.delete(userOrderToBeDeleted);
    }

    public UserOrders getByPrimaryKey(List<Object> primaryKeys) throws SQLException {
        String userOrderId = (String)primaryKeys.get(0);
        UserOrders neededUserOrder = session.get(UserOrders.class, userOrderId);
        return neededUserOrder;
    }

    public List<UserOrders> getAll() throws SQLException {
        Criteria critera = session.createCriteria(UserOrders.class);
        List<UserOrders> allUserOrders = critera.list();
        return allUserOrders;
    }

    public List<UserOrders> getByColumnNames(List<String> columnNames, List<Object> columnValues) throws SQLException {
        Criteria criteria = session.createCriteria(UserOrders.class);
        for(int i = 0; i<columnNames.size(); i++){
            criteria = criteria.add(Restrictions.eq(columnNames.get(i), columnValues.get(0)));
        }
        List<UserOrders> neededUserOrders = criteria.list();
        return neededUserOrders;
    }
}
