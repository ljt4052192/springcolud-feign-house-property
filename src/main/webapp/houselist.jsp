<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>房源列表页面</title>
    <script type="application/javascript" src="<%=request.getContextPath()%>/js/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/js/layui-v2.2.5/layui/css/layui.css" media="all"/>
    <script src="<%=request.getContextPath()%>/js/layui-v2.2.5/layui/layui.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.2.1/jquery-3.2.1.js"></script>
</head>
<body>

<form class="layui-form" id="houseForm">


                <div class="layui-form-item">
                    <label class="layui-form-label">地区</label>
                    <div class="layui-input-inline">
                        <select name="province" id="province" lay-filter="province">
                            <option value="-1">请选择省</option>
                        </select>
                    </div>
                    <div class="layui-input-inline">
                        <select name="city" id="city" lay-filter="city">
                            <option value="-1">请选择市</option>
                        </select>
                    </div>
                    <div class="layui-input-inline">
                        <select name="county" id="county">
                            <option value="-1">请选择县/区</option>
                        </select>
                    </div>
                </div>


                <div class="layui-form-item">
                    <label class="layui-form-label">标题</label>
                    <div class="layui-input-block">
                        <input type="text" name="title"id="uname"  size="10" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
                    </div>
                </div>

                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">面积</label>
                        <div class="layui-input-inline" style="width: 100px;">
                            <input name="startArea" placeholder="/m²" autocomplete="off" class="layui-input" type="text">
                        </div>
                        <div class="layui-form-mid">-</div>
                        <div class="layui-input-inline" style="width: 100px;">
                            <input name="endArea" placeholder="/m²" autocomplete="off" class="layui-input" type="text">
                        </div>
                    </div>
                </div>


                <div class="layui-form-item">
                    <label class="layui-form-label">--年代--</label>
                        <div class="layui-input-block">
                        <select name="starttime"  style="width:5px"  >
                            <option value="-1"></option>
                            <option value="1960-01-01,1980-01-01">60年代--80年代</option>
                            <option value="1980-01-01,2000-01-01">80年代年代--20世纪初</option>
                            <option value="2000-01-01,2020-01-01">20世纪初--现在</option>

                        </select>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">房屋情况</label>
                    <div class="layui-input-inline">
                        <select name="room">
                            <option value="-1">--请选择几室--</option>
                            <option value="1">--1室--</option>
                            <option value="2">--2室--</option>
                            <option value="3">--3室--</option>
                        </select>
                    </div>
                    <div class="layui-input-inline">
                        <select name="hall">
                            <option value="-1">--请选择厅--</option>
                            <option value="1">--1厅--</option>
                            <option value="2">--2厅--</option>
                        </select>
                    </div>
                    <div class="layui-input-inline">
                        <select name="toilet">
                            <option value="-1">--请选择卫生间--</option>
                            <option value="1">--1个卫生间--</option>
                            <option value="2">--2个卫生间--</option>
                            <option value="3">--3个卫生间--</option>
                        </select>
                    </div>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label">--装修情况--</label>
                    <div class="layui-input-block">
                        <select name="decorate" id="decorate">
                        </select>
                    </div>
                </div>




    <div id="pTable" style=" height:100%;margin:0;height:100%">
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<a class="layui-btn layui-btn-danger layui-btn-mini"  onclick="deleteAllHouse()">新增</a>
            <a class="layui-btn layui-btn-danger layui-btn-mini" id="searchBtn">搜索</a>
            <table class="layui-table" id="layui_table_id" lay-filter="test"></table>
            <div id="laypage"></div>
        </div>
    </div>

</form>
</body>

<%--操作--%>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-sm" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-sm" lay-event="del">删除</a>
    <a class="layui-btn layui-btn-sm" lay-event="editDetails">房源详细信息</a>

</script>

