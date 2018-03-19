package com.jk.controller.details;

import com.alibaba.fastjson.JSON;
import com.jk.model.housePropertyCollection.SellHousePic;
import com.jk.model.housePropertyCollection.SellHouseResource;
import com.jk.model.result.ResultBean;
import com.jk.service.details.DetailsService;
import com.jk.service.details.HousingDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Controller
public class DetailsController {

    @Autowired
    private DetailsService detailsService;

    @Autowired
    private HousingDetailsService housingDetailsService;
    /**
     * 房屋详情查询
     * @param id
     * @return
     */
    @RequestMapping(value = "seletDetails")
    @ResponseBody
    public ModelAndView seletDetails(String id){


       List<HashMap<String,Object>> list = housingDetailsService.seletDetails(id);
        //new 一个HashMap 当总容器
        HashMap<String,Object> hashMap = new HashMap<String, Object>();
        //把查询返回的list放到HashMap中
        hashMap.put("list",list );
        //new 一个ModelAndView 容器来存放HashMap 容器
        ModelAndView modelndView = new ModelAndView();
        //把HashMap 容器放到ModelAndView 容器中
        modelndView.addObject("hashMap",hashMap);
        //视图名称 用来放入你的jsp名称

      /*  redirect:/toList*/
        String type = "";
        type = "1";

        List<SellHousePic> listImg1 = housingDetailsService.seleImg(id,type);
        String listImgString = "";

        for (int i = 0; i < listImg1.size(); i++) {
            listImgString += "<div class='img_wrap'><img  src='"+listImg1.get(0).getUrl()+"' alt='' height='450'></div>";

        }
        //查询户型图
        type = "2";
        List<SellHousePic> listImg2 = housingDetailsService.seleImg(id,type);
        String listImgString2 = "";

        for (int i = 0; i < listImg2.size(); i++) {
            listImgString2 += "<div class='img_wrap'><img  src='"+listImg2.get(0).getUrl()+"' alt='' height='450'></div>";

        }
        //查询环境图
        type = "3";
        List<SellHousePic> listImg3 = housingDetailsService.seleImg(id,type);
        String listImgString3 = "";

        for (int i = 0; i < listImg3.size(); i++) {
            listImgString3 += "<div class='img_wrap'><img  src='"+listImg3.get(0).getUrl()+"' alt='' height='450'></div>";

        }

        hashMap.put("listImgString",listImgString );
        hashMap.put("listImgString2",listImgString2 );
        hashMap.put("listImgString3",listImgString3 );
        modelndView.setViewName("housingDetails");

        return modelndView;
    }

    /**
     * 查询房屋详情图片
     */
    @RequestMapping(value = "seleImg")
    @ResponseBody
    public ModelAndView seleImg(String id, String type){
        id = "1";
        //查询室内图
        type = "1";
        ResultBean resultBean =detailsService.seleImg(id,type);
        List<SellHousePic> listImg1 = (List<SellHousePic>) resultBean.getData();
        //查询户型图
        type = "2";
        resultBean = detailsService.seleImg(id,type);
        List<SellHousePic> listImg2 = (List<SellHousePic>) resultBean.getData();
        //查询环境图
        type = "3";
        resultBean = detailsService.seleImg(id,type);
        List<SellHousePic> listImg3 = (List<SellHousePic>) resultBean.getData();

       /* List<HashMap<String,Object>> list=detailsService.seletDetails(id);*/
        HashMap<String,Object> hashMap = new HashMap<String, Object>();
        //把查询返回的list放到HashMap中
     /*   hashMap.put("list",list );*/
        //new 一个ModelAndView 容器来存放HashMap 容器
        ModelAndView modelndView = new ModelAndView();
        //把HashMap 容器放到ModelAndView 容器中
        modelndView.addObject("hashMap",hashMap);
        //视图名称 用来放入你的jsp名称
        modelndView.setViewName("/housingDetails.jsp");

        return modelndView;
    }


}
