package com.jk.service.details;

import com.jk.model.housePropertyCollection.SellHousePic;
import com.jk.model.result.ResultBean;

import java.util.HashMap;
import java.util.List;

public interface HousingDetailsService {


    /**
     * 房屋详情查询
     * @param id
     * @return
     */
    List<HashMap<String,Object>> seletDetails(String id);

    List<SellHousePic> seleImg(String id, String type);
}
