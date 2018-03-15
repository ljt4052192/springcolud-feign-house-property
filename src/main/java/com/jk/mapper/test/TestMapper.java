package com.jk.mapper.test;

import com.jk.model.housePropertyCollection.Area;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

import java.util.List;

@Mapper
@Component
public interface TestMapper {


    @Select("SELECT * FROM t_area")
    List<Area> testGetResult();
}
