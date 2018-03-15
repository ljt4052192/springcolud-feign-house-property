package com.jk.model.housePropertyCollection;

public class Community {
    private String id;

    private Long tAId;

    private String name;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public Long gettAId() {
        return tAId;
    }

    public void settAId(Long tAId) {
        this.tAId = tAId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }
}