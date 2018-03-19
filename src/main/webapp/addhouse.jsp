<%--
  Created by IntelliJ IDEA.
  User: jiaxingjie
  Date: 2018/3/15
  Time: 19:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script type="application/javascript" src="/js/zTree_v3/js/jquery-1.4.4.min.js"></script>
    <link rel="stylesheet" href="/js/layui-v2.2.5/layui/css/layui.css"/>
    <script src="/js/layui-v2.2.5/layui/layui.js"></script>
</head>
<body>




<%--新增房源信息--%>
<div id="addHouse">
    <form class="layui-form" id="addHouseForm">
        <table class="layui-table" lay-skin="nob" lay-size="lg">
            <tr>
                <td>
                    <div class="layui-form-item" style="width:300px">
                        <label class="layui-form-label">房屋标题</label>
                        <div class="layui-input-block">
                            <input type="text" name="title"  id="title" required  lay-verify="required" placeholder="请输入主题信息" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item" style="width:300px">
                        <label class="layui-form-label">房屋价格</label>
                        <div class="layui-input-block">
                            <input type="text" name="price" id="price" required  lay-verify="required" placeholder="请输入价格 /元" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </td>

                <td>
                    <div class="layui-form-item" style="width:300px">
                        <label class="layui-form-label">建筑面积</label>
                        <div class="layui-input-block">
                            <input type="text" name="area" id="house_area" required  lay-verify="required" placeholder="建筑面积 /m²" autocomplete="off" class="layui-input">
                        </div>
                    </div>

                </td>
            </tr>
            <tr>
                <td>
                    <div class="layui-form-item" style="width:300px">
                        <label class="layui-form-label">房屋户型</label>
                        <div class="layui-input-block">
                            <select name="room">
                                <option value="">请选择室</option>
                                <option value="1">1室</option>
                                <option value="2">2室</option>
                                <option value="3">3室</option>
                            </select>
                        </div>
                    </div>
                </td>

                <td>
                    <div class="layui-form-item" style="width:300px">
                        <div class="layui-input-block">
                            <select name="hall">
                                <option value="">请选择厅</option>
                                <option value="1">1厅</option>
                                <option value="2">2厅</option>
                                <option value="2">3厅</option>
                            </select>
                        </div>
                    </div>
                </td>

                <td>
                    <div class="layui-form-item" style="width:300px">
                        <div class="layui-input-block">
                            <select name="toilet">
                                <option value="">请选择卫</option>
                                <option value="1">1卫</option>
                                <option value="2">2卫</option>
                                <option value="3">3卫</option>
                            </select>
                        </div>

                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">省</label>
                        <div class="layui-input-inline">
                            <select name="province" id="province" lay-filter="province">
                            </select>
                        </div>
                    </div>
                </td>

                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">市</label>
                        <div class="layui-input-inline">
                            <select name="city" id="city" lay-filter="city">
                                <option value="-1">请选择市</option>
                            </select>
                        </div>
                    </div>

                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">县</label>
                        <div class="layui-input-inline">
                            <select name="county" id="county">
                                <option value="-1">请选择县/区</option>
                            </select>
                        </div>

                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="layui-form-item" style="width:300px">
                        <label class="layui-form-label">建筑年代</label>
                        <div class="layui-input-block">
                            <input type="text" name="buildingTime" id="buildingTime" lay-verify="date" placeholder="yyyy" autocomplete="off" class="layui-input">
                        </div>
                    </div>

                </td>

                <td>
                    <div class="layui-form-item" style="width:300px">
                        <label class="layui-form-label">所在小区</label>
                        <div class="layui-input-block">
                            <select name="community" id="community" lay-verify="community">

                            </select>
                        </div>
                    </div>

                </td>
                <td>
                    <div class="layui-form-item" style="width:300px">
                        <label class="layui-form-label">房屋类型</label>
                        <div class="layui-input-block">
                            <select name="roomType" id="roomType" lay-filter="required">
                            </select>
                        </div>
                    </div>

                </td>
            </tr>

            <tr>
                <td>
                    <div class="layui-form-item" style="width:300px">
                        <label class="layui-form-label">房屋朝向</label>
                        <div class="layui-input-block">
                            <input type="text" name="roomDirection" id="roomDirection" required  lay-verify="required" placeholder="房屋朝向" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </td>

                <td>
                    <div class="layui-form-item" style="width:300px">
                        <label class="layui-form-label">所在楼层</label>
                        <div class="layui-input-block">
                            <input type="text" name="floor" id="house_floor" required  lay-verify="required" placeholder="所在楼层" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </td>

                <td>
                    <div class="layui-form-item" style="width:300px">
                        <label class="layui-form-label">装修情况</label>
                        <div class="layui-input-block">
                            <select name="decorate" id="decorate" lay-verify="decorate">

                            </select>
                        </div>
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="layui-form-item" style="width:300px">
                        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;室内图片上传：</br>
                        <div class="layui-upload">
                            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<button type="button" class="layui-btn" id="test2">多图片上传</button>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<div class="layui-upload-list" id="demo2" ></div>
                            <input type="hidden" name="imgstringone"  id="imgstringone"  >

                        </div>
                    </div>
                </td>

                <td>
                    <div class="layui-form-item" style="width:300px">
                        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;户型图片上传：</br>
                        <div class="layui-upload">
                            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<button type="button" class="layui-btn" id="test3">多图片上传</button>
                            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <div class="layui-upload-list" id="demo3" ></div>
                            <input type="hidden" name="imgstringtwo"  id="imgstringtwo"  >

                        </div>
                    </div>
                </td>

                <td>
                    <div class="layui-form-item" style="width:300px">
                        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;小区环境上传：</br>
                        <div class="layui-upload">
                            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;  <button type="button" class="layui-btn" id="test4">多图片上传</button>
                            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <div class="layui-upload-list" id="demo4" ></div>
                            <input type="hidden" name="imgstringthree"  id="imgstringthree"  >

                        </div>
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="layui-form-item" style="width:300px">
                        <label class="layui-form-label">房屋单价</label>
                        <div class="layui-input-block">
                            <input type="text" name="unitPrice" id="unit_price" required  lay-verify="required" placeholder="房屋单价 /元" autocomplete="off" class="layui-input">
                        </div>
                    </div>

                </td>

                <td>
                    <div class="layui-form-item" style="width:300px">
                        <label class="layui-form-label">参考月供</label>
                        <div class="layui-input-block">
                            <input type="text" name="monthlyPayments" id="monthly_payments" required  lay-verify="required" placeholder="参考月供 /元" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </td>

                <td>
                    <div class="layui-form-item" style="width:300px">
                        <label class="layui-form-label">核心卖点</label>
                        <div class="layui-input-block">
                            <input type="text" name="sellingPoint" id="selling_point" required  lay-verify="required" placeholder="核心卖点" autocomplete="off" class="layui-input">
                        </div>
                    </div>

                </td>
            </tr>

            <tr>
                <td>
                    <div class="layui-form-item" style="width:300px">
                        <label class="layui-form-label">业主心态</label>
                        <div class="layui-input-block">
                            <input type="text" name="ownerMentality" id="owner_mentality" required  lay-verify="required" placeholder="业主心态" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </td>

                <td>
                    <div class="layui-form-item" style="width:300px">
                        <label class="layui-form-label">小区配套</label>
                        <div class="layui-input-block">
                            <input type="text" name="communityComplete" id="community_complete" required  lay-verify="required" placeholder="小区配套" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                </td>

                <td>
                    <div class="layui-form-item" style="width:400px">

                        <label class="layui-form-label">服务介绍</label>
                        <div class="layui-input-block">
                            <textarea name="serviceIntroduce" placeholder="请输入内容" class="layui-textarea"></textarea>
                        </div>


                    </div>

                </td>
            </tr>

            <tr>
                <td></td>
                <td>
                    <div class="layui-form-item">
                        <div class="layui-input-block">
                            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                            <a class="layui-btn layui-btn-mini" onclick="addHouse()" lay-event="edit">添加</a>
                        </div>
                    </div>

                </td>
                <td></td>
            </tr>
        </table>




    </form>
