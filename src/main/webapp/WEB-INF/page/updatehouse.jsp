<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/3/15 0015
  Time: 下午 6:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改房源</title>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.2.1/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/js/layui-v2.2.5/layui/css/layui.css"/>
    <script src="<%=request.getContextPath()%>/js/layui-v2.2.5/layui/layui.js"></script>
</head>
<body>

<%--修改房源信息--%>
<div id="updateHouseDiv" style="width: 600px">
    <form class="layui-form" id="updateHouseForm">

        <input type="hidden" name="id" id="id">

        <div class="layui-form-item" style="width:300px">
            <label class="layui-form-label">主题</label>
            <div class="layui-input-block">
                <input type="text" name="title"  id="title" required  lay-verify="required" placeholder="请输入主题" autocomplete="off" class="layui-input" >
            </div>
        </div>
        <div class="layui-form-item" style="width:300px">
            <label class="layui-form-label">价格</label>
            <div class="layui-input-block">
                <input type="text" name="price" id="price" required  lay-verify="required" placeholder="请输入价格" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item" style="width:300px">
            <label class="layui-form-label">房屋户型</label>
            <div class="layui-input-block">
                <select name="room" id="room">
                    <option value="">请选择室</option>
                    <option value="1">1室</option>
                    <option value="2">2室</option>
                    <option value="3">3室</option>
                </select>
            </div>
            <div class="layui-input-block">
                <select name="hall" id="hall">
                    <option value="">请选择厅</option>
                    <option value="1">1厅</option>
                    <option value="2">2厅</option>
                    <option value="2">3厅</option>
                </select>
            </div>

            <div class="layui-input-block">
                <select name="toilet" id="toilet">
                    <option value="">请选择卫</option>
                    <option value="1">1卫</option>
                    <option value="2">2卫</option>
                    <option value="3">3卫</option>
                </select>
            </div>
        </div>

        <div class="layui-form-item" style="width:300px">
            <label class="layui-form-label">建筑面积</label>
            <div class="layui-input-block">
                <input type="text" name="area" id="area" required  lay-verify="required" placeholder="建筑面积" autocomplete="off" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item" style="width:300px">
            <label class="layui-form-label">所在小区</label>
            <div class="layui-input-block">
                <select name="community" id="community" lay-verify="community">

                </select>
            </div>
        </div>

        <div class="layui-form-item" style="width:300px">
            <label class="layui-form-label">所在地区</label>
            <div class="layui-input-block">
                <select name="province" id="province" lay-filter="province">

                </select>
            </div>
            <div class="layui-input-block">
                <select name="city" id="city" lay-filter="city">

                </select>
            </div>

            <div class="layui-input-block">
                <select name="county" id="county">

                </select>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">建筑年代</label>
            <div class="layui-inline"> <!-- 注意：这一层元素并不是必须的 -->
                <input type="text"  class="layui-input" id="buildingTime" name="buildingTime">
            </div>
        </div>

        <div class="layui-form-item" style="width:300px">
            <label class="layui-form-label">房屋类型</label>
            <div class="layui-input-block">
                <select name="roomType" lay-verify="" id="roomType">

                </select>
            </div>
        </div>

        <div class="layui-form-item" style="width:300px">
            <label class="layui-form-label">房屋朝向</label>
            <div class="layui-input-block"> <!-- 注意：这一层元素并不是必须的 -->
                <input type="text"  class="layui-input" id="roomDirection" name="roomDirection">
            </div>
        </div>

        <div class="layui-form-item" style="width:300px">
            <label class="layui-form-label">所在楼层</label>
            <div class="layui-input-block"> <!-- 注意：这一层元素并不是必须的 -->
                <input type="text"  class="layui-input" id="floor" name="floor">
            </div>
        </div>

        <div class="layui-form-item" style="width:300px">
            <label class="layui-form-label">装修程度</label>
            <div class="layui-input-block">
                <select name="decorate" lay-verify="required" id="decorate">

                </select>
            </div>
        </div>

        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;室内图片上传：</br>
        <div class="layui-upload">
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<button type="button" class="layui-btn" id="test2">多图片上传</button>
           <%--回显的图片集--%>
            <div class="layui-upload-list" id="echoString1" ></div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<div class="layui-upload-list" id="demo2" ></div>
            <input type="hidden" name="imgstringone"  id="imgstringone"  >

        </div>

        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;户型图片上传：</br>
        <div class="layui-upload">
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<button type="button" class="layui-btn" id="test3">多图片上传</button>
            <%--回显的图片集--%>
            <div class="layui-upload-list" id="echoString2" ></div>
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <div class="layui-upload-list" id="demo3" ></div>
            <input type="hidden" name="imgstringtwo"  id="imgstringtwo"  >

        </div>
        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;小区环境上传：</br>
        <div class="layui-upload">
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;  <button type="button" class="layui-btn" id="test4">多图片上传</button>
            <%--回显的图片集--%>
            <div class="layui-upload-list" id="echoString3" ></div>
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <div id="demo4" ></div>
            <input type="hidden" name="imgstringthree"  id="imgstringthree"  >

        </div>

        <div class="layui-form-item" style="width:300px">
            <label class="layui-form-label">房屋单价</label>
            <div class="layui-input-block">
                <input type="text"  class="layui-input" id="unitPrice" name="unitPrice">
            </div>
        </div>

        <div class="layui-form-item" style="width:300px">
            <label class="layui-form-label">参考月供</label>
            <div class="layui-input-block">
                <input type="text"  class="layui-input" id="monthlyPayments" name="monthlyPayments">
            </div>
        </div>

        <div class="layui-form-item" style="width:300px">
            <label class="layui-form-label">核心卖点</label>
            <div class="layui-input-block">
                <input type="text"  class="layui-input" id="sellingPoint" name="sellingPoint">
            </div>
        </div>

        <div class="layui-form-item" style="width:300px">
            <label class="layui-form-label">业主心态</label>
            <div class="layui-input-block">
                <input type="text"  class="layui-input" id="ownerMentality" name="ownerMentality">
            </div>
        </div>

        <div class="layui-form-item" style="width:300px">
            <label class="layui-form-label">小区配套</label>
            <div class="layui-input-block">
                <input type="text"  class="layui-input" id="communityComplete" name="communityComplete">
            </div>
        </div>

        <div class="layui-form-item" style="width:300px">
            <label class="layui-form-label">服务介绍</label>
            <div class="layui-input-block">
                <input type="text"  class="layui-input" id="serviceIntroduce" name="serviceIntroduce">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">发布时间</label>
            <div class="layui-inline"> <!-- 注意：这一层元素并不是必须的 -->
                <input type="text"  class="layui-input" id="releaseTime" name="releaseTime">
            </div>
        </div>

        <div class="layui-form-item" style="width:300px">
            <label class="layui-form-label">房号</label>
            <div class="layui-input-block">
                <input type="text"  class="layui-input" id="roomNum" name="roomNum">
            </div>
        </div>


        <div class="layui-form-item">
            <div class="layui-input-block">
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                <a class="layui-btn layui-btn-mini" onclick="updateHouse()" lay-event="edit">修改</a>
            </div>
        </div>
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
    })




