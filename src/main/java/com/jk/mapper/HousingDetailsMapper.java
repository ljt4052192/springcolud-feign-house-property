package com.jk.mapper;

import com.jk.model.housePropertyCollection.SellHousePic;
import com.jk.model.result.ResultBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.List;

@Mapper
@Component
public interface HousingDetailsMapper {

    /**
     * 房屋详情查询
     * @param id
     * @return
     */
    @Select("SELECT h.*, d.`name`, p.*, hous.`name` , ar.`full_name`\n" +
            "FROM t_sell_house_resource h, t_decorate d, t_emp p, t_house_type hous, xx_area ar\n" +
            "WHERE h.`id`= #{id} AND h.`decorate`= d.`id` AND h.`t_e_id`=p.`id` AND h.`room_type`=hous.`id` AND h.`city`=ar.`id`")
    List<HashMap<String,Object>> seletDetails(String id);

    @Select("\tSELECT *\n" +
            "FROM t_sell_house_pic P\n" +
            "WHERE P.`t_s_id` =#{id} AND P.`type`=#{type}")
    List<SellHousePic> seleImg(@Param("id") String id, @Param("type") String type);
}
