package com.jk.model.housePropertyCollection;

public class SellHousePic {
    private String id;

    private String tSId;

    private String url;

    private Integer type;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String gettSId() {
        return tSId;
    }

    public void settSId(String tSId) {
        this.tSId = tSId == null ? null : tSId.trim();
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }
}