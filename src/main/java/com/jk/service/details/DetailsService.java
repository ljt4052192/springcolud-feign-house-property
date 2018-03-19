package com.jk.service.details;

import com.alibaba.fastjson.JSON;
import com.jk.model.housePropertyCollection.SellHousePic;
import com.jk.model.housePropertyCollection.SellHouseResource;
import com.jk.model.result.ResultBean;
import jdk.internal.org.objectweb.asm.tree.analysis.Value;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.List;

@Service
@FeignClient(value = "SPRINGCOLUD-SALE-OF-PROPERTY")//微服务名称
public interface DetailsService {

    /**
     * 房屋详情查询
     * @param id
     * @return
     */
    @RequestMapping("/Details/seletDetails")//微服务Controller层RequestMapping的名称Details与微服务Controller层的查询方法名称seletDetails
    ResultBean seletDetails(@RequestParam("id") String id);

    /**
     * 查询房屋详情图片
     * @param id
     * @param type
     * @return
     */
    @RequestMapping("/Details/seleImg")
    ResultBean seleImg(@RequestParam("id") String id, @RequestParam("type") String type);


}
