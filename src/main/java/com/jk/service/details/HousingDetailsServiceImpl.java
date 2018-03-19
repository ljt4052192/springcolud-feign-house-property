package com.jk.service.details;

import com.jk.mapper.HousingDetailsMapper;
import com.jk.model.housePropertyCollection.SellHousePic;
import com.jk.model.result.ResultBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public class HousingDetailsServiceImpl implements HousingDetailsService{

    @Autowired
    private HousingDetailsMapper housingDetailsMapper;

    /**
     * 房屋详情查询
     * @param id
     * @return
     */
    @Override
    public List<HashMap<String, Object>> seletDetails(String id) {
        return housingDetailsMapper.seletDetails(id);
    }

    @Override
    public List<SellHousePic> seleImg(String id, String type) {
        return housingDetailsMapper.seleImg( id, type);
    }
}
