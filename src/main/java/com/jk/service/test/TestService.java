package com.jk.service.test;

import com.jk.model.housePropertyCollection.Area;

import com.jk.model.housePropertyCollection.Community;
import com.jk.model.housePropertyCollection.Decorate;
import com.jk.model.housePropertyCollection.HouseType;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@FeignClient(value = "SPRINGCOLUD-SALE-OF-PROPERTY")
@Service
public interface TestService {
    /**
     *
     * @return  测试使用
     */
    @RequestMapping("/test/Test2")
    public List<Area> testGetResult();

    /**
     * 添加房源
     * @param
     * @return
     */
    @RequestMapping("/test/addHouse")
    Boolean addHouse(@RequestParam(value = "s") String s);


    /**
     * 查询地区
     * @param pid
     * @return
     */
    @RequestMapping("/test/selectArea")
    List<Area> selectArea(@RequestParam(value = "pid") Integer pid);

    /**
     * 房屋类型
     * @return
     */
    @RequestMapping("/test/selectHousetype")
    List<HouseType> selectHousetype();

    /**
     * 查询维修情况
     * @return
     */
    @RequestMapping("/test/selectDecorate")
    List<Decorate> selectDecorate();

    /**
     * 查询小区所在地区
     * @return
     */
    @RequestMapping("/test/selectCommunity")
    List<Community> selectCommunity();

    /**
     * 添加图片
     * @param s
     */
    @RequestMapping("/test/inserteimg")
    void inserteimg(@RequestParam(value = "s") String s);
}
