package com.jk.service.test;

import com.jk.mapper.test.TestMapper;
import com.jk.model.housePropertyCollection.Area;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TestServiceImpl implements  TestService {


    @Autowired
    private TestMapper testMapper;

    @Override
    public List<Area> testGetResult() {
        return testMapper.testGetResult();
    }
}
