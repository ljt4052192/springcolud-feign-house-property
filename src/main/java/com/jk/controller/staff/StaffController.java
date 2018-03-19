package com.jk.controller.staff;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.jk.model.housePropertyCollection.Emp;
import com.jk.model.housePropertyCollection.SellHouseResource;
import com.jk.service.staff.StaffService;
import com.jk.utils.OssClienUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping(value="staff")
public class StaffController {

@Autowired
private StaffService staffService;

    /**
     *手机验证码接口
     */

    @RequestMapping(value="HttpClientMessange")
    @ResponseBody
    public void HttpClientMessange(Emp emp){
        System.out.println(23);
        String s = JSON.toJSONString(emp);
        /*Emp emp1 = JSON.parseObject(s, Emp.class);*/
        staffService.HttpClientMessange(s);

    }

   /* *//**
     *手机验证码接口
     *//*

    @RequestMapping(value="HttpClientMessange")
    @ResponseBody
    public void HttpClientMessange(Emp emp){
       *//* Model model = new Model();
        HashMap<String, Object> stringObjectHashMap = new HashMap<>();
        stringObjectHashMap.put("emp", emp);
        model.addAttribute("stringObjectHashMap",stringObjectHashMap );

       *//**//* ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("sellhou",new SellHouseResource());*//**//*
        String s = JSON.toJSONString(emp);
        Emp emp1 = JSON.parseObject(s, Emp.class)*//*;
        staffService.HttpClientMessange(emp);

    }*/


    //跳转到员工页面
    @RequestMapping("toStaffList")
    public String toStaffList(){

        return "emp/staffList";
    }
    /**
     * 查询员工
     * @param page
     * @param
     * @param
     * @return
     */
    @RequestMapping("queryStaffList")
    @ResponseBody
    public Object queryStaffList(int page,int limit){

        Emp emp2 = new Emp();
        JSONObject json=  staffService.queryStaffList(page,limit);
        HashMap<String, Object> map = new HashMap<String,Object>();
        map.put("code",0);
        map.put("msg","");
        map.put("count",json.get("page"));
        map.put("data",json.get("limit"));
        map.put("success",true);
        return map;
    }

    //删除员工
    @RequestMapping(value = "deleteStaff")
    @ResponseBody
    public void deleteStaff(String id){

        staffService.deleteStaff(id);
    }
    //增加修改员工信息
    @RequestMapping(value = "addStaff")
    @ResponseBody
    public Map addStaff(Emp emp){
        Map<String, Object> map = new HashMap<String, Object>();
        try {
            if(emp.getId()==null||emp.getId()=="") {
                String id = UUID.randomUUID().toString().replaceAll("-", "");
                emp.setId(id);
                String e = JSON.toJSONString(emp);
                staffService.addStaff(e);
            }else {
                String e = JSON.toJSONString(emp);
                staffService.upStaff(e);
            }
            map.put("success",true);
        }catch (Exception e){
            map.put("success",false);
        }
        return map;
    }

    /**
     * 图片上传
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
            System.out.println(imgUrl);
            map.put("success", true);
            map.put("path", imgUrl);
        }catch (Exception e){
            e.printStackTrace();
            map.put("success", false);
        }
        return map;
    }








}
