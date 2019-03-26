package com.imagine.neatfeat.model.dal.dao;

import com.imagine.neatfeat.model.dal.entity.ShoppingCart;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import java.sql.SQLException;
import java.util.List;

public class ShoppingCartDAO implements DAO<ShoppingCart> {
    Session session;
    public ShoppingCartDAO(Session session)  {
        this.session = session;
    }

    public void persist(ShoppingCart shoppingCart) throws SQLException {
        session.persist(shoppingCart);
    }

    public void update(ShoppingCart shoppingCart) throws SQLException {
        session.update(shoppingCart);
    }

    public void delete(List<Object> primaryKey) throws SQLException {
        String shoppingCartId = (String)primaryKey.get(0);
        ShoppingCart shoppingCartToBeDeleted = session.load(ShoppingCart.class, shoppingCartId);
        session.delete(shoppingCartId);
    }

    public ShoppingCart getByPrimaryKey(List<Object> primaryKeys) throws SQLException {
        String shoppingCartId = (String)primaryKeys.get(0);
        ShoppingCart neededShoppingCart = session.get(ShoppingCart.class, shoppingCartId);
        return neededShoppingCart;
    }

    public List<ShoppingCart> getAll() throws SQLException {
        Criteria critera = session.createCriteria(ShoppingCart.class);
        List<ShoppingCart> allShoppingCarts = critera.list();
        return allShoppingCarts;
    }

    public List<ShoppingCart> getByColumnNames(List<String> columnNames, List<Object> columnValues) throws SQLException {
        Criteria criteria = session.createCriteria(ShoppingCart.class);
        for(int i = 0; i<columnNames.size(); i++){
            criteria = criteria.add(Restrictions.eq(columnNames.get(i), columnValues.get(0)));
        }
        List<ShoppingCart> neededShoppingCarts = criteria.list();
        return neededShoppingCarts;
    }
}
