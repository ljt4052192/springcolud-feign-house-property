package com.jk.service.house;


import com.jk.model.housePropertyCollection.*;
import com.jk.model.tree.HouseTree;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.alibaba.fastjson.JSONObject;

import java.util.HashMap;
import java.util.List;
@FeignClient(value = "SPRINGCOLUD-SALE-OF-PROPERTY")
@Service
public interface HouseService {

    /**
     * housetree
     * @return
     */
    @RequestMapping("/house/queryHouseTree")
    List<HouseTree> queryHouseTree();


    /**
     * 查询房屋信息
     * @param
     * @param
     * @param
     * @return
     */

    @RequestMapping(value = "/house/queryHouseList")
    JSONObject queryHouseList(@RequestParam("page") int page, @RequestParam("limit") int limit, @RequestParam("sj") String sj);



    /**
     * 删除房屋信息
     * @param
     * @return
     */
    @RequestMapping(value = "/house/deleteHouse")
    void deleteHouse(@RequestParam("houid")String id);



    /**
     * 查询房屋类型
     * @return
     */
    @RequestMapping(value = "/house/selectDecorate")

    List<Decorate> selectDecorate();

    /**
     * 查询省
     * @return
     *
     */
    @RequestMapping(value = "/house/selectProvince")
    List<XxArea> selectProvince();


    /**
     *
     * @param pid
     * @return 根据省级的pid查询到下面对应的地级市
     */
    @RequestMapping(value = "/house/selectArea2")
    List<XxArea> selectArea2(@RequestParam("pid") Integer pid);


    @RequestMapping("/house/toQueryList")
    HashMap<String, Object> selectAddress(@RequestParam("id") String id);

    @RequestMapping("/house/selectDecorate2")
    List<Decorate> selectDecorate2();

    @RequestMapping("/house/updateHouse")
    int updateHouse(@RequestParam("sellHouseResource")String sellHouseResource);

    @RequestMapping("/house/selectCommunity")
    List<Community> selectCommunity();

    @RequestMapping("/house/selectRoomType")
    List<HouseType> selectRoomType();

    @RequestMapping("/house/selectArea")
    List<Area> selectArea(@RequestParam("pid") String pid);

    @RequestMapping("/house/deleteImg")
    void deleteImg(String id);



}
