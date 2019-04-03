/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.imagine.neatfeat.model.dal.dao;

import com.imagine.neatfeat.model.dal.entity.Category;
import org.hibernate.Session;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/**
 *
 * @author Amer Salah
 */
public class CategoryDAO extends GenericDAO<Category> {

    public CategoryDAO(Session session) {
        super(session, Category.class);
    }

    public List<Category> getAllAncestors(UUID uuid)
    {
        List<Category> ancestorCategories = new ArrayList<>();
        Category neededCategory = getByPrimaryKey(uuid);
        Category tempCategory = neededCategory;
        while(tempCategory.getCategory() != null)
        {
            tempCategory = tempCategory.getCategory();
            ancestorCategories.add(tempCategory);
        }

        return ancestorCategories;
    }
}