</div>

<div id="imgstringonediv" style="display: none" ></div>
<div id="imgstringtwodiv" style="display: none"></div>

<div id="imgstringthreediv" style="display: none"></div>


</body>
<script>
    var $;
    var form;
    layui.use(['form', 'upload'], function(){  //如果只加载一个模块，可以不填数组。如：layui.use('form')
        $ = layui.jquery
        var form = layui.form //获取form模块
        //,upload = layui.upload; //获取upload模块

        //监听提交按钮
        form.on('submit(test)', function(data){
            console.log(data);
        });

        //实例化一个上传控件
        /* upload({
             url: '上传接口url'
             ,success: function(data){
                 console.log(data);
             }
         })*/


    });

    //建筑年代
    layui.use('laydate', function(){
        var laydate = layui.laydate;
        //执行一个laydate实例
        laydate.render({
            elem: '#buildingTime',//指定元素

        });
    });
    //发布时间
    layui.use('laydate', function(){
        var laydate = layui.laydate;
        //执行一个laydate实例
        laydate.render({
            elem: '#releaseTime',//指定元素
        });
    });

    function addHouse() {
        $.ajax({
            url:"../addHouse",
            type:"post",
            data:$("#addHouseForm").serialize(),
            dataType:"json",
            success:function(data){
                alert(data)
                if(data==true){
                    location.href=location;
                }


            }
        })
    }

    /*请选择所在小区*/
    $.ajax({
        url:"../selectCommunity",
        type:"post",
        //data:{"pid":0},
        dataType:"json",
        async:false,
        success:function(data){
            $("#community").html("");
            var  community= '<option value="-1">请选择所在小区</option>';
            $.each(data,function(){
                community += '<option value="'+this.id+'">'+this.name+'</option>'
            })
            $("#community").append(community);

        }
    });



    /*请选择装修情况*/
    $.ajax({
        url:"../selectDecorate",
        type:"post",
        //data:{"pid":0},
        dataType:"json",
        async:false,
        success:function(data){
            $("#decorate").html("");
            var  decorate= '<option value="-1">请选择装修情况</option>';
            $.each(data,function(){
                decorate += '<option value="'+this.id+'">'+this.decoratename+'</option>'
            })
            $("#decorate").append(decorate);

        }
    });

    /*请选择房屋类型*/
    $.ajax({
        url:"../selectHousetype",
        type:"post",
        //data:{"pid":0},
        dataType:"json",
        async:false,
        success:function(data){
            $("#province").html("");
            var  roomType= '<option value="-1">请选择房屋类型</option>';
            $.each(data,function(){
                roomType += '<option value="'+this.id+'">'+this.housertypename+'</option>'
            })
            $("#roomType").append(roomType);

        }
    });

    /*请选择省级地区*/
    $.ajax({
        url:"../selectArea",
        type:"post",
        data:{"pid":0},
        dataType:"json",
        async:false,
        success:function(data){
            $("#province").html("");
            var  province= '<option value="-1">请选择省</option>';
            $.each(data,function(){
                province += '<option value="'+this.id+'">'+this.name+'</option>'
            })
            $("#province").append(province);

        }
    });

    /*请选择市级地区*/

    layui.use(['table','form','laydate'], function() {
        var table = layui.table,
            laydate = layui.laydate;

        var form = layui.form;
        form.on('select(province)', function (data) {
            //加载市
            $.ajax({
                url: "../selectArea",
                type: "post",
                data: {"pid": data.value},
                dataType: "json",
                async: false,
                success: function (cityData) {
                    var province = '<option value="-1">请选择市</option>';
                    $.each(cityData, function () {
                        province += '<option value="' + this.id + '">' + this.name + '</option>'
                    })
                    $("#city").html(province);
                    form.render('select');
                }
            })
        });

        /*请选择县级地区*/
        form.on('select(city)', function (data) {
            //加载县
            $.ajax({
                url: "../selectArea",
                type: "post",
                data: {"pid": data.value},
                dataType: "json",
                async: false,
                success: function (countyData) {
                    var province = '<option value="-1">请选择县/区</option>';
                    $.each(countyData, function () {
                        province += '<option value="' + this.id + '">' + this.name + '</option>'
                    })
                    $("#county").html(province);
                    form.render('select');
                }
            })

        });
    })

    // 室内图片上传
    layui.use('upload', function() {
        var $ = layui.jquery
            , upload = layui.upload;

        upload.render({
            elem: '#test2'
            , url: '../headImgUpload'
            , multiple: true
            , number: 3
            , size: 1024
            , before: function (obj) {
                //预读本地文件示例，不支持ie8

                obj.preview(function (index, file, result) {
                    $('#demo2').append('<img src="' + result + '" alt="' + file.name + '" class="layui-upload-img" height="100" width="100">')
                });
            }
            , done: function (res) {
                var qw = res.path+",";

                $("#imgstringonediv").append(qw);

                $("#imgstringone").val($("#imgstringonediv").html());


                //上传完毕
            }
            , allDone: function (obj) {
                console.log(obj)
            }
        });
    })

    //户型图片上传
    layui.use('upload', function() {
        var $ = layui.jquery
            , upload = layui.upload;

        upload.render({
            elem: '#test3'
            , url: '../headImgUpload'
            , multiple: true
            , number: 3
            , size: 1024
            , before: function (obj) {
                //预读本地文件示例，不支持ie8
                obj.preview(function (index, file, result) {
                    $('#demo3').append('<img src="' + result + '" alt="' + file.name + '" class="layui-upload-img" height="100" width="100">')
                });
            }
            , done: function (res) {
                var qw = res.path+",";

                $("#imgstringtwodiv").append(qw);

                $("#imgstringtwo").val($("#imgstringtwodiv").html());

                //上传完毕
            }
            , allDone: function (obj) {
                console.log(obj)
            }
        });
    })
    //小区环境上传
    layui.use('upload', function() {
        var $ = layui.jquery
            , upload = layui.upload;

        upload.render({
            elem: '#test4'
            , url: '../headImgUpload'
            , multiple: true
            , number: 3
            , size: 1024
            , before: function (obj) {
                //预读本地文件示例，不支持ie8
                obj.preview(function (index, file, result) {
                    $('#demo4').append('<img src="' + result + '" alt="' + file.name + '" class="layui-upload-img" height="100" width="100">')
                });
            }
            , done: function (res) {
                var qw = res.path+",";

                $("#imgstringthreediv").append(qw);

                $("#imgstringthree").val($("#imgstringthreediv").html());


                //上传完毕
            }
            , allDone: function (obj) {
                console.log(obj)
            }
        });
    })
</script>
</html>
