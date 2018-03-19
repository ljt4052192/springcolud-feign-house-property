package com.jk.service.staff;

import com.alibaba.fastjson.JSONObject;
import com.jk.model.housePropertyCollection.Emp;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@FeignClient(value = "SPRINGCOLUD-SALE-OF-PROPERTY")
@Service
public interface StaffService {

    @RequestMapping("staff/HttpClientMessange")
    public void HttpClientMessange(@RequestParam("s") String s);

    @RequestMapping("/staff/getStaffList")
    JSONObject queryStaffList(@RequestParam("page")int page, @RequestParam("limit")int limit);

    @RequestMapping("/staff/deleteStaff")
    void deleteStaff(@RequestParam("id")String id);

    @RequestMapping("/staff/addStaff")
    void addStaff(@RequestParam("e") String e);

    @RequestMapping("/staff/upStaff")
    void upStaff(@RequestParam("e")String e);



}
