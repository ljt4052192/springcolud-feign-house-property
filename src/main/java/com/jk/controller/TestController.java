package com.jk.controller;

import com.jk.model.housePropertyCollection.Area;
import com.jk.service.test.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class TestController {

    @Autowired
    private TestService testService;

    @RequestMapping("Test2")
    public String Test(){
        List<Area> list =  testService.testGetResult();

        return "qqq";
    }

}