<script>

    //form表单封装成json
    $.fn.serializeJson = function(){
        var serializeObj={};
        var array=this.serializeArray();
        var str=this.serialize();
        $(array).each(function(){
            if(serializeObj[this.name]){
                if($.isArray(serializeObj[this.name])){
                    serializeObj[this.name].push(this.value);
                }else{
                    serializeObj[this.name]=[serializeObj[this.name],this.value];
                }
            }else{
                serializeObj[this.name]=this.value;
            }
        });
        return serializeObj;
    };

    //---------三级联动------------------------------
    //加载省  //Demo
    $.ajax({
        url:"<%=request.getContextPath()%>/house/selectProvince",
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

    //---------装修情况------------------------
   $.ajax({
        url:"<%=request.getContextPath()%>/house/selectDecorate.do",
        type:"post",
        dataType:"json",
        async:false,
        success:function(data){
            var  decorate= '<option value="">请选择装修情况</option>';
            $.each(data,function(){
                decorate += '<option value="'+this.id+'">'+this.decoratename+'</option>'
            })
            $("#decorate").html(decorate);

        }
    });



    //----------条件查询----------------------------------

    layui.use(['table','form','laydate'], function(){
        var table = layui.table,
            laydate = layui.laydate;

        var form = layui.form;
        form.on('select(province)', function (data) {
            //加载市
            $.ajax({
                url:"<%=request.getContextPath()%>/house/selectArea",
                type:"post",
                data:{"pid":data.value},
                dataType:"json",
                async:false,
                success:function(cityData){
                    var  province= '<option value="-1">请选择市</option>';
                    $.each(cityData,function(){
                        province += '<option value="'+this.id+'">'+this.name+'</option>'
                    })
                    $("#city").html(province);
                    form.render('select');
                }
            })
        });
        form.on('select(city)', function (data) {
            //加载县
            $.ajax({
                url:"<%=request.getContextPath()%>/house/selectArea",
                type:"post",
                data:{"pid":data.value},
                dataType:"json",
                async:false,
                success:function(countyData){
                    var  province= '<option value="-1">请选择县/区</option>';
                    $.each(countyData,function(){
                        province += '<option value="'+this.id+'">'+this.name+'</option>'
                    })
                    $("#county").html(province);
                    form.render('select');
                }
            })

        });

        //--------------------------------------------------------
        var limitcount = 7;
        var curnum = 1;
        var tableList = table.render({
            elem: '#layui_table_id'
            , url: '<%=request.getContextPath()%>/house/queryHouse.do'
            , cols: [[
                {checkbox: true},
                {field:"title",title:"标题",width:100},
                {field:"area",title:"面积",width:100},
                {field:"price",title:"售价",width:100},
                {field:"room",title:"室",width:100},
                {field:"hall",title:"厅",width:100},
                {field:"toilet",title:"卫生间",width:100},
                {field:"fullname",title:"地区",width:100},
                {field:"name",title:"所属小区",width:100},
                {field:"buildingTime",title:"建造年代",width:100},
                {field:"decoratename",title:"装修程度",width:100},
                /*230*/
                {field: 'eonwertyukl', title: '操作', width: 230,fixed: 'right', toolbar: '#barDemo'}
            ]]
            , page: true
            , height: 580
           /* ,done: function(res, curr, count) {
                $("[data-field='sex']").children().each(function () {
                    if ($(this).text() == 1) {
                        $(this).text("男")
                    } else if ($(this).text() == 2) {
                        $(this).text("女")
                    }

                })
            }*//*,done: function(res, curr, count) {
                $("[data-field='name']").children().each(function () {
                   /!* if ($(this).text() == 1) {
                        $(this).text("男")
                    } else if ($(this).text() == 2) {
                        $(this).text("女")
                    }*!/
                   $("#editTestDiv").html("qwertyu");


                })
            }*/

        });

        $('#searchBtn').on('click', function(){
            tableList.reload({
                where:$('#houseForm').serializeJson()
            });
            return false;
        });
        //-----------------------------------------

        //监听工具条
        table.on('tool(test)', function(obj) { //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
            var data = obj.data //获得当前行数据
                , layEvent = obj.event; //获得 lay-event 对应的值

            if (layEvent === 'detail') {
                viewLableInfo(data.attrId);
                layer.msg(data.attrId);
            } else if (layEvent === 'del') {
                //layer.msg('删除');
                layer.confirm("确认要删除吗，删除后不能恢复", {title: "删除确认"}, function (index) {
                    layer.close(index);
                    $.post("<%=request.getContextPath()%>/house/deleteHouse?id=" + data.id, function (data) {
                        location.reload();
                    });
                });

            } else if (layEvent === 'edit') {
                location.href="<%=request.getContextPath()%>/house/toUpdateHouse?id="+data.id;

            }else if(layEvent == 'editDetails'){
                location.href="<%=request.getContextPath()%>/seletDetails?id="+data.id;
            }
        });
        //监听提交 //Demo
        form.on('submit(formDemo)', function(data){
            layer.msg(JSON.stringify(data.field));
            return false;
        });

    });
    productsearch( curnum, limitcount);


    //----------------------------------------------------------------



    //批量删除
    function deleteAllHouse(){

        var ids = "";
        var count=0;
        var checkStatus = table.checkStatus('layui_table_id')
            ,data = checkStatus.data;
        for (var i in data){
            ids += "," + data[i].id;
            count++;
        }
        alert(ids);
        if(ids == ""){
            layer.msg("请选择需要删除的房源");
        }else{
            layer.confirm("确认删除勾选的"+count+"个房源?", {icon: 3, title:"确认"}, function(){
                ids = ids.substr(1);
                $.ajax({
                    url:"../house/delAllHouseByIds",
                    type:"post",
                    data:{"ids":ids},
                    dataType:"json",
                    success:function(data){
                        if(data.success){
                            layer.msg("删除成功!");
                            window.location.href = location;
                        }else{
                            layer.open({
                                content: '删除失败'
                                ,btn: '我知道了'
                            });
                        }
                    }
                })
            }, function(){
            });
        }
    }


</script>
</html>
