package com.imagine.neatfeat.model.dal.Convertors;

import java.util.UUID;

public class CountryJson {
    private UUID id;
    private String name;


    public CountryJson() {
    }


    public CountryJson(UUID id, String name) {
        this.id = id;
        this.name = name;
    }
    public UUID getId() {
        return this.id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

}
