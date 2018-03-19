package com.jk.service.test;

import com.jk.model.housePropertyCollection.Area;
import com.jk.model.housePropertyCollection.Community;
import com.jk.model.housePropertyCollection.Decorate;
import com.jk.model.housePropertyCollection.HouseType;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TestServiceHystric  implements TestService{
    @Override
    public List<Area> testGetResult() {
        return null;
    }

    @Override
    public Boolean addHouse(String s) {
        return null;
    }

    @Override
    public List<Area> selectArea(Integer pid) {
        return null;
    }

    @Override
    public List<HouseType> selectHousetype() {
        return null;
    }

    @Override
    public List<Decorate> selectDecorate() {
        return null;
    }

    @Override
    public List<Community> selectCommunity() {
        return null;
    }

    @Override
    public void inserteimg(String s) {

    }
}
