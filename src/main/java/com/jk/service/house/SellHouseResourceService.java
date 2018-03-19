package com.jk.service.house;

import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@FeignClient(value = "SPRINGCOLUD-SALE-OF-PROPERTY")
@Service
public interface SellHouseResourceService {

    /**
     * 周晓辉
     * house 删除
     * @param id
     */
    @RequestMapping("/deleteHouse/deleteHouseById")
    void deleteHouseById(@RequestParam("id") String id);
}
