package com.jk.controller.house;



import com.alibaba.fastjson.JSON;
import com.jk.model.housePropertyCollection.*;
import com.jk.model.tree.HouseTree;
import com.jk.service.house.HouseService;
import com.jk.service.test.TestService;
import com.jk.utils.JsonUtil;
import com.jk.utils.OssClienUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.alibaba.fastjson.JSONObject;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.*;


/**
 * 展示房源操作树tree
 * houseQueryTree
 *
 * 周晓辉  注释
 */
@RequestMapping(value = "house")
@Controller
public class HouseController {

    @Autowired
    private TestService testService;

    @Autowired
    private HouseService houseService;


    @RequestMapping(value = "index")
    public String index(){

        return "houseTree";
    }
    /**
     * house 树
     */
    @RequestMapping(value = "queryHouseTree")
    @ResponseBody
    public String queryHouseTree(){
        List<HouseTree> list = houseService.queryHouseTree();
        List<Map<String, Object>> maps = printTree(list, 0);
        String s = JsonUtil.entityToJson(maps);
        return s;
    }

    /**
     * 整理菜单
     * @return
     */
    public List<Map<String,Object>> printTree(List<HouseTree> list,Integer pid){
        List<Map<String,Object>> li = new ArrayList<Map<String,Object>>();
        for (int i = 0; i < list.size(); i++) {
            Map<String,Object> map = null;
            HouseTree houseTree = list.get(i);
            if(houseTree.getPid() == pid){
                map = new HashMap<String,Object>();
                map.put("id", houseTree.getId());
                map.put("title", houseTree.getTitle());
                map.put("href", houseTree.getHref());
                map.put("spread", houseTree.getSpread());
                map.put("icon", houseTree.getIcon());
                map.put("pid", houseTree.getPid());
                map.put("children", printTree(list,houseTree.getId()));
            }
            if(map != null){
                List<Map<String,Object>> l = (List<Map<String, Object>>)map.get("children");
                if(l.size() == 0){
                    map.remove("children");
                }
                li.add(map);
            }
        }
        return li;

    }


    @RequestMapping("queryHouse")
    @ResponseBody
    public Object queryHouse(Integer page,Integer  limit,SellHouseResource sellHouseResource){

        String sj = JSON.toJSONString(sellHouseResource);
        JSONObject json=  houseService.queryHouseList(page,limit,sj);
        HashMap<String, Object> map = new HashMap<String,Object>();
        map.put("code",0);
        map.put("msg","");
        map.put("count",json.get("page"));
        map.put("data",json.get("limit"));
        map.put("success",true);
        return map;
    }

    //删除房屋信息
    @RequestMapping("deleteHouse")
    @ResponseBody
    public void deleteUser(String id){
        houseService.deleteHouse(id);

    }


    /**
     * 查询房屋的装修类型
     * @return
     */
    @RequestMapping("selectDecorate")
    @ResponseBody
    public List<Decorate> selectDecorate(){
        List<Decorate> list=houseService.selectDecorate();
        System.out.println(list);
        return list ;
    }


    /**
     *查询三级联动的省
     * @return
     */
    @RequestMapping(value = "selectProvince")
    @ResponseBody
    public List<XxArea> selectProvince(){
        List<XxArea> provincelist=houseService.selectProvince();
        System.out.println(provincelist);
        return provincelist;
    }


    /**
     * 根据父级id查询出对应的子集
     */
    @RequestMapping(value = "selectArea2")
    @ResponseBody
    public List<XxArea> selectArea2(Integer pid){
        List<XxArea>  arealist =houseService.selectArea2(pid) ;
        System.out.println(arealist);
        return arealist;
    }


    @RequestMapping("toUpdateHouse")
    public ModelAndView  toUpdateHouse(String id , HttpServletRequest request){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("id",id );
        modelAndView.setViewName("updatehouse");
        //这里使用存session的操作
        request.getSession().setAttribute("editId", id);
        return modelAndView;
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
            System.out.println(imgUrl);
            map.put("success", true);
            map.put("path", imgUrl);
        }catch (Exception e){
            e.printStackTrace();
            map.put("success", false);
        }
        return map;
    }

    /**
     * 修改回显
     * @return
     */
    @RequestMapping("toQueryList")
    @ResponseBody
    public HashMap<String, Object> toQueryList(String id , HttpServletRequest request){

        String id2 = (String) request.getSession().getAttribute("editId");
        HashMap<String, Object> hashMap = houseService.selectAddress(id2);


        return hashMap;
    }

    /**
     *回显装修程度
     */
    @RequestMapping("selectDecorate2")
    @ResponseBody
    public Object selectDecorate2(){

        List<Decorate> decorateList = houseService.selectDecorate();
        return decorateList;
    }

    /**
     * 所在小区
     */
    @RequestMapping("selectCommunity")
    @ResponseBody
    public Object selectCommunity(){

        List<Community> communityList = houseService.selectCommunity();
        return communityList;
    }

    /**
     * 房屋类型
     */
    @RequestMapping("selectRoomType")
    @ResponseBody
    public Object selectRoomType(){
        List<HouseType> houseTypeList = houseService.selectRoomType();
        return houseTypeList;
    }

    /**
     * 省市县
     */
    @RequestMapping("selectArea")
    @ResponseBody
    public List<Area> selectArea(String pid){

        List<Area> areaList = houseService.selectArea(pid);
        return areaList;
    }

    /**
     * 修改
     */
    @RequestMapping(value = "updateHouse")
    @ResponseBody
    public Map updateHouse(SellHouseResource sellHouseResource, String imgstringone,String imgstringtwo,String imgstringthree){
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

        houseService.deleteImg(sellHouseResource.getId());
        Map map = new HashMap();
        String s = JSON.toJSONString(sellHouseResource);
        int i = houseService.updateHouse(s);
        if(i>0){
            map.put("msg", "修改成功");
        }else{
            map.put("msg","修改失败");
        }
        return map;
    }


}