package com.jk.controller;

import com.alibaba.fastjson.JSON;
import com.jk.model.housePropertyCollection.*;
import com.jk.service.test.TestService;
import com.jk.utils.OssClienUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
public class TestController {

    @Autowired
    private TestService testService;


/*
    @RequestMapping("asdf")
    public String asdf(){
       *//* List<Area> list =  testService.testGetResult();

        System.out.println(23);*//*
        return "login";
    }*/

    @RequestMapping("login")
    public String login(){
        List<Area> list =  testService.testGetResult();

        System.out.println(23);
        return "login";
    }

    @RequestMapping("Test2")
    @ResponseBody
    public List<Area> Test(){
        List<Area> list =  testService.testGetResult();

        System.out.println(23);
        return list;
    }

    /**
     * 新增卖房房源
     * @param sellHouseResource
     * @return
     */
    @RequestMapping("addHouse")
    @ResponseBody
    public Object addHouse(HttpServletRequest request, SellHouseResource sellHouseResource, String imgstringone, String imgstringtwo, String imgstringthree){

        sellHouseResource.setId(UUID.randomUUID().toString().replaceAll("-",""));
        SellHousePic sellHousePic = new SellHousePic();
        if (imgstringone.length()>5){

            String img = imgstringone.replaceAll("amp;", "");
            String[] split = img.split(",");

            Integer imgtype = 1;
            for (int i = 0; i < split.length; i++) {
                sellHousePic.setTsid(sellHouseResource.getId());
                sellHousePic.setId(UUID.randomUUID().toString().replaceAll("-",""));
                sellHousePic.setType(imgtype);

                sellHousePic.setUrl(split[i]);
                String s = JSON.toJSONString(sellHousePic);
                testService.inserteimg(s);
            }


        }

        if (imgstringtwo.length()>5){
            Integer imgtype = 2;
            String img = imgstringtwo.replaceAll("amp;", "");
            String[] split = img.split(",");


            for (int i = 0; i < split.length; i++) {
                sellHousePic.setTsid(sellHouseResource.getId());
                sellHousePic.setId(UUID.randomUUID().toString().replaceAll("-",""));
                sellHousePic.setType(imgtype);

                sellHousePic.setUrl(split[i]);
                String s = JSON.toJSONString(sellHousePic);
                testService.inserteimg(s);
            }

        }

        if (imgstringthree.length()>5){
            Integer imgtype = 3;

            String img = imgstringtwo.replaceAll("amp;", "");
            String[] split = img.split(",");


            for (int i = 0; i < split.length; i++) {
                sellHousePic.setTsid(sellHouseResource.getId());
                sellHousePic.setId(UUID.randomUUID().toString().replaceAll("-",""));
                sellHousePic.setType(imgtype);

                sellHousePic.setUrl(split[i]);
                String s = JSON.toJSONString(sellHousePic);
                testService.inserteimg(s);
            }
        }


        Emp emp = (Emp) request.getSession().getAttribute("loginAccount");
        emp.getId();
        //员工id
        sellHouseResource.setTeid(emp.getId());
        //时间戳
        SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmss");
        String date=sdf.format(new Date());
        sellHouseResource.setRoomNum(date);

        //增加房源时间
        sellHouseResource.setReleaseTime(new Date());

        String s = JSON.toJSONString(sellHouseResource);
        Boolean n = testService.addHouse(s);

        return n;
    }

    /**
     * 查询地区
     * @param pid
     * @return
     */
    @RequestMapping("selectArea")
    @ResponseBody
    public Object selectArea(Integer pid){
        List<Area> areas = testService.selectArea(pid);
        return areas;

    }

    /**
     * 查询房源类型
     * @return
     */
    @RequestMapping("selectHousetype")
    @ResponseBody
    public Object selectHousetype(){
        List<HouseType> housetype=testService.selectHousetype();
        return housetype;
    }

    /**
     * 维修情况
     * @return
     */
    @RequestMapping("selectDecorate")
    @ResponseBody
    public Object selectDecorate(){
        List<Decorate> Decoratelist=testService.selectDecorate();
        return Decoratelist;
    }


    @RequestMapping("selectCommunity")
    @ResponseBody
    public Object selectCommunity(){
        List<Community>   Communitylist=testService.selectCommunity();
        return Communitylist;
    }


    /**
     * 阿里云  图片上传
     * @param request
     * @param file
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/headImgUpload", method = RequestMethod.POST)
    @ResponseBody
    public Map<String,Object> headImgUpload(HttpServletRequest request, MultipartFile file)throws Exception {
        Map<String,Object> map = new HashMap<String, Object>();
        try {
            if (file == null || file.getSize() <= 0) {
                throw new Exception("图片不能为空");
            }
            String  nameHz= file.getOriginalFilename(); //上传的文件名 + 后缀    如  asd.png
            String type = "";
            if(nameHz.contains(".png") || nameHz.contains(".jpg")){
                type="img";
            }
            if(nameHz.contains(".mp4") || nameHz.contains(".ogv")){
                type="video";
            }else {
                type="file";
            }
            OssClienUtils ossClient = new OssClienUtils();
            String keyName = ossClient.uploadImg2Oss(file,type);
            String imgUrl = ossClient.getImgUrl(keyName);




            map.put("success", true);
            map.put("path", imgUrl);
        }catch (Exception e){
            e.printStackTrace();
            map.put("success", false);
        }
        return map;
    }

}