</script>

<script>

    var a = 0;
    var b = 0;
    var c = 0;

    //装修程度的房子
    $.ajax({
        url:"<%=request.getContextPath()%>/house/selectDecorate.do",
        type:"post",
        dataType:"json",
        async:false,
        success:function(data){
            $("#decorate").html("");
            var decorate= '<option value="-1"></option>';
            $.each(data,function(){
                decorate += '<option value="'+this.id+'">'+this.name+'</option>'
            })
            $("#decorate").append(decorate);
            $("#decorate").val($("#decorate0").val());
        }
    });


    /*请选择所在小区*/
    $.ajax({
        url:"<%=request.getContextPath()%>/house/selectCommunity.do",
        type:"post",
        dataType:"json",
        async:false,
        success:function(data){
            $("#community").html("");
            var community= '<option value="-1">请选择所在小区</option>';
            $.each(data,function(){
                community += '<option value="'+this.id+'">'+this.name+'</option>'
            })
            $("#community").append(community);
        }
    });

    //房屋类型
    $.ajax({
        url:"<%=request.getContextPath()%>/house/selectRoomType.do",
        type:"post",
        dataType:"json",
        async:false,
        success:function(data){
            $("#roomType").html("");
            var roomType= '<option value="-1"></option>';
            $.each(data,function(){
                roomType += '<option value="'+this.id+'">'+this.name+'</option>'
            })
            $("#roomType").append(roomType);

        }
    });

    /*请选择省级地区*/
    $.ajax({
        url:"<%=request.getContextPath()%>/house/selectArea2.do",
        type:"post",
        data:{"pid":0},
        dataType:"json",
        async:true,
        success:function(data){
            $("#province").html("");
            var  province= '<option value="-1">请选择省</option>';
            $.each(data,function(){
                province += '<option value="'+this.id+'">'+this.name+'</option>'
            })
            $("#province").append(province);
            alert(province);
            alert(a);
            $("#province").val(a);

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
                url: "<%=request.getContextPath()%>/house/selectArea2.do",
                type: "post",
                data: {"pid": data.value},
                dataType: "json",
                async: true,
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
                url: "<%=request.getContextPath()%>/house/selectArea2.do",
                type: "post",
                data: {"pid": data.value},
                dataType: "json",
                async: true,
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


    //回显操作
    $.ajax({

        url:"<%=request.getContextPath()%>/house/toQueryList.do",
        data: {"id": $("#id").val()},
        dataType:"json",
        async:false,
        success:function(data){
            a = data.list[0].province;
            b = data.list[0].city;
            c = data.list[0].county;

            $.ajax({
                url: "<%=request.getContextPath()%>/house/selectArea2.do",
                type: "post",
                data: {"pid": a},
                dataType: "json",
                async: true,
                success: function (cityData) {
                    var province = '<option value="-1">请选择市</option>';
                    $.each(cityData, function () {
                        province += '<option value="' + this.id + '">' + this.name + '</option>'
                    })
                    $("#city").html(province);
                    /*form.render('select');*/
                    alert(b);
                    $("#city").val(b);
                }
            })

            $.ajax({
                url: "<%=request.getContextPath()%>/house/selectArea2.do",
                type: "post",
                data: {"pid": b},
                dataType: "json",
                async: true,
                success: function (countyData) {
                    var province = '<option value="-1">请选择县/区</option>';
                    $.each(countyData, function () {
                        province += '<option value="' + this.id + '">' + this.name + '</option>'
                    })
                    $("#county").html(province);
                  /*  form.render('select');*/
                    $("#county").val(c);
                }
            })
            alert(data.list[0].id);
            $("#id").val(data.list[0].id);
            $("#title").val(data.list[0].title);
            $("#price").val(data.list[0].price);
            $("#room").val(data.list[0].room);
            $("#hall").val(data.list[0].hall);
            $("#toilet").val(data.list[0].toilet);
            $("#area").val(data.list[0].area);
            $("#community").val(data.list[0].community);
            $("#province").val(data.list[0].province);
            $("#city").val(data.list[0].city);
            $("#county").val(data.list[0].county);
            $("#buildingTime").val(data.list[0].buildingTime);
            $("#roomType").val(data.list[0].roomType);
            $("#roomDirection").val(data.list[0].roomDirection);
            $("#floor").val(data.list[0].floor);
            $("#decorate").val(data.list[0].decorate);
            $("#unitPrice").val(data.list[0].unitPrice);
            $("#monthlyPayments").val(data.list[0].monthlyPayments);
            $("#sellingPoint").val(data.list[0].sellingPoint);
            $("#ownerMentality").val(data.list[0].ownerMentality);
            $("#communityComplete").val(data.list[0].communityComplete);
            $("#serviceIntroduce").val(data.list[0].serviceIntroduce);
            $("#releaseTime").val(data.list[0].releaseTime);
            $("#roomNum").val(data.list[0].roomNum);
            $("#echoString1").html(data.imgListString1);
            $("#echoString2").html(data.imgListString2);
            $("#echoString3").html(data.imgListString3);

        }
    })

    function updateHouse() {
        //alert(35);
        if($("#echoString1").html()!=""){
            $("#imgstringone").val($("#echoString1").html());
        }
        if($("#echoString2").html()!=""){
            $("#imgstringtwo").val($("#echoString2").html());
        }
        if($("#echoString3").html()!=""){

            //var ewrer = $("#echoString3").html();
            //alert(ewrer);
            $("#imgstringthree").val($("#echoString3").html());
        }
        $.ajax({
            url:'<%=request.getContextPath()%>/house/updateHouse.do',
            type:'post',
            data:$("#updateHouseForm").serialize(),
            dataType:'json',
            async:false,
            success:function(data){
                alert(data)
                if(data==true){
                    location.href=location;
                }
            }
        });
    }


    // 室内图片上传
    layui.use('upload', function() {
        var $ = layui.jquery
            , upload = layui.upload;

        upload.render({
            elem: '#test2'
            , url: '<%=request.getContextPath()%>/house/headImgUpload.do'
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
                $("#echoString1").html(null);


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
            , url: '<%=request.getContextPath()%>/house/headImgUpload.do'
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
                $("#echoString2").html(null);

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
            , url: '<%=request.getContextPath()%>/house/headImgUpload.do'
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
                $("#echoString3").html(null);



                //上传完毕
            }
            , allDone: function (obj) {
                console.log(obj)
            }
        });
    })

</script>

</body>
</html>
